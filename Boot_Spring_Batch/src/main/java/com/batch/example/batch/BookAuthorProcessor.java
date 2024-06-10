package com.batch.example.batch;

import org.springframework.batch.item.ItemProcessor;

import com.batch.example.entity.BookEntity;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class BookAuthorProcessor implements ItemProcessor<BookEntity, BookEntity>{@Override
	public BookEntity process(BookEntity item) throws Exception {
	log.info("processing author:{}",item);
	item.setAuthor("By"+item.getAuthor());
	return item;
	}

}
