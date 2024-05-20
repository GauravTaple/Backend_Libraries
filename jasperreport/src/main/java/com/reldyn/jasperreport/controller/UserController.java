package com.reldyn.jasperreport.controller;

import java.io.FileNotFoundException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reldyn.jasperreport.entity.User;
import com.reldyn.jasperreport.service.UserService;

import net.sf.jasperreports.engine.JRException;

@RestController
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/all")
	private List<User> getAllUsers(){
		return userService.getAll();
		
	}
	
	@GetMapping("/export/{format}")
	private String exportReport(@PathVariable String format) throws FileNotFoundException, JRException {
		return userService.reportFormat(format);
		
	}

}
