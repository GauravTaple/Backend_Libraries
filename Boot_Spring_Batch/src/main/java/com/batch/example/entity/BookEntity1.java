package com.batch.example.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "book_table")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class BookEntity1 {
	@Id
	private String no;
	private String date;
	private String cardNo;
	private String acNo;
	private String financing;
	private String name;
	private String amtTos;
	private String amtDue;
	private String add1;	
	private String add2;
	private String add3;
	private String add4;
	private String poskod;
	private String city;
	private String cycle;
	private String dcaName;
	private String dcaAdd1;
	private String dcaAdd2;
	private String dcaAdd3;
	private String poskod1;
	private String city1;
	private String dcaPhone;
	private String dcaFax;
	private String namaPelanggan;
	private String noKadPengenalanPelanggan;
	private String emailPelanggan;

}
