<%--
    Document   : third
    Created on : Sep 27, 2012, 1:58:59 PM
    Author     : sandhata1
--%>
<%@ page import="java.io.*" %>
<%@page import="java.util.Vector"%>
<%@page import="javax.jms.*"%>
<%@page import="com.hotair.*"%>
<%@page import ="com.sun.org.apache.xerces.internal.parsers.DOMParser" %>
<%@page import ="java.io.IOException" %>
<%@page import ="java.util.logging.Level" %>
<%@page import ="java.util.logging.Logger" %>
<%@page import ="org.xml.sax.InputSource" %>
<%@page import ="org.xml.sax.SAXException" %>


<%@page import="java.sql.Connection" %>

<%@page import="java.sql.*" %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="Css/style3.css" />
        <title>JSP Page</title>
    </head>
    <body>

         <div id="color">
   <div id="header">
 <img src="Images/logo1.jpg" height=100px width=250px>
    </div>
    <%

    String sr=request.getParameter("sub");



     String param1=request.getParameter("st1");
    String param2=request.getParameter("st2");
    String param3=request.getParameter("st4");
    String param4=request.getParameter("st6");
    String param5=request.getParameter("st7");
    String param6=request.getParameter("st8");
    String param7=request.getParameter("st9");
    String param8=request.getParameter("st10");
    String param9=request.getParameter("st11");
    String param10=request.getParameter("st12");
    String param11=request.getParameter("st13");
    String param11u=param11.replaceAll(",","");
    String param12=request.getParameter("st14");
    String param12u=param12.replaceAll(",","");
    String param13=request.getParameter("st15");
    String param14=request.getParameter("st16");
    String param15=request.getParameter("st17");


String msgss  ="<?xml version=\"1.0\" encoding=\"UTF-8\"?> <ns0:bookFlightRequest xmlns:ns0=\"http://www.hotair.com/schemas/BookFlightRequest\"><ns0:flightNumber>"+param1+"</ns0:flightNumber>     <ns0:weekNumber>12</ns0:weekNumber> <ns0:price>"+param4+"</ns0:price> <ns0:passengerFirstName>"+param5+"</ns0:passengerFirstName>     <ns0:passengerMiddleName>"+param6+"</ns0:passengerMiddleName><ns0:passengerLastName>"+param7+"</ns0:passengerLastName>     <ns0:passengerGender>"+param14+"</ns0:passengerGender> <ns0:payment><ns1:cardType xmlns:ns1=\"http://www.hotair.com/schemas/Payment\">"+param15+"</ns1:cardType><ns1:cardNumber xmlns:ns1=\"http://www.hotair.com/schemas/Payment\">"+param9+"</ns1:cardNumber><ns1:cardSecurityCode xmlns:ns1=\"http://www.hotair.com/schemas/Payment\">"+param10+"</ns1:cardSecurityCode><ns1:cardHoldersName xmlns:ns1=\"http://www.hotair.com/schemas/Payment\">"+param8+"</ns1:cardHoldersName><ns1:addressLine1 xmlns:ns1=\"http://www.hotair.com/schemas/Payment\">"+param11+"</ns1:addressLine1><ns1:addressLine2 xmlns:ns1=\"http://www.hotair.com/schemas/Payment\">"+param12+"</ns1:addressLine2><ns1:postcode xmlns:ns1=\"http://www.hotair.com/schemas/Payment\">"+param13+"</ns1:postcode>     </ns0:payment> </ns0:bookFlightRequest>";

        String  serverUrl    = "tcp://localhost:7222";
        String  userName     = "admin";
        String  password     = "admin";
        String  requestQueue = "hotair.booking";
        String  replyQueue = "hotair.booking.reply";

        String responsemsg = "";
        String reservationNum = "";

        Reservation tib = new Reservation();
    
    
        responsemsg = tib.BookFlight(serverUrl, userName, password, requestQueue, replyQueue, msgss);

        reservationNum = tib.responseParser(responsemsg);
       
   %>


    <h2>Flight Booked</h2>
you have successfully booked a flight<br>
your Flight reservation number is:<b><%=reservationNum%></b><br>

   

<br>
<a href="index.jsp">Home</a>


</div>
    </body>
</html>
