package com.example.processor;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.stereotype.Component;

import com.example.dto.TransactionDto;
import com.example.model.TransactionDetails;

@Component
public class CustomProcessor implements ItemProcessor<TransactionDetails, TransactionDto> {

	@Override
	public TransactionDto process(TransactionDetails item) throws Exception {
		System.out.println(item+"item.....*****************************************");
		TransactionDto dto = new TransactionDto();
		if(item.getStmtRecordType().contains("A20"))
		{
			dto.setChInfo(item.getText());
		}
		if(item.getStmtRecordType().contains("B20")) {
			dto.setMsg(item.getText());
		}
		if(item.getStmtRecordType().contains("F20")) {
			dto.setAlWadiahAcNo(item.getText());
		}
		if(item.getStmtRecordType().contains("G20")) {
			dto.setBaiAlInahAcNo(item.getText());
		}
		if(item.getStmtRecordType().contains("H21")) {
			dto.setPrevBalance(item.getText());
		}
		if(item.getStmtRecordType().contains("H20")) {
			dto.setFinacingLimit(item.getText());
		}
		if(item.getStmtRecordType().contains("J20")) {
			dto.setTxnDetails(item.getText());
		}
		if(item.getStmtRecordType().contains("L20")) {
			dto.setSubTotal(item.getText());
		}
		if(item.getStmtRecordType().contains("M20")) {
			dto.setProfitDetails(item.getText());
		}
		if(item.getStmtRecordType().contains("N20")) {
			dto.setCreditLimit(item.getText());
		}
		if(item.getStmtRecordType().contains("N24")) {
			dto.setMinDue(item.getText());
		}
		if(item.getStmtRecordType().contains("O20")) {
			dto.setReminder(item.getText());
		}
		if(item.getStmtRecordType().contains("Q20")) {
			dto.setPromo(item.getText());
		}
		if(item.getStmtRecordType().contains("F21")) {
			dto.setPaymentAdvice(item.getText());
		}
		if(item.getStmtRecordType().contains("E20")) {
			dto.setPaymentDetails(item.getText());
		}
		if(item.getStmtRecordType().contains("E21")) {
			dto.setProfitForMinAmount(item.getText());
		}
		if(item.getStmtRecordType().contains("E22")) {
			dto.setProfitForMinFixedAmount(item.getText());
		}
		if(item.getStmtRecordType().contains("E23")) {
			dto.setSaveProfitAmount(item.getText());
		}
		if(item.getStmtRecordType().contains("E24")) {
			dto.setTotalCreditUtilized(item.getText());
		}
		if(item.getStmtRecordType().contains("E25")) {
			dto.setTotalProfitCharges(item.getText());
		}
		if(item.getStmtRecordType().contains("E26")) {
			dto.setTotalFeeAndChargesImposed(item.getText());
		}
		if(item.getStmtRecordType().contains("D20")) {
			dto.setRebateInfo(item.getText());
		}
		if(item.getStmtRecordType().contains("E27")) {
			dto.setBonusPointDetails(item.getText());
		}
		if(item.getStmtRecordType().contains("P10")) {
			dto.setSoaPassDetails(item.getText());
		}
		if(item.getStmtRecordType().contains("P20")) {
			dto.setSummaryOfInstallment(item.getText());
		}
		if(item.getStmtRecordType().contains("R20")) {
			dto.setTrailer1(item.getText());
		}
		if(item.getStmtRecordType().contains("R21")) {
			dto.setTrailer2(item.getText());
		}
		if(item.getStmtRecordType().contains("R22")) {
			dto.setTrailer3(item.getText());
		}
		return dto;
	}

}
