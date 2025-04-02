package com.batch.example.service;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {
	
	 @Autowired
	 private JavaMailSender emailSender;
	 
	 private static final String EMAIL_REGEX = "^[a-zA-Z0-9_+&*-]+(?:\\." + "[a-zA-Z0-9_+&*-]+)*@" + "(?:[a-zA-Z0-9-]+\\.)+[a-z"
				+ "A-Z]{2,7}$";
	 private static final Pattern EMAIL_PATTERN = Pattern.compile(EMAIL_REGEX);
	 
	 public void sendEmailWithAttachment(List<String> to, String subject, String text, String pathToAttachment) throws MessagingException {
		 List<String> invalidEmails = new ArrayList<>();
		 System.out.println(invalidEmails + "invalidEmails.....///////");
	     List<String> validEmails = new ArrayList<>();
	     System.out.println(validEmails + "validEmails...///");
	     for(String email:to) {
	    	 if(EMAIL_PATTERN.matcher(email).matches()) {
	    		 validEmails.add(email);
	    	 }else {
	    		 invalidEmails.add(email);
	    	 }
	     }
	     if(!validEmails.isEmpty()) {
	    	 sendEmail(validEmails.toArray(new String[0]), subject, text, pathToAttachment);
	     }
	     if(!invalidEmails.isEmpty()) {
	    	 writeInvalidEmailsToExcel(invalidEmails);
	     }
	 }
	     
	     
	 private void sendEmail(String[] to, String subject, String text, String pathToAttachment) throws MessagingException{
		 System.out.println(to + " to...!!!");
		 System.out.println(subject + " subject...!!!");
		 System.out.println(text + " text...!!!");
		 System.out.println(pathToAttachment + " pathToAttachment...!!!");
		 MimeMessage message = emailSender.createMimeMessage();
         MimeMessageHelper helper = new MimeMessageHelper(message, true);
	        
	        // Convert list to array for send email multiple users.
//	        String[] toArray = to.toArray(new String[0]);
	        helper.setTo(to);
	        helper.setSubject(subject);
	        helper.setText(text);

	        FileSystemResource file = new FileSystemResource(new File(pathToAttachment));
	        System.out.println(file + " File...!!!");
	        helper.addAttachment("BIC_REMINDER", file);
	        emailSender.send(message);
	    }
	 
	 private void writeInvalidEmailsToExcel(List<String> invalidEmails) {
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Invalid Emails");
	        
	        Row headerRow = sheet.createRow(0);
	        Cell headerCell = headerRow.createCell(0);
	        headerCell.setCellValue("ID");
	        headerCell = headerRow.createCell(1);
	        headerCell.setCellValue("INVALID EMAILS");
	        headerCell = headerRow.createCell(2);
	        headerCell.setCellValue("Name");
	        
	        int rowNum = 1;
	        for (String email : invalidEmails) {
	            Row row = sheet.createRow(rowNum++);
	            String[] emailData = email.split(",");
	            row.createCell(0).setCellValue(emailData[0]);
	            row.createCell(1).setCellValue(emailData[1]);
	            row.createCell(2).setCellValue(emailData[2]);
//	            Cell cell = row.createCell(0);
//	            cell.setCellValue(email);
	        }
	        try (FileOutputStream fos = new FileOutputStream("invalid_emails.xlsx")) {
	            workbook.write(fos);
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                workbook.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	    }
}
