package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.dto.TransactionDto;

@Repository
public interface TransactionDtoRepository extends JpaRepository<TransactionDto,Long > {

}
