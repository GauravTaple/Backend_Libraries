package com.reldyn.junit_testing;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.fail;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.mockito.Mockito;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class TestCalculator {
	
	Calculator c=null;
	
	CalculatorService service=Mockito.mock(CalculatorService.class);
	
//	@BeforeAll
//	 static void beforeAll() {
//		System.out.println("intialize beforeAll...!!!");
//	}
	
	@BeforeEach
	public void init(){
		c = new Calculator(service);
		System.out.println("Intialize...!!!");
	}
	
	@AfterEach
	public void Endit() {
		System.out.println("cleaning up...!!!");
	}
	
	
	
	@Test
	@DisplayName("Test Add Method")
	void testAdd() {
		when(service.add(2,3)).thenReturn(5);
		assertEquals(5, c.perform(2, 3),"adding two numbers");
	}
	
	@Test
	void testMultiply() {
		when(service.multiply(3.14)).thenReturn(Math.PI);
		assertAll(
				()->assertEquals(Math.PI, c.calcMultiply(3.14),"pi value is"),
			    ()->assertEquals(Math.PI, c.calcMultiply(3.14),"pi value is"),
			    ()->assertEquals(Math.PI, c.calcMultiply(3.14),"pi value is")
				);
		assertEquals(Math.PI, c.calcMultiply(3.14),"pi value is");
	}   
	
	@Test
	@DisplayName("Test Divide Method")
	void testDivide() {
//		when(service.divide(1, 0)).thenReturn(0);
		assertThrows(ArithmeticException.class, ()->c.calcDivide(1, 0),"Exception throw is wrong");
	}
	
//	@Test
	@Disabled
	@RepeatedTest(3)
	void testDisabled() {
		fail("This method is failed");
	}

}