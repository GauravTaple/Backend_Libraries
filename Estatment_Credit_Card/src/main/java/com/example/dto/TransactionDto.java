package com.example.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class TransactionDto {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; 
	private String chInfo;
	private String msg;
	private String alWadiahAcNo;
	private String baiAlInahAcNo;
	private String prevBalance;
	private String finacingLimit;
	private String txnDetails;
	private String subTotal;
	private String profitDetails;
	private String creditLimit;
	private String minDue;
	private String reminder;
	private String promo;
	private String paymentAdvice;
	private String paymentDetails;
	private String profitForMinAmount;
	private String profitForMinFixedAmount;
	private String saveProfitAmount;
	private String totalCreditUtilized;
	private String totalProfitCharges;
	private String totalFeeAndChargesImposed;
	private String rebateInfo;
	private String bonusPointDetails;
	private String soaPassDetails;
	private String summaryOfInstallment;
	private String trailer1;
	private String trailer2;
	private String trailer3;

}
