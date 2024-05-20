package com.reldyn.baas_masterdata.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.reldyn.baas_masterdata.dto.AnnualIncomeDto;
import com.reldyn.baas_masterdata.entities.AnnualIncome;
import com.reldyn.baas_masterdata.service.AnnualIncomeService;

@RestController
public class AnnualIncomeController {
	
	@Autowired
	private AnnualIncomeService annualIncomeService;
	
	@GetMapping("/get")
	public List<AnnualIncomeDto> getAll()
	{
		return this.annualIncomeService.getAll();
		
	}
	
	@GetMapping("/get/{id}")
	public AnnualIncomeDto getById(@PathVariable Integer id)
	{
		return this.annualIncomeService.getById(id);
		
	}
	
	@PostMapping("/post")
	public AnnualIncomeDto create(@RequestBody AnnualIncome annualIncome)
	{
        return this.annualIncomeService.create(annualIncome);
		
	}
	
	@DeleteMapping("/delete/{id}")
	public AnnualIncomeDto delete(Integer id)
	{
		return this.annualIncomeService.delete(id);
	}
	
	
	@PutMapping("/put/{id}")
	public AnnualIncomeDto update(@PathVariable Integer id,@RequestBody AnnualIncomeDto annualIncomedto)
	{
		return this.annualIncomeService.update(id, annualIncomedto);
		
	}
	
}
