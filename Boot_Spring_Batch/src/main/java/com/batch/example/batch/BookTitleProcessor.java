package com.batch.example.batch;

import org.springframework.batch.item.ItemProcessor;

import com.batch.example.entity.BookEntity1;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class BookTitleProcessor implements ItemProcessor<BookEntity1, BookEntity1>{
	@Override
	public BookEntity1 process(BookEntity1 item) throws Exception {
		log.info("processing title for:{}",item);
		item.setAmtDue(item.getAmtDue().toUpperCase());
		return item;
	}

}
