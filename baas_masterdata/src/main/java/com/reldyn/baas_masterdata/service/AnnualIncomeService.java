package com.reldyn.baas_masterdata.service;

import java.util.List;
import java.util.Optional;

import com.reldyn.baas_masterdata.dto.AnnualIncomeDto;
import com.reldyn.baas_masterdata.entities.AnnualIncome;

public interface AnnualIncomeService {
	
	 public AnnualIncomeDto create(AnnualIncome annualIncome);
	
	 public List<AnnualIncomeDto> getAll();
	
	 public AnnualIncomeDto getById(Integer id);
	
	 public AnnualIncomeDto update(Integer id,AnnualIncomeDto annualIncomedto);
	 
	 public AnnualIncomeDto delete(Integer id);
	 
	

}
