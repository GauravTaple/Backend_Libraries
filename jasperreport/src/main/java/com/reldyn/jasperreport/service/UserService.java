package com.reldyn.jasperreport.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import com.reldyn.jasperreport.entity.User;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Service
public class UserService {

	public List<User> getAll(){
		List<User> users = new ArrayList<>();
		users.add(new User(1,"lionel","messi",25,25000,"lionel@gmail.com"));
		users.add(new User(2,"Cristiano","ronaldo",20,30000,"cristiano@gmail.com"));
		users.add(new User(3,"neymar","jr",30,35000,"neymarjr@gmail.com"));
		users.add(new User(4,"diago","rodrigues",35,40000,"diago@gmail.com"));
		users.add(new User(5,"David","bekkam",40,45000,"david@gmail.com"));
		users.add(new User(6,"kylie","mbappe",45,50000,"seth@gmail.com"));
		users.add(new User(7,"diago","maradona",50,55000,"diago@gmail.com"));
		users.add(new User(8,"karim","benzema",55,60000,"karim@gmail.com"));
		users.add(new User(9,"harry","kane",60,65000,"harry@gmail.com"));
		users.add(new User(10,"robert","lewandoski",65,70000,"robert@gmail.com"));
		users.add(new User(11,"mohammad","salah",70,75000,"mohamad@gmail.com"));
		users.add(new User(12,"luka","modric",75,80000,"luka@gmail.com"));
		users.add(new User(13,"sadio","mane",80,85000,"sadio@gmail.com"));
		users.add(new User(14,"lev","yashin",85,90000,"lev@gmail.com"));
		users.add(new User(15,"riyad","maharez",90,95000,"riyad@gmail.com"));
		users.add(new User(16,"oliver","giroud",95,100000,"oliver@gmail.com"));
		users.add(new User(17,"sunil","chettri",100,105000,"sunil@gmail.com"));
		return users; 
	}
	
	public String reportFormat(String format) throws FileNotFoundException, JRException {
		List<User> users = getAll();
		
		// path for creating file
		String path = "/home/gaurav/JasperReport";
		
		// load file and compile it
		File file = ResourceUtils.getFile("classpath:user.jrxml");
		
		// For compile the user.jrxml file
		JasperReport jasperReport =JasperCompileManager.compileReport(file.getAbsolutePath());
		
		//map the list to jasperreport we use datasource
		JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(users);
		
		//Commenting purpose
		Map<String, Object> params = new HashMap<>();
		params.put("Created", "By Gaurav");
		
		// To print the jasperReport
		JasperPrint jasperPrint =JasperFillManager.fillReport(jasperReport, null, dataSource);
		
		// In which format report is genenerated
		if(format.equalsIgnoreCase("html")) {
			JasperExportManager.exportReportToHtmlFile(jasperPrint,path + "//user.html");	
		}
        if(format.equalsIgnoreCase("pdf")) {
			JasperExportManager.exportReportToPdfFile(jasperPrint,path + "//user.pdf");
		}
        if(format.equalsIgnoreCase("xml")) {
			JasperExportManager.exportReportToXmlFile(jasperPrint, path + "//user.xml", true);
		}
		return "FILE GENERATED SUCCESSFULLY...!!!"+path;
		
	}

}
