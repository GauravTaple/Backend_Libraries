package com.batch.example.batch;

import org.springframework.batch.item.Chunk;
import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;

import com.batch.example.entity.BookEntity1;
import com.batch.example.repository.BookRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class BookWriter implements ItemWriter<BookEntity1>{
	
	@Autowired
	public BookRepository bookRepository;
	
	@Override
	public void write(Chunk<? extends BookEntity1> chunk) throws Exception {
		log.info("Writing:{}",chunk.getItems().size());
		bookRepository.saveAll(chunk.getItems());
		
	}

}
