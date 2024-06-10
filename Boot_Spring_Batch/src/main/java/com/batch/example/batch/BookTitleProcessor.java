package com.batch.example.batch;

import org.springframework.batch.item.ItemProcessor;

import com.batch.example.entity.BookEntity;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class BookTitleProcessor implements ItemProcessor<BookEntity, BookEntity>{
	@Override
	public BookEntity process(BookEntity item) throws Exception {
		log.info("processing title for:{}",item);
		item.setTitle(item.getTitle().toUpperCase());
		return item;
	}

}
