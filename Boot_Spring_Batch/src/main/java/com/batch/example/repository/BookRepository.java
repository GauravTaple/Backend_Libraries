package com.batch.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.batch.example.entity.BookEntity1;

public interface BookRepository extends JpaRepository<BookEntity1, String> {

}
