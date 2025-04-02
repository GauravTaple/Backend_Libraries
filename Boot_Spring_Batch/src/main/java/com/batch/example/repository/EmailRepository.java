package com.batch.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.batch.example.entity.Emails;

public interface EmailRepository extends JpaRepository<Emails, String> {

}
