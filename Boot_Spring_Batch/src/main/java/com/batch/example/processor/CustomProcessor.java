package com.batch.example.processor;

import java.io.File;
import java.io.FileOutputStream;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.encryption.AccessPermission;
import org.apache.pdfbox.pdmodel.encryption.StandardProtectionPolicy;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring6.SpringTemplateEngine;

import com.batch.example.entity.BookEntity1;
import com.openhtmltopdf.pdfboxout.PdfRendererBuilder;


public class CustomProcessor implements ItemProcessor<BookEntity1, BookEntity1> {
	
	@Autowired
	public SpringTemplateEngine templateEngine;
	
	@Override
	public BookEntity1 process(BookEntity1 item) throws Exception {
//		File htmlFile = new File("src/main/resources/static/BicReminderCL01.html");
//		String outputPdfName = "BIC_REMINDER.pdf";
		String outputPdfName = "BicReminder_"+item.getName()+".pdf";
		File outputPdf = new File(outputPdfName);
		System.out.println(item + "item----------------");
		Context context = new Context();
		context.setVariable("add1", item.getAdd1());
		context.setVariable("name", item.getName());
		context.setVariable("date", item.getDate());
		context.setVariable("cardNo", item.getCardNo());
		context.setVariable("acNo", item.getAcNo());
		context.setVariable("financing", item.getFinancing());
		context.setVariable("amtTos", item.getAmtTos());
		context.setVariable("amtDue", item.getAmtDue());
		context.setVariable("dcaName", item.getDcaName());
		context.setVariable("dcaAdd2", item.getDcaAdd2());
		context.setVariable("dcaPhone", item.getDcaPhone());
		context.setVariable("dcaFax", item.getDcaFax());
		String htmlContent = templateEngine.process("BicReminderCL01", context);

		try (FileOutputStream os = new FileOutputStream(outputPdf)) {
			PdfRendererBuilder pdfRendererBuilder = new PdfRendererBuilder();
			pdfRendererBuilder.useFastMode();
			pdfRendererBuilder.withHtmlContent(htmlContent,"classpath:/static/");
//			pdfRendererBuilder.withFile(htmlFile);
			pdfRendererBuilder.toStream(os);
			pdfRendererBuilder.run();
			try (PDDocument doc = PDDocument.load(outputPdf)) {
//				AccessPermission accessPermission = new AccessPermission();
//				StandardProtectionPolicy spp = new StandardProtectionPolicy("123", "123", accessPermission);
//				doc.protect(spp);
				doc.save(outputPdf);
//     			System.out.println("Pdf done with password protected.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("PDF CREATED SUCCESSFULLY FROM HTML ...");
		return item;
	}

}
