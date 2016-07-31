package test.unitTest;

import org.junit.Ignore;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.xml.sax.SAXParseException;

import junit.framework.TestCase;

import com.hotair.*;



public class TestReservation extends TestCase {
	

	String msg = "<ns0:bookFlightResponse xmlns:ns0='http://www.hotair.com/schemas/BookFlightResponse'><ns0:status>Success</ns0:status><ns0:newReservationNumber>A03987</ns0:newReservationNumber></ns0:bookFlightResponse>";
	String expectedResponse = " A03987";
	String actualResponse = "";
	
	String exception_msg = "<ns0:bookFlightResponse><ns0:status>Success</ns0:status><ns0:newReservationNumber>A03987</ns0:newReservationNumber></ns0:bookFlightResponse>";
	
	
	
	Reservation tib = new Reservation();
	
	
	//test to check successful reservation Number from parser
	@Ignore   
	@Test
	   public void testresponseParserShouldReturnReservationNumber() {
		   System.out.println("No of Test Case = "+ this.countTestCases());
		   System.out.println("Test Case Name = "+ getName());
		   
		   actualResponse = tib.responseParser(msg);
		   System.out.println("ActualResponse ="+actualResponse); 
		   System.out.println("Expected Response ="+expectedResponse); 
	      assertEquals(expectedResponse, actualResponse);
	   }
	   
	   @Rule
	   public ExpectedException thrown = ExpectedException.none();
	   
	 //test to check exception for invalid xml from parser
	   @Test(expected=SAXParseException.class)
	   public void testresponseParserShouldReturnException() {
		   System.out.println("No of Test Case = "+ this.countTestCases());
		   System.out.println("Test Case Name = "+ getName());
		   
		   actualResponse = tib.responseParser(exception_msg);
		   
	   }

}
