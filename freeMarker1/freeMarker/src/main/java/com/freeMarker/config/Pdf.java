package com.freeMarker.config;

import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("rest/v1")
public class Pdf {

	@Autowired
	private PdfService pdfService;

	@GetMapping("/pdf")
	public void createPdf() {
		// --------- RSAM -----------------------
		// Path pdfFileRsam = Paths.get("RSAM.pdf");

		// -------- Wealth-Management --------------------
		// Path pdfFile = Paths.get("quarterlyStatement.pdf");
		// Path pdfFile1 = Paths.get("wealthMSemiAnnualStatement.pdf");
		// Path pdfFile2 = Paths.get("wealthMMonthlyStatement.pdf");
		// Path pdfFile3 = Paths.get("wealthMAnnualStatement.pdf");
		// Path pdfFile = Paths.get("WealthMDivident_TaxVoucher.pdf");
		// Path pdfFile6 = Paths.get("Wealth-Multipage-Divident_TaxVoucher.pdf");
		// Path pdfFile = Paths.get("WealthMEmail.pdf");
		
		// -------- Bicc-Stmt3 And Bicc-Stmt4 -------------------------- 
		// Path PdfBiccPractice  = Paths.get("bicc-practice.pdf");
		// Path pdfFile = Paths.get("Bicc-Stmt4.pdf");
		// Path pdfFileBiccStmt3 = Paths.get("bicc-Stmt3.pdf");
		// Path pdfFileBiccStmt4 = Paths.get("bicc-Stmt4.pdf");
		// Path pdfFileBiccStmt3MultiPage = Paths.get("bicc-stmt3-multipage.pdf");
		// Path pdfFileBiccStmt4MultiPage = Paths.get("bicc-stmt4-multipage.pdf");
		// Path pdfFileBiccStmt3OLDMultiPage = Paths.get("bicc-old-multipage.pdf");
		// Path pdfFileNewBiccStmt3MultiPage = Paths.get("bicc-new-stmt3-multipage.pdf");
		// Path pdfFileNewBiccStmt4MultiPage = Paths.get("bicc-new-stmt4-multipage.pdf");
		
		Path pdfFileBiccEmail = Paths.get("bicc-email.pdf");
		
		// -------- CASA Statement -----------------------------------
		// Path pdfFile5 = Paths.get("Current-Account-Statement.pdf");
		// Path pdfFile = Paths.get("Saving-Account-Statement.pdf");
		// Path casaEmail = Paths.get("Casa-email.pdf");
		// Path casaStatement = Paths.get("Casa-statement.pdf");
		
		// -------- Cashline Statement ------------------------------
		// Path pdfFile = Paths.get("Cashline-Statement.pdf");
		// Path cashLineEmail = Paths.get("Cashline-statement-email.pdf");
		// Path cashLineDynamic = Paths.get("Cashline-dynamic.pdf");
		
		// -------- Financing Statement -----------------------------
		// Path pdfFile = Paths.get("Financing-Statement.pdf");
		// Path pdfFileMultiple = Paths.get("FinancingMultipleHeader.pdf");
		// Path pdfFileEmailFinancingStatement = Paths.get("financing-statement-email.pdf");
		 
		// ******************************************************************************************************************************************
		// ======================================= Drop 3 ===========================================================================================

		// Path BilobStmtPdf = Paths.get("Drop3Pdfs/BILOB-Statement.pdf");
		Path DcheqsRemindersCashlinePdf = Paths.get("Drop3Pdfs/Dcheqs-reminders-cashline.pdf");


		try {
			// ------ RSAM ----------------
			// pdfService.generatePdfFileFromTemplate("rsam.ftlh", pdfFileRsam);


			// -------- Wealth-Management ------------------------------
			// pdfService.generatePdfFileFromTemplate("WealthM-QuarterlyStatement.ftlh", pdfFile);
			// pdfService.generatePdfFileFromTemplate("WealthM-SemiAnnualStatement.ftlh",pdfFile1);
			// pdfService.generatePdfFileFromTemplate("WealthM-MonthlyStatement.ftlh",pdfFile2);
			// pdfService.generatePdfFileFromTemplate("WealthM-AnnualStatement.ftlh",pdfFile3);
			// pdfService.generatePdfFileFromTemplate("WealthM-Divident_TaxVoucher.ftlh",pdfFile);
			// pdfService.generatePdfFileFromTemplate("Wealth-Multipage.ftlh", pdfFile4);
			// pdfService.generatePdfFileFromTemplate("Wealth-Multipage-Divident_TaxVoucher.ftlh",pdfFile6);
			// pdfService.generatePdfFileFromTemplate("WealthM-Email.ftlh", pdfFile);
			
			
			//----------- (Old) Bicc Template Code Made By Shubham ----------
			// pdfService.generatePdfFileFromTemplate("bicc-practice.ftlh",PdfBiccPractice);
			// pdfService.generatePdfFileFromTemplate("bicc-stmt3.ftlh", pdfFileBiccStmt3);
			// pdfService.generatePdfFileFromTemplate("bicc-stmt4.ftlh", pdfFileBiccStmt4);
			
			//----------- (Old) Multipage Bicc Template Code ------------------
			// pdfService.generatePdfFileFromTemplate("bicc-stmt3-multipage.ftlh",pdfFileBiccStmt3MultiPage);
			// pdfService.generatePdfFileFromTemplate("bicc-stmt4-multipage.ftlh",pdfFileBiccStmt4MultiPage);
			// pdfService.generatePdfFileFromTemplate("bicc-old-multipage.ftlh",pdfFileBiccStmt3OLDMultiPage);
			// pdfService.generatePdfFileFromTemplate("bicc-stmt4.ftlh", pdfFile);
			// pdfService.generatePdfFileFromTemplate("bicc-email.ftlh", pdfFileBiccEmail);
			
			// ------------- New Bicc Template Code -----------------------------------
			// pdfService.generatePdfFileFromTemplate("bicc-new-stmt3-multipage.ftlh",pdfFileNewBiccStmt3MultiPage);
			// pdfService.generatePdfFileFromTemplate("bicc-new-stmt4-multipage.ftlh",pdfFileNewBiccStmt4MultiPage);
			
			// ----------- CASA -----------------------------------------
			// pdfService.generatePdfFileFromTemplate("Current-Account-Statement.ftlh", pdfFile5);
			// pdfService.generatePdfFileFromTemplate("Saving-Account-Statement.ftlh",pdfFile);
			// pdfService.generatePdfFileFromTemplate("Casa-email.ftlh",casaEmail);
			// pdfService.generatePdfFileFromTemplate("Casa-statement.ftlh",casaStatement);


			// ---------  Cashline --------------------------------------
			// pdfService.generatePdfFileFromTemplate("Cashline-statement.ftlh", pdfFile);
			// pdfService.generatePdfFileFromTemplate("Cashline-statement-email.ftlh", cashLineEmail);
			// pdfService.generatePdfFileFromTemplate("Cashline-dynamic.ftlh", cashLineDynamic);
			

			// ----------- Financing Statement ---------------------------
			// pdfService.generatePdfFileFromTemplate("Financing-Statement.ftlh", pdfFile);
			// pdfService.generatePdfFileFromTemplate("FinancingMultipleHeader.ftlh",pdfFileMultiple);
			// pdfService.generatePdfFileFromTemplate("financing-statement-email.ftlh", pdfFileEmailFinancingStatement);

			// ******************************************************************************************************************************************
		    // ======================================= Drop 3 ===========================================================================================

		    // pdfService.generatePdfFileFromTemplate("Drop3/Bilob-statement.ftlh", BilobStmtPdf);
			pdfService.generatePdfFileFromTemplate("Drop3/Dcheqs-reminders-cashline.ftlh", DcheqsRemindersCashlinePdf);
			

		} catch (Exception exception) {
			System.out.println(exception.getMessage());
		}
	}

}
