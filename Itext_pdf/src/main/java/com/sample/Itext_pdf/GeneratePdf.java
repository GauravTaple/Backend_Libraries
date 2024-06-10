package com.sample.Itext_pdf;

import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

import com.itextpdf.io.image.ImageData;
import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.kernel.color.Color;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.border.Border;
import com.itextpdf.layout.border.DashedBorder;
import com.itextpdf.layout.border.SolidBorder;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Image;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.property.TextAlignment;

public class GeneratePdf  {

	public static void main(String[] args) throws FileNotFoundException, MalformedURLException {
		// Create file with path using predefined classes.
		String path= "invoice.pdf";	
		PdfWriter pw = new PdfWriter(path);
		PdfDocument pd = new PdfDocument(pw);
		pd.setDefaultPageSize(PageSize.A5);
		
		// upload watermark image in page.
		Document document = new Document(pd);
		String imagePath = "/home/gaurav/IDE/sts-workspace/Itext_pdf/src/main/java/com/sample/Itext_pdf/images.png";
		ImageData imageData=ImageDataFactory.create(imagePath);
		Image image = new Image(imageData);
		
		float x= pd.getDefaultPageSize().getWidth()/2;
		float y= pd.getDefaultPageSize().getHeight()/2;
		image.setFixedPosition(x-100, y-170);
		image.setOpacity(0.2f);
		document.add(image);
		
		float col1 = 385f;
		float col2 = col1+ 150f;
		float twoCols[]= {col2,col1};
		float threeCol = 150f;
		float fullWidth[]= {threeCol*3};
		Paragraph space = new Paragraph("\n");
		float threeColWidth[]= {col1,col1,col1};
		float totalColWidth[]= {col1+240f,col1,col1};
		
		// create table structure using table class
		Table table = new Table(twoCols);
		table.addCell(new Cell().add("INVOICE").setFontSize(20f).setBorder(Border.NO_BORDER).setBold());
		
		Table nestedTable = new Table(new float[]{col1/2,col1/2});
		nestedTable.addCell(getHeaderTextCell("Invoice No:-"));
		nestedTable.addCell(getHeaderTextCellValue("RK484854"));
		nestedTable.addCell(getHeaderTextCell("Invoice Date:-"));
		nestedTable.addCell(getHeaderTextCellValue("07/04/2024"));
		table.addCell(new Cell().add(nestedTable).setBorder(Border.NO_BORDER));
		
		// Given SolidBorder
		Border gb= new SolidBorder(Color.GRAY, 2f);
		Table divider = new Table(fullWidth);
		divider.setBorder(gb).setMarginBottom(1f);
		document.add(table);
		document.add(divider);
		
		Table twoColTable = new Table(twoCols);
		twoColTable.addCell(getBillingAndShippingCell("Billing Information"));
		twoColTable.addCell(getBillingAndShippingCell("Shipping Information"));
		document.add(twoColTable.setMarginBottom(12f));
		
		Table twoColTable2 = new Table(twoCols);
		twoColTable2.addCell(getCell10fLeft("Company",true));
		twoColTable2.addCell(getCell10fLeft("Name",true));
		twoColTable2.addCell(getCell10fLeft("Reldyn Tech",false));
		twoColTable2.addCell(getCell10fLeft("Gaurav Taple",false));
		document.add(twoColTable2);
		document.add(space);
		
		// Given DashedBorder
		Table divider2 = new Table(fullWidth);
		Border dgb = new DashedBorder(Color.GRAY,1f);
		document.add(divider2.setBorder(dgb).setMarginBottom(5f));
		
		// Given paragraph
		Paragraph para= new Paragraph("products");
		document.add(para.setBold());
		
		// Made table for 
		Table threeTable1 = new Table(threeColWidth);
		threeTable1.setBackgroundColor(Color.BLACK,1f);
		threeTable1.addCell(new Cell().add("Description").setFontColor(Color.WHITE).setBorder(Border.NO_BORDER).setBold());
		threeTable1.addCell(new Cell().add("Quantity").setFontColor(Color.WHITE).setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.CENTER).setBold());
		threeTable1.addCell(new Cell().add("Price").setFontColor(Color.WHITE).setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.RIGHT).setBold());
		document.add(threeTable1);
		
		List<Product> list= new ArrayList<Product>();
		list.add(new Product("apple", 1, 159));
		list.add(new Product("mango", 2, 100));
		list.add(new Product("watermelon", 3, 40));
		list.add(new Product("melon", 4, 50));
		list.add(new Product("grapes", 5, 60));
		list.add(new Product("cherry", 6, 70));
		list.add(new Product("coconut", 7, 80));
		list.add(new Product("kiwi", 8, 90));
		
		Table threeColTable2 = new Table(threeColWidth);
		
		float totalSum=0f;
		float totalQuant=0f;
		for(Product product:list) {
			float total = product.getQuantity()*product.getPricePerPiece();
			float totalQuantity = product.getQuantity()+totalQuant;
			totalSum += total;
			totalQuant = totalQuantity;
			threeColTable2.addCell(new Cell().add(product.getPname()).setBorder(Border.NO_BORDER)).setMarginLeft(10f);
			threeColTable2.addCell(new Cell().add(String.valueOf(product.getQuantity())).setTextAlignment(TextAlignment.CENTER).setBorder(Border.NO_BORDER)).setMarginLeft(10f);
			threeColTable2.addCell(new Cell().add(String.valueOf(product.getPricePerPiece())).setTextAlignment(TextAlignment.RIGHT).setBorder(Border.NO_BORDER)).setMarginLeft(10f);
		}
		document.add(threeColTable2.setMarginBottom(2f));
		float onetwo[]= fullWidth;
		Table threeColTable4 = new Table(onetwo);
		threeColTable4.addCell(new Cell().add("").setBorder(Border.NO_BORDER));
		threeColTable4.addCell(divider2.setBorder(Border.NO_BORDER));
		document.add(threeColTable4);
		
		Table threeColTable3 = new Table(totalColWidth);
		threeColTable3.addCell(new Cell().add("Total").setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.LEFT)).setMarginLeft(10f);
		threeColTable3.addCell(new Cell().add(String.valueOf(totalQuant)).setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.CENTER));
		threeColTable3.addCell(new Cell().add(String.valueOf(totalSum)).setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.RIGHT));
		document.add(threeColTable3);
		document.add(divider2);
		document.add(divider2.setBorder(dgb));
		document.add(divider.setBorder(new SolidBorder(Color.GRAY,1)).setMarginTop(5f));
		
		Table tb= new Table(fullWidth);
		tb.addCell(new Cell().add("Terms And Conditions :\n").setBold().setBorder(Border.NO_BORDER)); 
		List<String> TncList= new ArrayList<String>();
		TncList.add("1.Protect your account and password; don't share them.");
		TncList.add("2.Contact us for questions about these Terms and Conditions.");
		for (String tnc : TncList) {
			tb.addCell(new Cell().add(tnc).setBorder(Border.NO_BORDER));
		}
		document.add(tb);
			
