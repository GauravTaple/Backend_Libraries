package com.reldyn.baas_masterdata.entities;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@EntityListeners(AuditingEntityListener.class)
@Entity
@Table(name="annual_incomes")
public class AnnualIncome {
	
	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid",strategy ="uuid2" )
	private int id;
	
	@Column(name="code",nullable = false)
	private String code;
	
	@Column(name="description")
	private String description;
	
	@Column(name="ordering")
	private Integer ordering;
	
	@Column(name="income")
	private Double income;
	
	@Column(name="currency")
	private String currency;
	
	@Column(name="active")
	private Boolean active=Boolean.TRUE;

}
