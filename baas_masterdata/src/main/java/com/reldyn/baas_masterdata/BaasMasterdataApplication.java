package com.reldyn.baas_masterdata;

import org.modelmapper.ModelMapper;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class BaasMasterdataApplication {

	public static void main(String[] args)
	{
		SpringApplication.run(BaasMasterdataApplication.class, args);
	}
	
	
	@Bean
	public ModelMapper modelMapper()
	{
		return new ModelMapper();
	}

}