// --------- Add one more page using AreabBreak --------------- 
//		AreaBreak aB = new AreaBreak();
//		document.add(aB);

// --------- Add paragraph content ----------------------------
//		document.add(new Paragraph("Hii This Is My First Pdf...!!!"));
		
// --------- Add elements into the list -----------------------
//		  List list = new List();  
//	      list.add("Java");       
//	      list.add("JavaFX");      
//	      list.add("Apache Tika");       
//	      list.add("OpenCV");       
//	      list.add("WebGL");       
//	      list.add("Coffee Script");       
//	      list.add("Java RMI");       
//	      list.add("Apache Pig"); 
//	      document.add(list);
	      
		document.close();
		System.out.println("Pdf is created...!!!");

	}
	
	// ----------------------------------------------------------------------------------------------------------
	
	static Cell getHeaderTextCell(String textValue) {
		return new Cell().add(textValue).setBold().setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.LEFT);
		
	}
	
	// ----------------------------------------------------------------------------------------------------------
	static Cell getHeaderTextCellValue(String textValue) {
		return new Cell().add(textValue).setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.LEFT);
		
	}
	
	// ----------------------------------------------------------------------------------------------------------
	static Cell getBillingAndShippingCell(String textValue) {
		return new Cell().add(textValue).setFontSize(12f).setBold().setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.LEFT);
		
	}
	
	// ----------------------------------------------------------------------------------------------------------
	static Cell getCell10fLeft(String textValue,Boolean isBold) {
		Cell myCell = new Cell().add(textValue).setFontSize(10f).setBorder(Border.NO_BORDER).setTextAlignment(TextAlignment.LEFT);
		return isBold ? myCell.setBold():myCell;
	}

}

// ===============================================================================================================================================================================

class Product{
	private String pname;
	private int quantity;
	private float pricePerPiece;
	
	public Product(String pname, int quantity, float pricePerPiece) {
		super();
		this.pname = pname;
		this.quantity = quantity;
		this.pricePerPiece = pricePerPiece;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getPricePerPiece() {
		return pricePerPiece;
	}

	public void setPricePerPiece(float pricePerPiece) {
		this.pricePerPiece = pricePerPiece;
	}
}