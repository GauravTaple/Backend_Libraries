package com.reldyn.jasperreport.entity;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
public class User {
	
	private int id;
	
	private String fname;
	
	private String lname;
	
	private int age;
	
	private double salary;
	
	private String email; 
}
