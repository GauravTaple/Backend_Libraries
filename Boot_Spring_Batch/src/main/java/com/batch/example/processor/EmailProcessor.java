package com.batch.example.processor;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.batch.core.JobExecution;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.batch.example.entity.BookEntity1;
import com.batch.example.entity.Emails;
import com.batch.example.service.EmailService;

import jakarta.mail.MessagingException;


public class EmailProcessor implements ItemProcessor<Emails, Emails> {
	
//	@Autowired
//	 JobExecution jobExecution;
	
	@Autowired
	private EmailService emailService;

	@Override
	public Emails process(Emails item) throws Exception {
		try {
//		  if (jobExecution.getStatus().isUnsuccessful()) {
//	            return null;
//	        }
	        // For multiple email purpose
//	        List<String> recipients = Arrays.asList(
//	        	            "gtaple9767@gmail.com",
//	        	            "shubhamsakhare108@gmail.com"
//	        	        );
	            emailService.sendEmailWithAttachment(
//	            		recipients,
	            		Arrays.asList(item.getEmail()),
//	            		Collections.singletonList(item.getEmail()+""+item.getName()),
	                "Estatement Pdf...!!!",
	                "Pdf send successfully. Please find the attached PDF.",
	                "BIC_REMINDER.pdf"
	            );
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
		return item;
	}


}
