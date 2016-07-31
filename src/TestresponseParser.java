import com.hotair.*;
public class TestresponseParser {
	
	public static void main(String[] args) {
		
		String msg = "<ns0:status>Success</ns0:status><ns0:newReservationNumber>A03987</ns0:newReservationNumber></ns0:bookFlightResponse>";
		String reply = "";
		
		Reservation tib = new Reservation();
		
		
		reply = tib.responseParser(msg);
		
		System.out.println("received msg ** :"+reply);
		
	 }

}
