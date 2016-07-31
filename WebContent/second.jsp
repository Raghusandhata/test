<%--
    Document   : second
    Created on : Sep 27, 2012, 11:31:34 AM
    Author     : sandhata1
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<!--[if lt IE 7]> <html class="no-js ie6" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8" lang="en"> <![endif]-->

<head>
    
    <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Sandhata Airlines</title>

    <meta name="description" content="" />

     <!-- Mobile viewport optimized: j.mp/bplateviewport -->
 	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="Css/style2.1.css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js">
 </script>
<script>
$(document).ready(function(){
 $('.radiochecked:first').attr('checked', 'checked');
});
</script>
<script src="Jsfiles/myvalidation1.js"></script>


</head>
<body>
    <form action="third.jsp" method="post" name="f2" onsubmit="return validate()">
     <div id="color1">
  <div id="header">
   <img src="Images/logo1.jpg" height=100px width=250px>
  </div>
  <div id="page-wrap">
<div id="main-sidebar1">

 <%
String myParameter4 = request.getParameter("s2");

%> 

       
     <%@include file="db.jsp" %> 
	  
	   <%
	 Statement stnn=con.createStatement();
    Statement stn1=con.createStatement();
    Statement stn2=con.createStatement();
   
  
   String volrole = "SELECT * FROM flights WHERE id="+myParameter4;
           // ResultSet results = psmnt.executeQuery();
     ResultSet resultset = stnn.executeQuery(volrole);
while(resultset.next())
	    { %>
	

<center>

<h3>  <b>  Flight Details:</b></h3>
<hr width="364px" align="left">Flying  :<input type="text" name="st1" value="<%=resultset.getString(4)%>"  style="border:0px" readonly>
      <%
        String volrole1 ="SELECT * FROM places WHERE id=" +resultset.getString(2);

           // ResultSet results = psmnt.executeQuery();
           ResultSet resultset1 = stn1.executeQuery(volrole1);
           while(resultset1.next())
	        {
        %>
   	<hr width="364px" align="left">Flying from :<input type="text" name="st2" value="<%=resultset1.getString(2)%>"  style="border:0px" readonly>
   	 <% }
        resultset1.close();%>
   	<hr width="364px" align="left">Departing :2012/10/12 08:45
   	 <%
        String volrole2 ="SELECT * FROM places WHERE id=" +resultset.getString(3);

           // ResultSet results = psmnt.executeQuery();
           ResultSet resultset2 = stn2.executeQuery(volrole2);
           while(resultset2.next())
	        {
        %>
   	<hr width="364px" align="left">flying to :<input type="text" name="st4" value="<%=resultset2.getString(2)%>"  style="border:0px" readonly>
   	  <% }
        resultset2.close();%>
   	<hr width="364px" align="left">Arriving :2012/10/12 08:45
   	<hr width="364px" align="left"><h4>Flight Cost:<input type="text" name="st6" value="<%=resultset.getString(5)%>"  style="border:0px" readonly></h4>
	<hr width="364px" align="left">  <br>
    </center>

<hr width="364px" align="left"><h3><b>Passenger Details:</b></h3>
<center>
   <hr width="364px" align="left">Passenger First Name:&nbsp&nbsp&nbsp&nbsp<input type="text" name="st7" style="width: 150px">
   <hr width="364px" align="left">Passenger Middle Name: <input type="text" name="st8" style="width: 150px">
   <hr width="364px" align="left">Passenger Last Name:&nbsp&nbsp&nbsp&nbsp<input type="text" name="st9" style="width: 150px">
   <hr width="364px" align="left">Passenger Gender:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="st16" style="width: 150px">
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
</center>
   <hr width="364px" align="left"><h3><b>Payment Details:</b></h3>
<center>
<hr width="364px" align="left">Card Type:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="st17">
<option value="maestro">Maestro</option>
<option value="visa">Visa</option>
<option value="americanexpress">American Express</option>
</select>

<hr width="364px" align="left">Cardholders name:&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="st10" style="width: 150px">

<hr width="364px" align="left">Card number:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="st11" style="width: 150px">

<hr width="364px" align="left">Security code:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="st12" style="width: 150px">

<hr width="364px" align="left">Billing address line1:&nbsp&nbsp&nbsp<input type="text" name="st13" style="width: 150px">
<hr width="364px" align="left">Billing address line2:&nbsp&nbsp&nbsp<input type="text" name="st14" style="width: 150px">
<hr width="364px" align="left">Billingaddress pincode:<input type="text" name="st15" style="width: 150px">
<hr width="364px" align="left">
<input type="submit" value="proceed" name="sub">
</center>

<% } %>

   </div>
 
        

        <div id="main-content1">
		<div id="main-contentimage">

<img src="Images/Hyderabad.jpg" height=200px width=300px><br>

		</div>
        </div>

    </div>
     </div>
    </form>
</body>
</html>
