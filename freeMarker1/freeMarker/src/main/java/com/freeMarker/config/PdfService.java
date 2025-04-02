package com.freeMarker.config;

import com.openhtmltopdf.pdfboxout.PdfRendererBuilder;
import com.openhtmltopdf.svgsupport.BatikSVGDrawer;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class PdfService {

    private final Configuration configuration;

    public void generatePdfFileFromTemplate(String templateName, Path pdfFile)
            throws IOException, TemplateException {

        List<Transaction> transactions = createTransactionList();
        Map<String, Object> model = new HashMap<>();
        model.put("contextVariables", prepareTemplateData());
        model.put("transactions", transactions); // Pass the transaction list

        // Load the FreeMarker template
        Template template = configuration.getTemplate(templateName);

        // Process the template with the provided data model
        String message = FreeMarkerTemplateUtils.processTemplateIntoString(template, model);

        // Create the PDF renderer and load fonts
        PdfRendererBuilder pdfRendererBuilder = new PdfRendererBuilder();
        try (InputStream embArial = PdfService.class.getResourceAsStream("/static/fonts/Arial.ttf");
                InputStream embArialBold = PdfService.class.getResourceAsStream("/static/fonts/ArialBold.ttf");
                InputStream embArialItalic = PdfService.class.getResourceAsStream("/static/fonts/ArialItalic.ttf");
                InputStream embArialItalicBold = PdfService.class
                        .getResourceAsStream("/static/fonts/ArialItalicBold.ttf");
                OutputStream outputStream = Files.newOutputStream(pdfFile, StandardOpenOption.CREATE)) {

            pdfRendererBuilder.toStream(outputStream);
            pdfRendererBuilder.useFont(() -> embArial, "EmbArial");
            pdfRendererBuilder.useFont(() -> embArialBold, "EmbArialBold");
            pdfRendererBuilder.useFont(() -> embArialItalic, "EmbArialItalic");
            pdfRendererBuilder.useFont(() -> embArialItalicBold, "EmbArialItalicBold");
            pdfRendererBuilder.useSVGDrawer(new BatikSVGDrawer());
            pdfRendererBuilder.withHtmlContent(message, "classpath:/static/");

            pdfRendererBuilder.run();
        }
    }

    public List<Transaction> createTransactionList() {
        List<Transaction> transactions = new ArrayList<>();

        // Sample data (replace with actual data retrieval logic)
        transactions.add(new Transaction("Fund C", "150.00", "John Doe", "160.00", "1.08", "172.80"));

        return transactions;
    }

    private Map<String, Object> prepareTemplateData() {
        Map<String, Object> ctxVarsMap = new HashMap<>();

        // -------------------------- Bic Reminders And Rsam Data
        // -------------------------------------------------
        // Add dummy data for testing purposes
        // ctxVarsMap.put("type", "Credit Card");
        // ctxVarsMap.put("Add", "John Doe,Anytown, USA,454545");
        // ctxVarsMap.put("name", "1234-5678-9012-3456");
        // ctxVarsMap.put("amount", "100.00");
        // ctxVarsMap.put("amount1", "100.00");

        // ctxVarsMap.put("accountNo", "1234567890");
        // ctxVarsMap.put("email", "johndoe@example.com");
        // ctxVarsMap.put("add1", "123 Main St");
        // ctxVarsMap.put("add2", "Apt 101");
        // ctxVarsMap.put("add3", "Building B");
        // ctxVarsMap.put("add4", "Floor 5");
        // ctxVarsMap.put("add5", "Landmark Plaza");
        // ctxVarsMap.put("add6", "Anytown, USA 12345");

        // ctxVarsMap.put("customerNameWithTittle", "john doe");

        // ctxVarsMap.put("poskod", "12345");
        // ctxVarsMap.put("city", "Anytown");
        // ctxVarsMap.put("date", "09/02/2024");
        // ctxVarsMap.put("nameOfAgency", "ABC Agency");
        // ctxVarsMap.put("dcaAdd1", "456 Elm St");
        // ctxVarsMap.put("dcaAdd2", "Suite 200");
        // ctxVarsMap.put("dcaAdd3", "Anytown, USA");
        // ctxVarsMap.put("dcaCity", "Petaling Jaya Selangor");
        // ctxVarsMap.put("dcaPoskod", "12345");
        // ctxVarsMap.put("dcaPhone", "555-555-5555");
        // ctxVarsMap.put("dcaFax", "555-555-5556");
        // ctxVarsMap.put("card", "XXXXXXXXXXXX8989");

        // ctxVarsMap.put("branch", "Main Branch");
        // ctxVarsMap.put("accountNo", "1234567890");
        // ctxVarsMap.put("typeOfFinancing", "Personal Loan shubham shubham");
        // ctxVarsMap.put("fundingAmount", 10000.0);
        // ctxVarsMap.put("email", "customer@example.com");
        // ctxVarsMap.put("installmentMonthlyRent", 500.0);
        // ctxVarsMap.put("name", "John Doe");
        // ctxVarsMap.put("address", "ENCIK ABDUL RASHID BIN ADNAN,NO 24 JALAN DINING
        // 3,BANDAR KINRA,90000 KELANA,");
        // ctxVarsMap.put("nameWithTittle", "Mr. John Doe");
        // ctxVarsMap.put("date", LocalDate.of(2022, 1,
        // 1).format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
        // ctxVarsMap.put("overDueAmount", 2000.0);

        // ctxVarsMap.put("typeOfFinancing", "MV VEHICLE FIN-i (SOD)");
        // ctxVarsMap.put("fundingAmount", "RM XX,XXX.00");
        // ctxVarsMap.put("installmentMonthlyRent", "RM XXX.00");
        // ctxVarsMap.put("date", "03/10/2024");
        // ctxVarsMap.put("overDueAmount", "1000.00");
        // ctxVarsMap.put("balance",
        // "119,214,396.6355555656464565665565646556598546165464654654654654645");
        // ctxVarsMap.put("asFarAsDate", "31/12/2023 ");

        // List<Map<String, Object>> rows = new ArrayList<>();
        // Map<String, Object> row1 = new HashMap<>();
        // row1.put("counter", "2024-12-15");
        // row1.put("html", "2024-12-15");
        // ctxVarsMap.put("bankOfficer", rows);

        // ------Wealth
        // Management--------------------------------------------------------------
        // ctxVarsMap.put("name", "DEWAN PERDAGANGAN ISLAM MALAYSIA (DPIM)");
        // ctxVarsMap.put("address", "NO .56<br/> TINGKAT 1<br/> TAMAN SENA INDAH<br/>
        // 01000<br/> PERLIS");
        // ctxVarsMap.put("accountNo", "100692");
        // ctxVarsMap.put("utc", "ERNI ROHANI BINTI AHMAD");
        // ctxVarsMap.put("utcContactNo", "");
        // ctxVarsMap.put("branch", "CAWANGAN KANGAR");
        // ctxVarsMap.put("date1", "31/08/2023");

        // ctxVarsMap.put("name", "SYED ALI BIN SYED ABDUL KADIR");
        // ctxVarsMap.put("address", "72 JALAN RUSA<br/> TAMAN BEROLEH<br/> 83000<br/>
        // JOHOR");
        // ctxVarsMap.put("accountNo", "100692");
        // ctxVarsMap.put("utc", "ERNI ROHANI BINTI AHMAD");
        // ctxVarsMap.put("utcContactNo", "");
        // ctxVarsMap.put("branch", "CAWANGAN KANGAR");
        // ctxVarsMap.put("date1", "31/08/2023");
        // ctxVarsMap.put("date2", "");

        // // -------- Dynamic values for wealth-management
        // ------------------------------------------------------
        // ctxVarsMap.put("name", "SYED ALI BIN SYED ABDUL KADIR");
        // ctxVarsMap.put("add1", "72 JALAN RUSA");
        // ctxVarsMap.put("add2", "TAMAN BEROLEH");
        // ctxVarsMap.put("add3", "83000");
        // ctxVarsMap.put("add4", "JOHOR");
        // ctxVarsMap.put("add5", "KUALA LUMPUR");
        // ctxVarsMap.put("poscode", "12345");
        // ctxVarsMap.put("add6", "5555");
        // ctxVarsMap.put("add7", "5555");
        // ctxVarsMap.put("accountNo", "7788994455");
        // ctxVarsMap.put("unitTrustConsultant", "ERNI ROHANI BINTI AHMAD");
        // ctxVarsMap.put("unitTrustContactNo", "");
        // ctxVarsMap.put("branchName", "Kuala Lumpur");
        // ctxVarsMap.put("date", "01/11/2024");
        // ctxVarsMap.put("fundName", "BIMB DANA AL-FAKHIM I CLASS (NON-INDIVIDUAL)");
        // ctxVarsMap.put("previousBalanceUnit", "28,764.08");
        // ctxVarsMap.put("nameOfJointHolder", "IZZATUL SYAHMINA BINTI SHAHARUDDIN");
        // ctxVarsMap.put("currentBalanceUnit", "0.00");
        // ctxVarsMap.put("currentNav", "0.5178");
        // ctxVarsMap.put("balance", "0.00");
        // ctxVarsMap.put("country", "MALAYSIA");
        // ctxVarsMap.put("taxVoucher", "TaxVoucherReinvest");

        // ctxVarsMap.put("warrantNo", "1");
        // ctxVarsMap.put("noOfUnits", "0.56");
        // ctxVarsMap.put("periodEnd", "31/08/2023");
        // ctxVarsMap.put("distributionNo", "17");
        // ctxVarsMap.put("dateOfPayment", "25/08/2023");

        // ctxVarsMap.put("taxableIncome", "0.00");
        // ctxVarsMap.put("malaysian", "0.09");
        // ctxVarsMap.put("foreign", "0.00");
        // ctxVarsMap.put("nonAllowableExpense", "0.07");
        // ctxVarsMap.put("nonTaxableIncome", "0.45");
        // ctxVarsMap.put("distributionEqualistaion", "0.00");
        // ctxVarsMap.put("netPayable", "0.29");

        // ctxVarsMap.put("fund", "IBIC");
        // ctxVarsMap.put("unitHolderNo", "044649");
        // ctxVarsMap.put("netDistribution", "0.29");
        // ctxVarsMap.put("netAssetValue", "0.5171");
        // ctxVarsMap.put("creditedUnitFromDistribution", "0.56");
        // ctxVarsMap.put("unitInHolding", "626.68");
        // ctxVarsMap.put("totalUnit", "627.24");

        // List<Map<String, Object>> rows = new ArrayList<>();
        // Map<String, Object> row1 = new HashMap<>();
        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "DV");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "DV017-000009");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000.00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // row1.put("transactionType", "NS");
        // row1.put("productType", "CASH PLAN");
        // row1.put("transactionNo", "20240034273R");
        // row1.put("transactionDate", LocalDate.parse("2024-10-15"));
        // row1.put("amountPaid", "1,000,00");
        // row1.put("chargeAmountPercentage", "0.0000");
        // row1.put("chargeAmountRm", "10.00");
        // row1.put("amountInvestedRedeemed", "990.00");
        // row1.put("nav", "0.5225");
        // row1.put("totalUnits", "1900.00");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // // Tax voucher data mapping
        // ctxVarsMap.put("warrantNo", "111111");
        // ctxVarsMap.put("noOfUnits", "111111");
        // ctxVarsMap.put("periodEnd", "111111");
        // ctxVarsMap.put("distributionNo", "111111");
        // ctxVarsMap.put("dateOfPayment", "111111");
        // ctxVarsMap.put("taxableIncome", "111111");
        // ctxVarsMap.put("malaysian", "111111");
        // ctxVarsMap.put("foreign", "111111");
        // ctxVarsMap.put("nonAllowableExpense", "111111");
        // ctxVarsMap.put("nonTaxableIncome", "111111");
        // ctxVarsMap.put("distributionEqualistaion", "111111");
        // ctxVarsMap.put("netPayable", "111111");
        // ctxVarsMap.put("customerNameFirst", "RIZA FAISAL BIN MOHAMMED KANDAR ");
        // ctxVarsMap.put("customerFirstAddress1", "111111");
        // ctxVarsMap.put("customerFirstAddress2", "111111");
        // ctxVarsMap.put("customerFirstAddress3", "111111");
        // ctxVarsMap.put("customerFirstAddress4", "111111");
        // ctxVarsMap.put("customerFirstAddress5", "111111");
        // ctxVarsMap.put("firstAddressPoscode", "111111");
        // ctxVarsMap.put("customerFirstAddress6", "111111");
        // ctxVarsMap.put("customerFirstAddress7", "111111");
        // ctxVarsMap.put("fund", "BIMB DANA AL-FAKHIM I CLASS (NON-INDIVIDUAL)");
        // ctxVarsMap.put("unitHolderNo", "111111");
        // ctxVarsMap.put("netDistribution", "111111");
        // ctxVarsMap.put("netAssetValue", "111111");
        // ctxVarsMap.put("creditedUnitFromDistribution", "111111");
        // ctxVarsMap.put("unitInHolding", "111111");
        // ctxVarsMap.put("totalUnit", "111111");
        // ctxVarsMap.put("customerNameSecond", "RIZA FAISAL BIN MOHAMMED KANDAR");
        // ctxVarsMap.put("customerSecondAddress1", "111111");
        // ctxVarsMap.put("customerSecondAddress2", "111111");
        // ctxVarsMap.put("customerSecondAddress3", "111111");
        // ctxVarsMap.put("customerSecondAddress4", "111111");
        // ctxVarsMap.put("customerSecondAddress5", "111111");
        // ctxVarsMap.put("secondAddressPoscode", "111111");
        // ctxVarsMap.put("customerSecondAddress6", "111111");
        // ctxVarsMap.put("customerSecondAddress7", "111111");

        // ctxVarsMap.put("taxVoucherType", "TaxVoucherReinvest");
        // ctxVarsMap.put("contextVariables", ctxVarsMap);

        // -------- For Current/Saving Account Statement Template And Financing
        // Statement ----------------
        // ctxVarsMap.put("customerName", "SYED ALI BIN SYED ABDUL KADIR");
        // ctxVarsMap.put("add1", "72 JALAN RUSA");
        // ctxVarsMap.put("add2", "TAMAN BEROLEH");
        // ctxVarsMap.put("add3", "83000");
        // ctxVarsMap.put("add4", "JOHOR");
        // ctxVarsMap.put("add5", "KUALA LUMPUR");
        // ctxVarsMap.put("poscode", "12345");
        // ctxVarsMap.put("add6", "5555");
        // ctxVarsMap.put("add7", "5555");
        // ctxVarsMap.put("date", "5555");
        // ctxVarsMap.put("branchName", "5555");

        // ctxVarsMap.put("statementDate", "30/11/23");
        // ctxVarsMap.put("accountNo", "1122556633422");
        // ctxVarsMap.put("branch", "Pusat Pembiayaan Automobil KL");

        // ctxVarsMap.put("debitOne", "2");
        // ctxVarsMap.put("debitTwo", "1,500.50");
        // ctxVarsMap.put("creditOne", "0");
        // ctxVarsMap.put("creditTwo", ".00");
        // ctxVarsMap.put("chequeOne", "");
        // ctxVarsMap.put("chequeTwo", ".00");
        // ctxVarsMap.put("averageOne", "");
        // ctxVarsMap.put("averageTwo", "2,145.31");

        // ctxVarsMap.put("tarikh", "09/01/2025");
        // ctxVarsMap.put("keterangan", "Jumlah Terdahulu");
        // ctxVarsMap.put("debt", "465465");
        // ctxVarsMap.put("cedt", ".36655");
        // ctxVarsMap.put("baki", "516155");
        // ctxVarsMap.put("bankIslamLogo",
        // "data:image/png;base64,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");
        // ctxVarsMap.put("statementLogo",
        // "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANMAAABRCAYAAABIf5MKAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAqrSURBVHhe7Z3fbxXHFcePr39e/yT4JzWqg4MaopQ4oi0UpY0iOYHKUmV4qclLSFQpVZ5S1S/2X2C/OGqkSkiRqqRRpZaHCvxiFRIk1FY1oW2KSyUoooDbGOOfGBv7+rc7Z3bWd3bu3r17745Njb4fabQ769nd2bvnO3PO7Ow6L77vpQ0CAEQmppYAgIhATABYAmICwBIQEwCWgJgAsATEBIAlICYALAExAWAJiAkAS0BMAFgCYgLAEhATAJaAmACwBMQEgCUgJgAsATEBYAmICQBLQEwAWAJiAsASEBMAloCYALBE5K8TFVblU3F1IRXXFFBJQyHFG4po9fEaJR6s0NK4SFMiTa7S+kr2p4kV5snjyuPX8bELqaA8Xxx7mRb5+OK4fPyVR2tqDwCeHDmLKVaUR3Xfr6TKF+JqS3pYXA+vLYg0r7Zk5pmXy0QqleLJxOyNBI3/cZbWl/HVMvDkyElMZV8vprrXKqmwMrOh63Bv8tX5aVpfTX/KWEEe7T2xW/Zy2bAyu0bjl2dp/j9LagsA2bGxtqKWqzLRxrrMU16M8vILZJLZfH/bzFpM1YfLZYrCv385TmsJVVGN/HiMnvtxncrlxtTVxzIBkC0spo3VZZGEkHzIKxCCKiiyJybGFBTHLPPDSzR7KyFcunXp1sUbi6hExDmVB+Ii5nEU7bI0uULDv51SuSRNp6pFjOSt6NLUKs3eTNCiiL8SI8tqK1H5cyVU3lxMlc8n3UwICURhfTlBGytJG/Mjr7BIhDj+oU3OMROLqeqbpfTonwsZDXj3t8qo5miFyjmM/2GWZv6xoHJEu14qpbpXK1XOYXJwjqb/FhxncczGdeG4aWcKqY1+80UPtdeqLN2kD5s7qFvlotDTP0TvH1QZwdBHLXS0V2WeFk5+QHf7WqleZen6p1Ta3qcy2bGWmBOKSvWYPMRiwoPy2rJLzkPjbLijv58JZcAsCLMcCye+p0iu89IUEpfPJCSGRRS2HhnpOksLd4Z8090zbarQToAF6hXSdtBx5pLvb8dpsEsV+n/GjZGCCCgT6TlT4n5wl6jDxr487fVFq150ukt36cLlshHH4pgTOOYMt2580989oDbsbDrOdGo93TagGqGPj9eoDTuUMD5aQJltfWg7ecUrkNK9Ts/kLl3McluK6SY8Bbz8Na9Rs3tX2rxFLh4L6SlphKKyrWLih61ri8lukp8hldQ7D2Jd+O9cbrvoedsU0iT1dzrG56Z3Lkyqv+1EbtLlLYuThDt50hQSx3ze3+/D6+pPTzmhByCqv1MuSqtMBHiEr+zZYpVz3D99ZHD+3pIcuYuMuKqpv2To4VJ6JRZSK715TmUD6aTBO29Ri8oxYxe6ad97AyqXxBwIoIlL9M6Rn9FZmUkzAGG2+No+HJukuFQceH/SGNDLeq8tpU6MGbwbdeDr6xLXzeeW1zp82uiVshg88fEIfAdIMpUz/66uwby+5L1JvW/ub/OjXz9S+WDyy6rUmpfQPVP1EWc4PGrShcSUNRl58Xe//bJOor4Zeb7Ra3jXB4SxOcG7GUBz2gyiZYxg3hCi+uM9tPDFB9Sh8s6N8zHa2lb6+M4l0aqrfApmiy9udq8jJDaSaLFJmjoxB98S1xVQr0OOkFw6mrz1GLvwKyEk5/ipv1/yuHKgwkf0Le+Kcv2dKhe+XApCYKeMxquLhcTC87lvtggtprWlECMdOcBu3lYQpr6mMYRDGIveGnNL2NxN/RMqL4TyUyW6nn79xjnuT9JlrKH2t9MYRNdp7wCCFLlYGkbCra10pTov0ZjaFgw3FJmMSdSrS28QktTXen8vMzYLhbiGXk2QzjV8SkMqTwe5IRHLsOV8MF33oXOqIfJsT7qjttzQ0GJaHLXgem0jYep7djiHWKjrsMcYhwbZLRqgew+cPNNylEXSSa/preP1q9L98Zzz4GHqUatJauiUp1cSN911vc6NkHYapycUrf7dY5/TPi4jjGZfinG4RsMu3gv0rC5Sdh3l37TGgKltoRO+hpo0QHaZrt3P/vfrONaiGfQkXbnIrtcNurd5/hr67rG20OVSaGjz9kqisXNdQm99D9D7sscUMmsP69oHE1pMiVHvoMB/fzdFt37xIKs0enFG7Z2Et5vcH5hJ2TdT4vromPX15V8j3hZdGrfoBY44BuM38GD2ZtLlEDclxW062UgNalUiXShRNuPIV43oAdQqMzFC19QqUR9d9mlFU93LNJh1ejCi4rYBOv9lZmE4blwSszGqP/S6qEMfHVWC82vxvb2Z6AX7+PfTY0aHsOVSEL2n3iuN3b+h1kR9Lw759OCOqKQLH2ZMIKBM+J7JeJbD04SypfYV74PZx3cWPUuXulcr1Fp4zPqEevZktPTyhw1jlFuKaP0/uqnWBZrbyHS3s6Fq7o5L2t5Ew7zehkZ1rW104pC3kQiF2RhxLBgUy2wHoifSRVx//HSy91c9t18jKb2JvBByCCgTWkw8R06n6sVSKm8uUbnM8EzwgjLv6R7+3ZlO5C5deKicy4eF68H10THr649oRXXDZeTggNPb+AX6Zuu2GbfIJIycXSfpcn1OV3TXadOlclttHkFKM/LVe9UjlhYRP0ij5wBail21/mbdM6K7SYLNazVa/IkhOh/G7RHG2WUaptsDi+Q3yNE96K2z+wxMJo79hBjYhQxbzg/vvgfolJq9woM33AOdfa9VHMdwbQXurPAggsqEFhPP8p7485zKOdS+UpGxh+IX/Bpaq1IezPLcPNcV4yXndbg878f7B8Hn53rocD39ZqX70tuR3XMkw4DcuMVJenAv3MVebWBAE2k6Q0tiuHNi3153OpN+HM/QeRgBGHXyJTlyGAY2zKwCePF76+VdN1kmfeQubDk/jMao/njn5mBF8jjeBoRjX/maRUF6schZ4zbExDz80jtXjt+ybXi9ihp/+IycqMozxdn4eTv3FrsPlVHTmzUpLxDyrHF9kivDed6uw/vx/nwcPh4fl4/P5+Hz8Xn5/Lxdx6xnJpyWKmBUR/UqbiAry6cbQduMQwTSrUhtAR0m6V6A8Xd/4j2+x10xkL3j5nOrDPgOUijkyGT2wbjjeqa7ToFxXFk+Ta+qxzhhy6XSRz/3NJABI6dqUMW9t/IVi0LR8MeENLgd5yTWeRv/LYisZ41X7C+hPT/YpXK5sZXvM/Gk17nb3hgMgDC4Lwdmwur7TNwz7HmjKtQr5Tpb+aYtv0M1+tkjzztPAGTDExGTS+33KuS3GjKx1d+A4ONO/MkbzwGw3UQSE5NfGkt+naje+YIQz4tLjK7ICavyC0ITK7l/najWOTZ/9Si+Rxxb+LD85SMe+na/TrS2sDWzMwDIhshiAgA4ZDWaBwBID8QEgCUgJgAsATEBYAmICQBLQEwAWAJiAsASEBMAloCYALAExASAJSAmACwBMQFgCYgJAEtATABYAmICwBIQEwCWgJgAsATEBIAlICYALAExAWAJiAkAC8R3NUFMANhg75GfQEwARIV7pZpvtEFMAESlev8bcgkxARCRir3flkuICYCIlO3eL5cQEwARKYg7/+USYgLAEhATABFZTUzLJcQEQETmp2/LJcQEQETmvvqrXEJMAERk6vZncgkxARCRxMwwTd4awH8OBMAGmOgKgCUSM8P0PwaQ7KGLxOfAAAAAAElFTkSuQmCC");
        // ctxVarsMap.put("contextVariables", ctxVarsMap);

        // List<Map<String, Object>> rows = new ArrayList<>();
        // Map<String, Object> row1 = new HashMap<>();
        // row1.put("date", "2/11/23");
        // row1.put("description", "9501 CDM CASH DEP TO CA 7616449");
        // row1.put("debit", "400.00");
        // row1.put("credit", "500.00");
        // row1.put("balance", "18,947.86");
        // rows.add(row1);
        // ctxVarsMap.put("rows", rows);

        // Map<String, Object> row2 = new HashMap<>();
        // row2.put("date", "5/11/23");
        // row2.put("description", "9501 CDM CASH DEP TO CA 7616449 ");
        // row2.put("debit", "400.00");
        // row2.put("credit", "600.00");
        // row2.put("balance", "18,947.86");
        // rows.add(row2);
        // ctxVarsMap.put("rows", rows);

        // row2.put("date", "5/11/23");
        // row2.put("description", "9501 CDM CASH DEP TO CA 7616449 ");
        // row2.put("debit", "400.00");
        // row2.put("credit", "600.00");
        // row2.put("balance", "18,947.86");
        // rows.add(row2);
        // ctxVarsMap.put("rows", rows);

        // row2.put("date", "5/11/23");
        // row2.put("description", "9501 CDM CASH DEP TO CA 7616449 ");
        // row2.put("debit", "400.00");
        // row2.put("credit", "600.00");
        // row2.put("balance", "18,947.86");
        // rows.add(row2);
        // ctxVarsMap.put("rows", rows);

        // row2.put("date", "5/11/23");
        // row2.put("description", "9501 CDM CASH DEP TO CA 7616449 ");
        // row2.put("debit", "400.00");
        // row2.put("credit", "600.00");
        // row2.put("balance", "18,947.86");
        // rows.add(row2);
        // ctxVarsMap.put("rows", rows);

        // row2.put("date", "5/11/23");
        // row2.put("description", "9501 CDM CASH DEP TO CA 7616449 ");
        // row2.put("debit", "400.00");
        // row2.put("credit", "600.00");
        // row2.put("balance", "18,947.86");
        // rows.add(row2);
        // ctxVarsMap.put("rows", rows);

        // row2.put("date", "5/11/23");
        // row2.put("description", "9501 CDM CASH DEP TO CA 7616449 ");
        // row2.put("debit", "400.00");
        // row2.put("credit", "600.00");
        // row2.put("balance", "18,947.86");
        // rows.add(row2);
        // ctxVarsMap.put("rows", rows);

        // row2.put("date", "5/11/23");
        // row2.put("description",
        // "9501 CDM CASH DEP TO CA 7616449 9501 CDM CASH DEP TO 7616449 9501 CDM CASH DEP TO 7616449 9501 CDM CASH DEP TO 7616449 9501");
        // row2.put("debit", "400.00");
        // row2.put("credit", "600.00");
        // row2.put("balance", "18,947.86");
        // rows.add(row2);
        // ctxVarsMap.put("rows", rows);

        // -------------------- BICC STMT3
        // ------------------------------------------------------------------------
        // ctxVarsMap.put("name", "TUAN Customer 000000002 ");
        // ctxVarsMap.put("address", "ENCIK KKS ENCIK| Country | City Name| Country |ENCIK KKS ENCIK| Country | City Name| Country");
        // ctxVarsMap.put("message",
        // "KETAHUI TANGGUNGJAWAB LIABILITI AHLI KAD (DEBIT-I KREDIT -I) UNTUK MENGURANGKAN (DEBIT-I KREDIT -I) UNTUK MENGURANGKAN (DEBIT-I KREDIT -I) UNTUK MENGURANGKAN (DEBIT-I KREDIT -I) UNTUK MENGURANGKAN (DEBIT-I KREDIT -I) UNTUK MENGURANGKAN UNTUK MENGURANGKAN (DEBIT-I KREDIT -I) UNTUK MENGURANGKAN AKAN");
        // ctxVarsMap.put("processingDate", "24 December 2024");
        // ctxVarsMap.put("latestDueDate", "24 December 2024");
        // ctxVarsMap.put("financingLimit", "0011666161655666515616516");
        // ctxVarsMap.put("profitCharge", "12500.00");
        // ctxVarsMap.put("overDueAmount", "11111");
        // ctxVarsMap.put("previousBalance", "11111");
        // ctxVarsMap.put("payment", "11111");
        // ctxVarsMap.put("cardNo", "12345678910");
        // ctxVarsMap.put("creditLimit", "11111");
        // ctxVarsMap.put("subTotal", "1111145544");
        // ctxVarsMap.put("subTotalTittle", "SUB TOTAL");
        // ctxVarsMap.put("amountDue", "11111");
        // ctxVarsMap.put("paymentRefNo", "5422 6100 0000 0427 0000");
        // ctxVarsMap.put("entryDate", "11111");
        // ctxVarsMap.put("transationDate", "11111");
        // ctxVarsMap.put("transactionDetail", "11111");
        // ctxVarsMap.put("transAmount", "11111");
        // ctxVarsMap.put("pointEarn", "11111");
        // ctxVarsMap.put("pointRedeem", "11111");
        // ctxVarsMap.put("pointTotal", "11111");
        // ctxVarsMap.put("pointExpired", "11111");
        // ctxVarsMap.put("pointCarry", "11111");
        // // ctxVarsMap.put("transactions", "11111");
        // ctxVarsMap.put("messageSecondDetail", "11111");
        // ctxVarsMap.put("messageB20", "SILA LAYARI WWW.BANKISLAM.COM.MY UNTUK MENDAPATKAN INFO TERK INI BERKENAAN TERMA DAN SYARAT KAD KREDIT-I BANK ISLAM.");
        // ctxVarsMap.put("processingDateE21", "11111");
        // ctxVarsMap.put("latestDateE21", "11111");
        // ctxVarsMap.put("paymentMinAmtE21", "11111");
        // ctxVarsMap.put("processingDateE22", "11111");
        // ctxVarsMap.put("latestDateE22", "11111");
        // ctxVarsMap.put("paymentMinAmtE22", "11111");
        // ctxVarsMap.put("svgAmtE23", "11111");
        // ctxVarsMap.put("ttlCrUtilE24", "11111");
        // ctxVarsMap.put("ttlPftChargeE25", "11111");
        // ctxVarsMap.put("ttlFeeCharge26", "11111");
        // ctxVarsMap.put("date", "11111");
        // ctxVarsMap.put("promotionalImage",
        // "data:image/png;base64,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");
        // ctxVarsMap.put("iosScanner",
        // "data:image/png;base64,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");
        // ctxVarsMap.put("androidScanner",
        // "data:image/png;base64,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");
        // ctxVarsMap.put("bankIslamLogo",
        // "data:image/png;base64,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");
        // ctxVarsMap.put("statementLogo",
        // "data:image/png;base64,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");

        // ctxVarsMap.put("month", "05");
        // ctxVarsMap.put("businessCard", "01");

        // ctxVarsMap.put("customerNameAndCardNo", "1234567891054546566 ZAHADI ZAHADI ZAHADI ZAHADIZAHADIZAHADI ");
        // ctxVarsMap.put("txnPreviousBalanceTitle", "PREVIOUS BALANCE");
        // ctxVarsMap.put("txnPreviousBalance", "456.00");

        // ctxVarsMap.put("contextVariables", ctxVarsMap);

        // // Summary Of Installment Plan
        // List<Map<String, Object>> plans = new ArrayList<>();
        // Map<String, Object> plan1 = new HashMap<>();
        // plan1.put("installmentProgram", "ABCDE");
        // plan1.put("totalPrincipalAmount", "555565");
        // plan1.put("installmentTenure", "555565");
        // plan1.put("monthlyInstallmentPayment", "555565");
        // plan1.put("monthUnBilled", "555565");
        // plan1.put("unBilledPrinciple", "555565");
        // plan1.put("totalPrincipalAmountSign", "+");
        // plan1.put("monthlyInstallmentPaymentSign", "+");
        // plan1.put("unBilledPrincipleSign", "-");
        // plans.add(plan1);
        // ctxVarsMap.put("installmentPlan", plans);



        // plan1.put("installmentProgram", "TEST MPAY - IPP 6 MNTH");
        // plan1.put("totalPrincipalAmount", "555565");
        // plan1.put("installmentTenure", "555565");
        // plan1.put("monthlyInstallmentPayment", "555565");
        // plan1.put("monthUnBilled", "555565");
        // plan1.put("unBilledPrinciple", "555565");
        // plan1.put("totalPrincipalAmountSign", "+");
        // plan1.put("monthlyInstallmentPaymentSign", "+");
        // plan1.put("unBilledPrincipleSign", "-");
        // plans.add(plan1);
        // ctxVarsMap.put("installmentPlan", plans);

        

        // List<Map<String, Object>> rows = new ArrayList<>();
        // Map<String, Object> row1 = new HashMap<>();
        // row1.put("transactionDate", "2024-12-15");
        // row1.put("postingDate", "2024-12-14");
        // row1.put("description", "CASHBACK FOR CARD 8548-FEB");
        // row1.put("amount", "-200.00");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2024-12-15");
        // row1.put("postingDate", "2024-12-14");
        // row1.put("description", "CASHBACK FOR CARD 8548-FEB");
        // row1.put("amount", "-200.00");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2024-12-15");
        // row1.put("postingDate", "2024-12-14");
        // row1.put("description", "CASHBACK FOR CARD 8548-FEB");
        // row1.put("amount", "-200.00");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2024-12-15");
        // row1.put("postingDate", "2024-12-14");
        // row1.put("description", "CASHBACK FOR CARD 8548-FEB");
        // row1.put("amount", "-200.00");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2024-12-15");
        // row1.put("postingDate", "2024-12-14");
        // row1.put("description", "CASHBACK FOR CARD 8548-FEB");
        // row1.put("amount", "-200.00");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2024-12-15");
        // row1.put("postingDate", "2024-12-14");
        // row1.put("description", "CASHBACK FOR CARD 8548-FEB");
        // row1.put("amount", "-200.00");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2024-12-15");
        // row1.put("postingDate", "2024-12-14");
        // row1.put("description", "CASHBACK FOR CARD 8548-FEB");
        // row1.put("amount", "-200.00");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

       

        

        // // --------------- Financing Statement
        // ----------------------------------------------
        // Map<String, String> headerMap = new HashMap<>();
        // headerMap.put("customerName", "SYED ALI BIN SYED ABDUL KADIR");
        // headerMap.put("add1", "72 JALAN RUSA");
        // headerMap.put("add2", "TAMAN BEROLEH");
        // headerMap.put("add3", "83000");
        // headerMap.put("add4", "JOHOR");
        // headerMap.put("add5", "KUALA LUMPUR");
        // headerMap.put("poscode", "12345");
        // headerMap.put("add6", "5555");
        // headerMap.put("add7", "5555");
        // headerMap.put("date", "5555");
        // headerMap.put("branchName", "5555");
        // headerMap.put("customerAccountNumber", "5555");
        // headerMap.put("year", "5555");
        // headerMap.put("productType", "5555");
        // headerMap.put("productTypeDescription", "5555");
        // headerMap.put("financingAmount", "561665656566");
        // headerMap.put("outstandingBankSalePrice", "5555");
        // headerMap.put("financingPayableAmount", "5555");
        // headerMap.put("advancePaymentAmount", "5555");
        // headerMap.put("bankSalesPrice", "5555");
        // headerMap.put("outstandingTawidhCharges", "5555");
        // headerMap.put("outstandingMiscCost", "5555");
        // headerMap.put("outstandingOtherCharges", "5555");
        // headerMap.put("balance", "5555");
        // headerMap.put("bulletFlag", "");
        // headerMap.put("amortized", "5555");
        // headerMap.put("residualValue", "5555");
        // headerMap.put("message", "6165564556hgghavvdahjdjkdkjdad abdjahvddajdahjd");

        // headerMap.put("guarantor1Name", "guarantor name 1");
        // headerMap.put("guarantor1add1", "5555");
        // headerMap.put("guarantor1add2", "5555");
        // headerMap.put("guarantor1add3", "5555");
        // headerMap.put("guarantor1add4", "5555");
        // headerMap.put("guarantor1add5", "5555");
        // headerMap.put("guarantor1add6", "5555");
        // headerMap.put("guarantor1add7", "5555");

        // headerMap.put("guarantor2Name", "guarantor name 2");
        // headerMap.put("guarantor2add1", "1111");
        // headerMap.put("guarantor2add2", "1111");
        // headerMap.put("guarantor2add3", "1111");
        // headerMap.put("guarantor2add4", "1111");
        // headerMap.put("guarantor2add5", "1111");
        // headerMap.put("guarantor2add6", "1111");
        // headerMap.put("guarantor2add7", "1111");
        // ctxVarsMap.put("header", headerMap);


        // Map<String, String> intefaceMap = new HashMap<>();
        // intefaceMap.put("beginningCost", "100,000.00");
        // intefaceMap.put("beginningBalance", "72 JALAN RUSA");
        // ctxVarsMap.put("interface", intefaceMap);


        // ctxVarsMap.put("year", "2000");
        // ctxVarsMap.put("trxDate", "5/01/2025");
        // ctxVarsMap.put("description", "Previous Balance");
        // ctxVarsMap.put("debit", ".00");
        // ctxVarsMap.put("credit", ".00");
        // ctxVarsMap.put("beginningCost", "63,000.00");
        // ctxVarsMap.put("beginningBalance", "76,891.50");
        // // ctxVarsMap.put("name", "2000");
        // ctxVarsMap.put("bankIslamLogo",
        // "data:image/png;base64,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");
        // ctxVarsMap.put("statementLogo",
        // "data:image/png;base64,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");
        // ctxVarsMap.put("contextVariables", ctxVarsMap);

        // List<Map<String, Object>> rows = new ArrayList<>();
        // Map<String, Object> row1 = new HashMap<>();
        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);
        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);
        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("balance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);



         // // --------------- casa Statement
        // ----------------------------------------------
        // Map<String, String> headerMap = new HashMap<>();
        // headerMap.put("customerName", "SYED ALI BIN SYED ABDUL KADIR");
        // headerMap.put("add1", "72 JALAN RUSA");
        // headerMap.put("add2", "TAMAN BEROLEH");
        // headerMap.put("add3", "83000");
        // headerMap.put("add4", "JOHOR");
        // headerMap.put("add5", "KUALA LUMPUR");
        // headerMap.put("poscode", "12345");
        // headerMap.put("add6", "5555");
        // headerMap.put("add7", "5555");
        // headerMap.put("date", "5555");
        // headerMap.put("branchName", "SRI GOMBAK");
        // headerMap.put("customerAccountNumber", "12345678910121212131");
        // headerMap.put("year", "5555");
        // headerMap.put("productType", "5555");
        // headerMap.put("productTypeDescription", "5555");
        // headerMap.put("financingAmount", "561665656566");
        // headerMap.put("outstandingBankSalePrice", "5555");
        // headerMap.put("financingPayableAmount", "5555");
        // headerMap.put("advancePaymentAmount", "5555");
        // headerMap.put("bankSalesPrice", "5555");
        // headerMap.put("outstandingTawidhCharges", "5555");
        // headerMap.put("outstandingMiscCost", "5555");
        // headerMap.put("outstandingOtherCharges", "5555");
        // headerMap.put("balance", "5555");
        // headerMap.put("bulletFlag", "");
        // headerMap.put("amortized", "5555");
        // headerMap.put("residualValue", "5555");
        // headerMap.put("message", "Pay off your outstanding credit card bills faster and |easier with Personal Financing-i. Quick cash of up to |RM150,000 at a low rate of 5.1% per annum.|Bank Islam will revise its service charges for Consumer |Deposit &amp; Payment Services with effect from 1 April 2009.|Bank Islam Al-Awfar Savings Ac count-i and |Investment Account-i. Deposit RM100 and you | may get RM100,000! |To find out more,please visit our branch or |contact our Call Centre at 03- 26 900 900.");

        // headerMap.put("monthlyAverage", "10.00-");

        // headerMap.put("noOfDebit", ".00");
        // headerMap.put("amountOfDebit", ".00");
        // headerMap.put("noOfCredit", ".00");
        // headerMap.put("amountOfCredit", ".00");
        // headerMap.put("accountType", "s");
        // headerMap.put("totalCheque", ".00");
        // headerMap.put("gainFlag", "n");


      
        // ctxVarsMap.put("header", headerMap);


        // Map<String, String> intefaceMap = new HashMap<>();
        // intefaceMap.put("beginningCost", "100,000.00");
        // intefaceMap.put("beginningBalance", "72 JALAN RUSA");
        // ctxVarsMap.put("interface", intefaceMap);
        // ctxVarsMap.put("statementDate", "02/12/2023");
        

        // Map<String, String> accountDtoMap = new HashMap<>();
        // accountDtoMap.put("description", "BAL B/F");
        // accountDtoMap.put("runningBalance", "18,547.86");
        // ctxVarsMap.put("accountDto",accountDtoMap);


        // ctxVarsMap.put("bankIslamLogo",
        // "data:image/png;base64,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");
        // ctxVarsMap.put("statementLogo",
        // "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANMAAABRCAYAAABIf5MKAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAqrSURBVHhe7Z3fbxXHFcePr39e/yT4JzWqg4MaopQ4oi0UpY0iOYHKUmV4qclLSFQpVZ5S1S/2X2C/OGqkSkiRqqRRpZaHCvxiFRIk1FY1oW2KSyUoooDbGOOfGBv7+rc7Z3bWd3bu3r17745Njb4fabQ769nd2bvnO3PO7Ow6L77vpQ0CAEQmppYAgIhATABYAmICwBIQEwCWgJgAsATEBIAlICYALAExAWAJiAkAS0BMAFgCYgLAEhATAJaAmACwBMQEgCUgJgAsATEBYAmICQBLQEwAWAJiAsASEBMAloCYALBE5K8TFVblU3F1IRXXFFBJQyHFG4po9fEaJR6s0NK4SFMiTa7S+kr2p4kV5snjyuPX8bELqaA8Xxx7mRb5+OK4fPyVR2tqDwCeHDmLKVaUR3Xfr6TKF+JqS3pYXA+vLYg0r7Zk5pmXy0QqleLJxOyNBI3/cZbWl/HVMvDkyElMZV8vprrXKqmwMrOh63Bv8tX5aVpfTX/KWEEe7T2xW/Zy2bAyu0bjl2dp/j9LagsA2bGxtqKWqzLRxrrMU16M8vILZJLZfH/bzFpM1YfLZYrCv385TmsJVVGN/HiMnvtxncrlxtTVxzIBkC0spo3VZZGEkHzIKxCCKiiyJybGFBTHLPPDSzR7KyFcunXp1sUbi6hExDmVB+Ii5nEU7bI0uULDv51SuSRNp6pFjOSt6NLUKs3eTNCiiL8SI8tqK1H5cyVU3lxMlc8n3UwICURhfTlBGytJG/Mjr7BIhDj+oU3OMROLqeqbpfTonwsZDXj3t8qo5miFyjmM/2GWZv6xoHJEu14qpbpXK1XOYXJwjqb/FhxncczGdeG4aWcKqY1+80UPtdeqLN2kD5s7qFvlotDTP0TvH1QZwdBHLXS0V2WeFk5+QHf7WqleZen6p1Ta3qcy2bGWmBOKSvWYPMRiwoPy2rJLzkPjbLijv58JZcAsCLMcCye+p0iu89IUEpfPJCSGRRS2HhnpOksLd4Z8090zbarQToAF6hXSdtBx5pLvb8dpsEsV+n/GjZGCCCgT6TlT4n5wl6jDxr487fVFq150ukt36cLlshHH4pgTOOYMt2580989oDbsbDrOdGo93TagGqGPj9eoDTuUMD5aQJltfWg7ecUrkNK9Ts/kLl3McluK6SY8Bbz8Na9Rs3tX2rxFLh4L6SlphKKyrWLih61ri8lukp8hldQ7D2Jd+O9cbrvoedsU0iT1dzrG56Z3Lkyqv+1EbtLlLYuThDt50hQSx3ze3+/D6+pPTzmhByCqv1MuSqtMBHiEr+zZYpVz3D99ZHD+3pIcuYuMuKqpv2To4VJ6JRZSK715TmUD6aTBO29Ri8oxYxe6ad97AyqXxBwIoIlL9M6Rn9FZmUkzAGG2+No+HJukuFQceH/SGNDLeq8tpU6MGbwbdeDr6xLXzeeW1zp82uiVshg88fEIfAdIMpUz/66uwby+5L1JvW/ub/OjXz9S+WDyy6rUmpfQPVP1EWc4PGrShcSUNRl58Xe//bJOor4Zeb7Ra3jXB4SxOcG7GUBz2gyiZYxg3hCi+uM9tPDFB9Sh8s6N8zHa2lb6+M4l0aqrfApmiy9udq8jJDaSaLFJmjoxB98S1xVQr0OOkFw6mrz1GLvwKyEk5/ipv1/yuHKgwkf0Le+Kcv2dKhe+XApCYKeMxquLhcTC87lvtggtprWlECMdOcBu3lYQpr6mMYRDGIveGnNL2NxN/RMqL4TyUyW6nn79xjnuT9JlrKH2t9MYRNdp7wCCFLlYGkbCra10pTov0ZjaFgw3FJmMSdSrS28QktTXen8vMzYLhbiGXk2QzjV8SkMqTwe5IRHLsOV8MF33oXOqIfJsT7qjttzQ0GJaHLXgem0jYep7djiHWKjrsMcYhwbZLRqgew+cPNNylEXSSa/preP1q9L98Zzz4GHqUatJauiUp1cSN911vc6NkHYapycUrf7dY5/TPi4jjGZfinG4RsMu3gv0rC5Sdh3l37TGgKltoRO+hpo0QHaZrt3P/vfrONaiGfQkXbnIrtcNurd5/hr67rG20OVSaGjz9kqisXNdQm99D9D7sscUMmsP69oHE1pMiVHvoMB/fzdFt37xIKs0enFG7Z2Et5vcH5hJ2TdT4vromPX15V8j3hZdGrfoBY44BuM38GD2ZtLlEDclxW062UgNalUiXShRNuPIV43oAdQqMzFC19QqUR9d9mlFU93LNJh1ejCi4rYBOv9lZmE4blwSszGqP/S6qEMfHVWC82vxvb2Z6AX7+PfTY0aHsOVSEL2n3iuN3b+h1kR9Lw759OCOqKQLH2ZMIKBM+J7JeJbD04SypfYV74PZx3cWPUuXulcr1Fp4zPqEevZktPTyhw1jlFuKaP0/uqnWBZrbyHS3s6Fq7o5L2t5Ew7zehkZ1rW104pC3kQiF2RhxLBgUy2wHoifSRVx//HSy91c9t18jKb2JvBByCCgTWkw8R06n6sVSKm8uUbnM8EzwgjLv6R7+3ZlO5C5deKicy4eF68H10THr649oRXXDZeTggNPb+AX6Zuu2GbfIJIycXSfpcn1OV3TXadOlclttHkFKM/LVe9UjlhYRP0ij5wBail21/mbdM6K7SYLNazVa/IkhOh/G7RHG2WUaptsDi+Q3yNE96K2z+wxMJo79hBjYhQxbzg/vvgfolJq9woM33AOdfa9VHMdwbQXurPAggsqEFhPP8p7485zKOdS+UpGxh+IX/Bpaq1IezPLcPNcV4yXndbg878f7B8Hn53rocD39ZqX70tuR3XMkw4DcuMVJenAv3MVebWBAE2k6Q0tiuHNi3153OpN+HM/QeRgBGHXyJTlyGAY2zKwCePF76+VdN1kmfeQubDk/jMao/njn5mBF8jjeBoRjX/maRUF6schZ4zbExDz80jtXjt+ybXi9ihp/+IycqMozxdn4eTv3FrsPlVHTmzUpLxDyrHF9kivDed6uw/vx/nwcPh4fl4/P5+Hz8Xn5/Lxdx6xnJpyWKmBUR/UqbiAry6cbQduMQwTSrUhtAR0m6V6A8Xd/4j2+x10xkL3j5nOrDPgOUijkyGT2wbjjeqa7ToFxXFk+Ta+qxzhhy6XSRz/3NJABI6dqUMW9t/IVi0LR8MeENLgd5yTWeRv/LYisZ41X7C+hPT/YpXK5sZXvM/Gk17nb3hgMgDC4Lwdmwur7TNwz7HmjKtQr5Tpb+aYtv0M1+tkjzztPAGTDExGTS+33KuS3GjKx1d+A4ONO/MkbzwGw3UQSE5NfGkt+naje+YIQz4tLjK7ICavyC0ITK7l/najWOTZ/9Si+Rxxb+LD85SMe+na/TrS2sDWzMwDIhshiAgA4ZDWaBwBID8QEgCUgJgAsATEBYAmICQBLQEwAWAJiAsASEBMAloCYALAExASAJSAmACwBMQFgCYgJAEtATABYAmICwBIQEwCWgJgAsATEBIAlICYALAExAWAJiAkAC8R3NUFMANhg75GfQEwARIV7pZpvtEFMAESlev8bcgkxARCRir3flkuICYCIlO3eL5cQEwARKYg7/+USYgLAEhATABFZTUzLJcQEQETmp2/LJcQEQETmvvqrXEJMAERk6vZncgkxARCRxMwwTd4awH8OBMAGmOgKgCUSM8P0PwaQ7KGLxOfAAAAAAElFTkSuQmCC");
        
        // ctxVarsMap.put("contextVariables", ctxVarsMap);

        // List<Map<String, Object>> rows = new ArrayList<>();
        // Map<String, Object> row1 = new HashMap<>();
        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM FN PAYMENT THRU CDMFN PAYMENT THRU CDMFN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM FN PAYMENT THRU CDMFN PAYMENT THRU CDMFN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);

        // row1.put("trxDate", "12/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM FN PAYMENT THRU CDMFN PAYMENT THRU CDMFN PAYMENT THRU CDM");
        // row1.put("transactionAmountForDebit", ".00");
        // row1.put("transactionAmountForCredit", "720.00");
        // row1.put("beginningCost", "58,801.25");
        // row1.put("runningBalance", "70,249.86");
        // rows.add(row1);
        // ctxVarsMap.put("statements", rows);
        
        

        
        

        

        









        // --------------- Cashline Statement ----------------------------------------------
        // Map<String, String> headerMap = new HashMap<>();
        // headerMap.put("add1", "72 JALAN RUSA");
        // headerMap.put("add2", "TAMAN BEROLEH");
        // headerMap.put("add3", "83000");
        // headerMap.put("add4", "JOHOR");
        // headerMap.put("add5", "KUALA LUMPUR");
        // headerMap.put("poscode", "12345");
        // headerMap.put("add6", "5555");
        // headerMap.put("add7", "5555");
        // headerMap.put("statementDate", "5555");
        // headerMap.put("customerAccountNumber", "5555");
        // headerMap.put("branch", "5555");
        // headerMap.put("year", "5555");
        // headerMap.put("productType", "5555");
        // headerMap.put("bankSalePrice", "5555");
        // headerMap.put("facilityLimit", "561665656566");
        // headerMap.put("maturityDate", "5555");
        // headerMap.put("outstandingBankSalePrice", "5555");
        // headerMap.put("utilizedAmount", "5555");
        // headerMap.put("unutilizedAmount", "5555");
        // headerMap.put("currentMonthProfitCharge", "5555");
        // headerMap.put("overdueChargesProfitCharge", "5555");
        // headerMap.put("currentMonthTawidhCharge", "5555");
        // headerMap.put("overdueChargesTawidhCharge", "5555");
        // headerMap.put("currentMonthTemporaryExcess", "5555");
        // headerMap.put("overdueChargesTemporaryExcess", "5555");
        // headerMap.put("currenMonthTemporaryExcessFee", "5555");
        // headerMap.put("currentMonthTawidhChargeOnTemporaryExcess", "5555");
        // headerMap.put("currentMonthMiscellaneousCost", "5555");
        // headerMap.put("overdueChargesMiscellaneousCost", "5555");
        // headerMap.put("currentMonthOtherCharges", "5555");
        // headerMap.put("overdueChargesOtherCharges", "5555");
        // headerMap.put("currentMonthPaymentDueOnUtilizationUponMaturity", "5555");
        // headerMap.put("overdueChargesPaymentDueOnUtilizationUponMaturity", "5555");
        // headerMap.put("currentMonthTotal", "5555");
        // headerMap.put("overdueChargesTotal", "5555");
        // headerMap.put("numberOfDebits", "5555");
        // headerMap.put("amountOfDebits", "5555");
        // headerMap.put("numberOfCredits", "5555");
        // headerMap.put("amountOfCredits", "5555");
        // headerMap.put("totalChequeInFloat", "5555");
        // headerMap.put("monthlyAverage", "5555");
        // headerMap.put("iaProductFlag", "N");
        // ctxVarsMap.put("header", headerMap);

        // ctxVarsMap.put("customerNameWithoutTitle", "SYED ALI BIN SYED ABDUL KADIR");
        // ctxVarsMap.put("year", "2000");
        // ctxVarsMap.put("trxDate", "5/01/2025");
        // ctxVarsMap.put("description", "Previous Balance");
        // ctxVarsMap.put("debit", ".00");
        // ctxVarsMap.put("credit", ".00");
        // ctxVarsMap.put("beginningCost", "63,000.00");
        // ctxVarsMap.put("beginningBalance", "76,891.50");
        // ctxVarsMap.put("name", "2000");
        // ctxVarsMap.put("bankIslamLogo",
        //         "data:image/png;base64,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");
        // ctxVarsMap.put("statementLogo",
        //         "data:image/png;base64,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");
        // ctxVarsMap.put("excessBalanceFlag", "N");
        // ctxVarsMap.put("overduePaymentFlag", "N");
        // ctxVarsMap.put("maturedFlag", "Y");
        // ctxVarsMap.put("totalMessages", "To find out more.please visit our branch or contact our call centre at 03-26 900 900");
        // ctxVarsMap.put("contextVariables", ctxVarsMap);


        // Map<String, String> accountMap = new HashMap<>();
        // accountMap.put("description", "SYED ALI BIN SYED ABDUL KADIR");
        // accountMap.put("runningBalance", "72 JALAN RUSA");
        // ctxVarsMap.put("accountDto", accountMap);


        // List<Map<String, Object>> rows = new ArrayList<>();
        // Map<String, Object> row1 = new HashMap<>();
        // row1.put("transactionDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("runningBalance", "58,801.25");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("runningBalance", "58,801.25");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("runningBalance", "58,801.25");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);
        
        // row1.put("transactionDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("runningBalance", "58,801.25");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("runningBalance", "58,801.25");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("runningBalance", "58,801.25");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);

        // row1.put("transactionDate", "2/10/2023");
        // row1.put("description", "FN PAYMENT THRU CDM");
        // row1.put("debitAmount", ".00");
        // row1.put("creditAmount", "720.00");
        // row1.put("runningBalance", "58,801.25");
        // rows.add(row1);
        // ctxVarsMap.put("transactions", rows);




        //============================ DROP 3 ===================================================

        Map<String, String> headerMap = new HashMap<>();
        headerMap.put("customerName", "SYED ALI BIN SYED ABDUL KADIR");
        headerMap.put("add1", "72 JALAN RUSA");
        headerMap.put("add2", "TAMAN BEROLEH");
        headerMap.put("add3", "83000");
        headerMap.put("add4", "JOHOR");
        headerMap.put("add5", "KUALA LUMPUR");
        headerMap.put("poscode", "12345");
        headerMap.put("add6", "5555");
        headerMap.put("add7", "5555");
        headerMap.put("date", "5555");
        headerMap.put("branchName", "SRI GOMBAK");
        headerMap.put("customerAccountNumber", "12345678910121212131");
        headerMap.put("year", "5555");
        headerMap.put("productType", "5555");
        headerMap.put("productTypeDescription", "5555");
        headerMap.put("financingAmount", "561665656566");
        headerMap.put("outstandingBankSalePrice", "5555");
        headerMap.put("financingPayableAmount", "5555");
        headerMap.put("advancePaymentAmount", "5555");
        headerMap.put("bankSalesPrice", "5555");
        headerMap.put("outstandingTawidhCharges", "5555");
        headerMap.put("outstandingMiscCost", "5555");
        headerMap.put("outstandingOtherCharges", "5555");
        headerMap.put("balance", "5555");
        headerMap.put("bulletFlag", "");
        headerMap.put("amortized", "5555");
        headerMap.put("residualValue", "5555");
        headerMap.put("message", "Pay off your outstanding credit card bills faster and |easier with Personal Financing-i. Quick cash of up to |RM150,000 at a low rate of 5.1% per annum.|Bank Islam will revise its service charges for Consumer |Deposit &amp; Payment Services with effect from 1 April 2009.|Bank Islam Al-Awfar Savings Ac count-i and |Investment Account-i. Deposit RM100 and you | may get RM100,000! |To find out more,please visit our branch or |contact our Call Centre at 03- 26 900 900.");

        headerMap.put("monthlyAverage", "10.00-");

        headerMap.put("noOfDebit", ".00");
        headerMap.put("amountOfDebit", ".00");
        headerMap.put("noOfCredit", ".00");
        headerMap.put("amountOfCredit", ".00");
        headerMap.put("accountType", "s");
        headerMap.put("totalCheque", ".00");
        headerMap.put("gainFlag", "n");


      
        ctxVarsMap.put("header", headerMap);


        Map<String, String> intefaceMap = new HashMap<>();
        intefaceMap.put("beginningCost", "100,000.00");
        intefaceMap.put("beginningBalance", "72 JALAN RUSA");
        ctxVarsMap.put("interface", intefaceMap);
        ctxVarsMap.put("statementDate", "02/12/2023");
        

        Map<String, String> accountDtoMap = new HashMap<>();
        accountDtoMap.put("description", "BAL B/F");
        accountDtoMap.put("runningBalance", "18,547.86");
        ctxVarsMap.put("accountDto",accountDtoMap);


        ctxVarsMap.put("bankIslamLogo",
        "data:image/png;base64,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");
        ctxVarsMap.put("statementLogo",
        "data:image/png;base64,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");
        
        ctxVarsMap.put("contextVariables", ctxVarsMap);

        List<Map<String, Object>> rows = new ArrayList<>();
        Map<String, Object> row1 = new HashMap<>();
        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

        row1.put("trxDate", "2/10/2023");
        row1.put("description", "FN PAYMENT THRU CDM");
        row1.put("transactionAmountForDebit", ".00");
        row1.put("transactionAmountForCredit", "720.00");
        row1.put("beginningCost", "58,801.25");
        row1.put("runningBalance", "70,249.86");
        rows.add(row1);
        ctxVarsMap.put("statements", rows);

     

       

     

      

        

        
       

        

       

       

       

       

      

        

       

       

       

        

        


        return ctxVarsMap;
    }
}
