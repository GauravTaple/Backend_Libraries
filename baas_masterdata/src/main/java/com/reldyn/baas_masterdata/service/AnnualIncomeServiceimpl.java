package com.reldyn.baas_masterdata.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reldyn.baas_masterdata.dto.AnnualIncomeDto;
import com.reldyn.baas_masterdata.entities.AnnualIncome;
import com.reldyn.baas_masterdata.repository.AnnualIncomeRepository;

@Service
public class AnnualIncomeServiceimpl implements AnnualIncomeService {

	@Autowired
	private AnnualIncomeRepository annualIncomeRepository;

	@Autowired
	private ModelMapper modelMapper;

	@Override
	public List<AnnualIncomeDto> getAll() {
		List<AnnualIncome> findAll = this.annualIncomeRepository.findAll();
		return findAll.stream().map(u -> modelMapper.map(u, AnnualIncomeDto.class)).collect(Collectors.toList());
	}

	@Override
	public AnnualIncomeDto getById(Integer id) {
		Optional<AnnualIncome> findById = this.annualIncomeRepository.findById(id);
		return this.modelMapper.map(findById, AnnualIncomeDto.class);

	}

	@Override
	public AnnualIncomeDto create(AnnualIncome annualIncome) {
		AnnualIncome save = this.annualIncomeRepository.save(annualIncome);
		return this.modelMapper.map(save, AnnualIncomeDto.class);
	}

	@Override
	public AnnualIncomeDto delete(Integer id) {
		AnnualIncome find = this.annualIncomeRepository.findById(id).orElseThrow();
		this.annualIncomeRepository.delete(find);
		return this.modelMapper.map(find, AnnualIncomeDto.class);
	}
	

	@Override
	public AnnualIncomeDto update(Integer id, AnnualIncomeDto annualIncomedto) {
		AnnualIncome annualIncome = this.annualIncomeRepository.findById(id).orElseThrow();
		annualIncome.setId(annualIncomedto.getId());
		annualIncome.setCode(annualIncomedto.getCode());
		annualIncome.setCurrency(annualIncomedto.getCurrency());
		annualIncome.setDescription(annualIncomedto.getDescription());
		annualIncome.setIncome(annualIncomedto.getIncome());
		annualIncome.setOrdering(annualIncomedto.getOrdering());
		return this.modelMapper.map(annualIncome, AnnualIncomeDto.class);
	}
}
