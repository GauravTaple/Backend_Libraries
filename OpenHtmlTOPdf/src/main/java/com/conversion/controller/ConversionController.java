package com.conversion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.conversion.service.ConversionService;

@RestController
@RequestMapping("/pdf-generate")
public class ConversionController {
	
   @Autowired
   private final ConversionService conversionService ;
	
	
	public ConversionController(ConversionService conversionService) {
		this.conversionService = conversionService;
	}

	@GetMapping("")
	public String convertHtmlToPdf() {
				try {
					conversionService.ConvertHtmlToPdf();
					return "Pdf successfully created at:-" ;
				} catch (Exception e) {
					e.printStackTrace();
					return "Error Occurred:" + e.getMessage();
				}
	}	
	

}
