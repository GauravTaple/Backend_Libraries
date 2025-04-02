package com.batch.example.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Emails {
	
	@Id
	private String id;
	private String email;
	private String name;

}
