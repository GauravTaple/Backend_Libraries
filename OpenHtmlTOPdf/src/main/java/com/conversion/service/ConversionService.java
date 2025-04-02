package com.conversion.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.encryption.AccessPermission;
import org.apache.pdfbox.pdmodel.encryption.StandardProtectionPolicy;
import org.apache.pdfbox.pdmodel.interactive.form.PDAcroForm;
import org.apache.pdfbox.pdmodel.interactive.form.PDField;
import org.springframework.stereotype.Service;

import com.openhtmltopdf.pdfboxout.PdfRendererBuilder;
import com.openhtmltopdf.svgsupport.BatikSVGDrawer;

@Service
public class ConversionService {

	public void ConvertHtmlToPdf() throws Exception {
		// File htmlFile = new File("src/main/resources/static/CallCard.html");
		// File outputPdf = new File("Call-card.pdf");

		File htmlFile = new File("src/main/resources/static/FinancingReminder.html");
		File outputPdf = new File("Financing-Reminder.pdf");

		try (FileOutputStream os = new FileOutputStream(outputPdf)) {
			PdfRendererBuilder pdfRendererBuilder = new PdfRendererBuilder();
			pdfRendererBuilder.useFastMode();
			pdfRendererBuilder.useSVGDrawer(new BatikSVGDrawer());
			pdfRendererBuilder.withFile(htmlFile);
			pdfRendererBuilder.toStream(os);
			pdfRendererBuilder.run();
			try (PDDocument doc = PDDocument.load(outputPdf)) {
//				flattenPDF(doc);
//				AccessPermission accessPermission = new AccessPermission();
//				StandardProtectionPolicy spp = new StandardProtectionPolicy("123", "123", accessPermission);
//				doc.protect(spp);
				doc.save(outputPdf);
//				System.out.println("Pdf done with password protected.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("PDF CREATED SUCCESSFULLY FROM HTML ...");
	}

//	private void flattenPDF(PDDocument document) throws IOException {
//		System.out.println(document +"..........document");
//		PDAcroForm acroForm = document.getDocumentCatalog().getAcroForm();
//		System.out.println(acroForm + ".........acroForm");
//		List<PDField> fields= acroForm.getFields();
//		System.out.println(fields + "........Fields");
//			for (PDField field : fields) {
//				System.out.println(field + "...........field");
//				if(field.getFullyQualifiedName().equals("name")) {
//					field.setValue("Gaurav");
//					field.setReadOnly(true);	
//				}
//			}
//			acroForm.flatten();	
//	}
}
