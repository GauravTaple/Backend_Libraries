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
		
		// Path pdfFileBiccEmail = Paths.get("bicc-email.pdf");
		
		// -------- CASA Statement -----------------------------------
		Path pdfFile5 = Paths.get("Current-Account-Statement.pdf");
		Path pdfFile = Paths.get("Saving-Account-Statement.pdf");
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
		// Path DcheqsReminder1CashlinePdf = Paths.get("Drop3Pdfs/Dcheqs-reminder1-cashline.pdf");
		// Path DcheqsReminder2CashlinePdf = Paths.get("Drop3Pdfs/Dcheqs-reminder2-cashline.pdf");
		// Path DcheqsConversionAccountsCashlinePdf = Paths.get("Drop3Pdfs/Dcheqs-conversion-accounts-cashline.pdf");
		// Path Dcheqs1stReminderLetterPdf = Paths.get("Drop3Pdfs/Dcheqs-1st-reminder-letter.pdf");
		// Path Dcheqs2ndReminderNormalPdf = Paths.get("Drop3Pdfs/Dcheqs-2nd-reminder-normal.pdf");
		// Path DcheqsLetterForClosurePdf = Paths.get("Drop3Pdfs/Dcheqs-letter-for-closure-Ac.pdf");



		// Path firststInstallmentHf_TierPDF = Paths.get("CAD-Installment-Letter/1st-installment-hf_tier.pdf");
		// Path firststInstallment_PfPDF = Paths.get("CAD-Installment-Letter/1st-installment_pf.pdf");
		// Path firststInstallment_VfPDF = Paths.get("CAD-Installment-Letter/1st-installment_vf.pdf");
		// Path Installment_RLHFLEGACYPDF = Paths.get("CAD-Installment-Letter/installment_rl_hf_legacy.pdf");
		// Path firstInstallment_HFSINGLEPDF = Paths.get("CAD-Installment-Letter/1st-instalment_hf-single.pdf");
		// Path ReleaseLetter_RLHFNORMALPDF = Paths.get("CAD-Installment-Letter/release_letter_rl_hf_normal.pdf");
		// Path ReleaseLetter_RLPF = Paths.get("CAD-Installment-Letter/release_letter_rl_pf.pdf");
		// Path ReleaseLetter_RLVF = Paths.get("CAD-Installment-Letter/release_letter_rl_vf.pdf");
		// Path ReleaseLetter_RLHFLEGACY = Paths.get("CAD-Installment-Letter/release_letter_rl_hf_legacy.pdf");
		// Path takafulRenewalHotFireRetail = Paths.get("CAD-Installment-Letter/takaful-renewal_hot_fire_retail.pdf");
		// Path takafulRenewalHotFireGibSme = Paths.get("CAD-Installment-Letter/takaful-renewal_hot_fire_gib_sme.pdf");

		//------------------ AR RAHNU -----------------------------
		// Path NoticeBeforeDue12Months = Paths.get("AR Rahnu/Notice-before-due-12months.pdf");
		// Path NoticeBeforeDue6Months = Paths.get("AR Rahnu/Notice-before-due-6months.pdf");
		// Path NoticeAuctionBalance = Paths.get("AR Rahnu/Notice-auction-balance.pdf");
		// Path NoticeAuction = Paths.get("AR Rahnu/Notice-auction.pdf");
		// Path NoticeOverduePayment6_12Months = Paths.get("AR Rahnu/Notice-overdue-payment-6&12months.pdf");
		// Path NoticeOverduePayment18Months = Paths.get("AR Rahnu/Notice-overdue-payment-18months.pdf");
		// Path NoticePayoffMaturityPeriod18Months = Paths.get("AR Rahnu/Notice-payoff-maturity-period-18months.pdf");
		// Path NoticeOverdueBalanceAfterAuction = Paths.get("AR Rahnu/Notice-overdue-balance-after-auction.pdf");



		// Path ThirtyOneDaysReminder = Paths.get("NONRSAM-Reminders/31-days-reminder.pdf");
		// Path FifteenDaysReminder = Paths.get("NONRSAM-Reminders/reminder-15DPD.pdf");
		// Path SevenDaysReminder = Paths.get("NONRSAM-Reminders/reminder-7DPD.pdf");





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
			pdfService.generatePdfFileFromTemplate("Current-Account-Statement.ftlh", pdfFile5);
			pdfService.generatePdfFileFromTemplate("Saving-Account-Statement.ftlh",pdfFile);
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
			// pdfService.generatePdfFileFromTemplate("Drop3/Dcheqs-reminder1-cashline.ftlh", DcheqsReminder1CashlinePdf);
			// pdfService.generatePdfFileFromTemplate("Drop3/Dcheqs-reminder2-cashline.ftlh", DcheqsReminder2CashlinePdf);
			// pdfService.generatePdfFileFromTemplate("Drop3/Dcheqs-conversion-accounts-cashline.ftlh", DcheqsConversionAccountsCashlinePdf);
			// pdfService.generatePdfFileFromTemplate("Drop3/Dcheqs-1st-reminder-letter.ftlh", Dcheqs1stReminderLetterPdf);
			// pdfService.generatePdfFileFromTemplate("Drop3/Dcheqs-2nd-reminder-normal.ftlh", Dcheqs2ndReminderNormalPdf);
			// pdfService.generatePdfFileFromTemplate("Drop3/Dcheqs-letter-for-closure-Ac.ftlh", DcheqsLetterForClosurePdf);

			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/1st-installment-hf_tier.ftlh", firststInstallmentHf_TierPDF);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/1st-installment_pf.ftlh", firststInstallment_PfPDF);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/1st-installment_vf.ftlh", firststInstallment_VfPDF);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/installment_rl_hf_legacy.ftlh", Installment_RLHFLEGACYPDF);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/1st-instalment_hf-single.ftlh", firstInstallment_HFSINGLEPDF);

			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/release_letter_rl_hf_normal.ftlh", ReleaseLetter_RLHFNORMALPDF);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/release_letter_rl_pf.ftlh", ReleaseLetter_RLPF);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/release_letter_rl_vf.ftlh", ReleaseLetter_RLVF);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/release_letter_rl_hf_legacy.ftlh", ReleaseLetter_RLHFLEGACY);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/takaful-renewal_hot_fire_retail.ftlh", takafulRenewalHotFireRetail);
			// pdfService.generatePdfFileFromTemplate("CAD_Installment_Letter/takaful-renewal_hot_fire_gib_sme.ftlh", takafulRenewalHotFireGibSme);

			// ------------------ AR RAHNU -----------------------------
			// pdfService.generatePdfFileFromTemplate("AR Rahnu/Notice-before-due-12months.ftlh", NoticeBeforeDue12Months);
			// pdfService.generatePdfFileFromTemplate("AR Rahnu/Notice-before-due-6months.ftlh", NoticeBeforeDue6Months);
			// pdfService.generatePdfFileFromTemplate("AR Rahnu/Notice-auction-balance.ftlh", NoticeAuctionBalance);
			// pdfService.generatePdfFileFromTemplate("AR Rahnu/Notice-auction.ftlh", NoticeAuction);
			// pdfService.generatePdfFileFromTemplate("AR Rahnu/Notice-overdue-payment-6&12months.ftlh", NoticeOverduePayment6_12Months);
			// pdfService.generatePdfFileFromTemplate("AR Rahnu/Notice-overdue-payment-18months.ftlh", NoticeOverduePayment18Months);
			// pdfService.generatePdfFileFromTemplate("AR Rahnu/Notice-payoff-maturity-period-18months.ftlh", NoticePayoffMaturityPeriod18Months);
			// pdfService.generatePdfFileFromTemplate("AR Rahnu/Notice-overdue-balance-after-auction.ftlh", NoticeOverdueBalanceAfterAuction);


			// pdfService.generatePdfFileFromTemplate("NONRSAM-Reminders/31-days-reminder.ftlh", ThirtyOneDaysReminder);
			// pdfService.generatePdfFileFromTemplate("NONRSAM-Reminders/reminder-15DPD.ftlh", FifteenDaysReminder);
			// pdfService.generatePdfFileFromTemplate("NONRSAM-Reminders/reminder-7DPD.ftlh", SevenDaysReminder);


		} catch (Exception exception) {
			System.out.println(exception.getMessage());
		}
	}

}
