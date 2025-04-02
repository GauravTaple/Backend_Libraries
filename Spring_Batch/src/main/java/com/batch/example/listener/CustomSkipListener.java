package com.batch.example.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.SkipListener;
import org.springframework.stereotype.Component;

import com.batch.example.model.Product;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.SneakyThrows;

@Component
public class CustomSkipListener implements SkipListener<Product, Number> {
	Logger logger = LoggerFactory.getLogger(CustomSkipListener.class);
	
	@Override
	public void onSkipInRead(Throwable throwable) {
		logger.info("A failure on read {}",throwable.getMessage());
	}
	
	
	@SneakyThrows
	@Override
	public void onSkipInProcess(Product item, Throwable throwable) {
		logger.info("item was skipped due to exception {}",new ObjectMapper().writeValueAsString(item),throwable.getMessage());
	}
	
	
	@Override
	public void onSkipInWrite(Number item, Throwable throwable) {
		logger.info("A failure on write {}",throwable.getMessage(),item);
		
	}

}
	