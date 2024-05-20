package com.reldyn.junit_testing;

public class Calculator {
	CalculatorService calculatorService;
	
	
	
	public Calculator(CalculatorService calculatorService) {
		this.calculatorService = calculatorService;
	}



	public int perform(int a,int b) {
		return calculatorService.add(a, b);
	}
	
	public double calcMultiply(double radius) {
		return calculatorService.multiply(radius );
		
	}
	
	public int calcDivide(int a,int b) {
		return a/b;
	}

}
