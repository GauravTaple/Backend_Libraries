package com.reldyn.baas_masterdata.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.reldyn.baas_masterdata.entities.AnnualIncome;

@Repository
public interface AnnualIncomeRepository extends JpaRepository<AnnualIncome, Integer>  {
	
}
