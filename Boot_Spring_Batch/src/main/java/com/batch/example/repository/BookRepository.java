package com.batch.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.batch.example.entity.BookEntity;

public interface BookRepository extends JpaRepository<BookEntity, Long> {

}
