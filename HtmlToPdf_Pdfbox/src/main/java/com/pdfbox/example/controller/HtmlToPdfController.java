package com.pdfbox.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pdfbox.example.service.HtmlToPdfService;

@RestController
@RequestMapping("")
public class HtmlToPdfController {
	
	
	private final HtmlToPdfService htmlToPdfService;
	
	@Autowired
	public HtmlToPdfController(HtmlToPdfService htmlToPdfService) {
		this.htmlToPdfService = htmlToPdfService;
	}

	@GetMapping("/convert")
	public String convertHtmlToPdf() {
				try {
					htmlToPdfService.convertHtmlToPdf();
					return "Pdf successfully created at:-" ;
				} catch (Exception e) {
					e.printStackTrace();
					return "Error Occurred:" + e.getMessage();
				}
	}	
}
