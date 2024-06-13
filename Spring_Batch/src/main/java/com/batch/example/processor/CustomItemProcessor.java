package com.batch.example.processor;

import com.batch.example.model.Product;
import org.springframework.batch.item.ItemProcessor;


public class CustomItemProcessor implements ItemProcessor<Product, Product> {

	@Override
	public Product process(Product item) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
