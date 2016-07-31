import com.hotair.*;
public class TestPublish {
	
	public static void main(String[] args) {
		String URL = "tcp://192.168.0.30:7222";
		String username = "admin";
		String password = "admin";
		String requestQueue = "swift.test.clienttoswift.dev";
		String replyQueue = "swift.test.clienttoswift.int";
		String msg = "hii";
		String reply = "";
		
		Reservation tib = new Reservation();
		
		
		reply = tib.BookFlight(URL, username, password, requestQueue, replyQueue, msg);
		
		System.out.println("received msg ** : "+reply);
		
		
		
		
		
	}
}
