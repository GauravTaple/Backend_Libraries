package com.pdfbox.example.service;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.graphics.image.PDImageXObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;
import com.steadystate.css.dom.CSSStyleDeclarationImpl;

@Service
public class HtmlToPdfServiceImpl implements HtmlToPdfService {

    public void convertHtmlToPdf() throws Exception {
        try (PDDocument document = new PDDocument()) {
            PDPage page = new PDPage();
            document.addPage(page);
            PDPageContentStream contentStream = new PDPageContentStream(document, page);

            // Load your HTML document
            File htmlFile = new File("/home/gaurav/IDE/sts-workspace/HtmlToPdf_Pdfbox/src/main/resources/static/BicReminderCL01.html");
            Document doc = Jsoup.parse(htmlFile, "UTF-8");

            // Load and parse CSS
            File cssFile = new File("/home/gaurav/IDE/sts-workspace/HtmlToPdf_Pdfbox/src/main/resources/static/BicReminder.css");
            Map<String, CSSStyleDeclarationImpl> styles = CSSUtils.parseCSS(cssFile);

            // Set initial Y position and line height
            float yPosition = 750;
            float lineHeight = 15;

            // Set default font and font size
            contentStream.setFont(PDType1Font.TIMES_ROMAN, 12);

            // Parse and draw the text and images from HTML
            Elements divs = doc.select("div");
            for (Element div : divs) {
                // Apply styles if any
                applyStyles(contentStream, div, styles);

                Elements paragraphs = div.select("p");
                for (Element paragraph : paragraphs) {
                    // Apply styles if any
                    applyStyles(contentStream, paragraph, styles);

                    String text = paragraph.text();
                    contentStream.beginText();
                    contentStream.newLineAtOffset(50, yPosition);
                    contentStream.showText(text);
                    contentStream.endText();
                    yPosition -= lineHeight;
                }

                Elements images = div.select("img");
                for (Element image : images) {
                    String src = image.attr("src");
                    File imageFile = new File(src);
                    if (imageFile.exists()) {
                        PDImageXObject pdImage = PDImageXObject.createFromFile(src, document);
                        float scale = 0.5f; // Scale image as necessary
                        contentStream.drawImage(pdImage, 50, yPosition - (pdImage.getHeight() * scale),
                                pdImage.getWidth() * scale, pdImage.getHeight() * scale);
                        yPosition -= (pdImage.getHeight() * scale) + 10; // Adjust y position after drawing image
                    }
                }
            }
            contentStream.close();
            document.save("HtmlToPdf.pdf");
            System.out.println("PDF created successfully from HTML.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void applyStyles(PDPageContentStream contentStream, Element element, Map<String, CSSStyleDeclarationImpl> styles) throws IOException {
        CSSStyleDeclarationImpl style = styles.get(element.tagName());

        if (style != null) {
            // Apply font size
            if (style.getPropertyValue("font-size") != null) {
                float fontSize = Float.parseFloat(style.getPropertyValue("font-size").replace("px", ""));
                contentStream.setFont(PDType1Font.TIMES_ROMAN, fontSize);
            }

            // Apply other styles as necessary
        }
    }
}

