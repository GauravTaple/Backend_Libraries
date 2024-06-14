package com.batch.example.processor;

import com.batch.example.model.Product;

import lombok.SneakyThrows;

import org.springframework.batch.item.ItemProcessor;


public class CustomItemProcessor implements ItemProcessor<Product, Product> {

	@SneakyThrows
	@Override
	public Product process(Product item) throws Exception {
			int discountPr = Integer.parseInt(item.getDiscount());
			double originalPr = Double.parseDouble(item.getPrice());
			double discount = (discountPr/100.0) * originalPr;
			double finalPrice = originalPr - discount ;
			item.setDiscountPrice(String.valueOf(finalPrice));
			return item;
	}

}
