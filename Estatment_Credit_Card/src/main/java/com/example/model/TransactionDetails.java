package com.example.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
@Entity
public class TransactionDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String statementNo;
	private String sequenceNo;
	private String lineSeqNo;
	private String textLetterKey;
	private String stmtRecordType;
	private String entryDate;
	private String transactionDate;
	private String formType;
	private String text;
	private String transAmount;
	private String defaultSign1;
	private String currencyCode;
	private String cardNumber;
	private String customerNumber;
	private String processingDate;
	private String latestDueDate;
	private String amountDue;
	private String defaultSign2;
	private String transactionCodeGroup;
	private String balanceBroughtForward;
	private String defaultSign3;
	private String debitAmount;
	private String defaultSign4;
	private String creditAmount;
	private String defaultSign5;
	private String totalPftChargeAmount;
	private String defaultSign6;
	private String balanceCarriedForward;
	private String defaultSign7;
	private String capitalisedProfit;
	private String defaultSign8;
	private String acquirerReferenceNumber;
	private String ficheReference;
	private String merchantId;
	private String terminalId;
	private String terminalBatchNo;
	private String lineSpaceBefore;
	private String lineSpaceAfter;
	private String embossingName;
	private String postCode;
	private String city;
	private String countryCode;
	private String secondEmbossingName;
	private String pickUpCode;
	private String multiCurrency;
	private String productId;
	private String description;
	private String productType;
	private String emailAddress;
	private String senderName;
	private String recipientReference;
	private String otherPaymentDetails;
	private String dateTime;
}
