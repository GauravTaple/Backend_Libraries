package com.reldyn.baas_masterdata.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AnnualIncomeDto {
	
	private int id;
	
	private String code;
	
	private String description;
	
	private Integer ordering;
	
	private String currency;
	
	private Double income;
	
	private Boolean active;

}
