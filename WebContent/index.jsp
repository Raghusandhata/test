 <%--
<%--Document   : index
    Created on : Sep 13, 2012, 11:31:47 AM
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

 

  <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js" ></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

<!-- <script src="Jsfiles/myvalidation.js"></script> -->

<script >
function rangewise(data)
{
	

$(document).ready(function(){



  $('#flights').click(function(){

      $('#one').show();
	  $('#second').hide();
	  $('#three').hide();

  });

  $('#hotels').click(function(){
	  
	  $('#second').show();
      $('#one').hide();
	
	  $('#three').hide();
  });

    $('#both').click(function(){
		  $('#three').show();
      $('#one').hide();
	  $('#second').hide();
	
  });

});
}
</script>




  <style type="text/css">
   .ui-datepicker {
   background: #F0FFFF;
   border: 1px solid #555 ;
   color: #0000FF;
    line-height: 1.3;
 margin: 0; padding: 0;

     }

</style>

<script>

    var date = new Date();
    var currentMonth = date.getMonth();
    var currentDate = date.getDate();
    var currentYear = date.getFullYear();
  $(document).ready(function() {
  $("#datepicker").datepicker({ minDate: new Date(currentYear, currentMonth, currentDate) });
  $(".ui-datepicker").css("width", "25em");
  $(".ui-widget").css("fontSize", "0.7em");
  $(".ui-widget").css("width", "35em");
});
  </script>

  <link rel="stylesheet" type="text/css" href="tcal.css" />
 <script type="text/javascript" src="tcal.js"></script>
    <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Sandhata Airlines</title>

    <meta name="description" content="" />

     <!-- Mobile viewport optimized: j.mp/bplateviewport -->
 	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />



</head>

<body>
<div id="color">
   <div id="header">
 <img src="Images/logo1.jpg" height=100px width=250px>
    </div>

<div id="page-wrap">
 <form action="first.jsp" method="post" name="f1" onsubmit="return validate1()">
  <div id="main-sidebar1">
    <center><h3><font color="blue">Book your Trip</font></h3></center>

       <input type="radio" name="rbu"  value="flights" id="flights" onchange="rangewise(this.value)" checked>Flight only<br>
       
<div id="one">
	<center><h3><font color="blue"> Find Flights</font></h3></center>

  
    
   


   &nbsp&nbsp From: &nbsp&nbsp&nbsp&nbsp <select name="sel1" style="width: 100px"><option value="">From---></option>

 <%@include file="db.jsp" %> 
 <%
    
     Statement	st = con.createStatement();
     ResultSet	results = st.executeQuery("SELECT * FROM places");
        while(results.next()){
       String id = results.getString(1);
     String name = results.getString(2);
     %>

       <option value="<% out.println(id); %>">
       <% out.println(name); %>
        </option>


        <%} results.close(); %>
         </select><br>



        &nbsp&nbsp To:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <select name="sel2" style="width: 100px"><option value="">To---></option>
       <%
       ResultSet	results1 = st.executeQuery("select * from places ");
        while(results1.next()){
       String id1 =results1.getString(1)  ;
         String name1 = results1.getString(2);
           %>

         <option value="<% out.println(id1); %>">
        <% out.println(name1); %>
             </option>

        <%} results1.close();  %>
            </select><br>
   
        &nbsp&nbsp Date:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="date" class="tcal" value=""  style="width: 80px"><br>
         <center><input type="submit" value="Findflights" name="s1"  ></center>
<br><br>
</div>




  

    </div>
</form>



 <div id="main-sidebar2">

     <h2><b><center>Hyderabad</center></b></h2>
Fly into Hyderabad to celebrate new year.

<br>
<img src="Images/Hyderabad.jpg" height=55% width=80%>
</div>
<form action="second.jsp" method="post" >
<div id="main-sidebar3">
<div id="color3">

     <center><h3><font color="white"> Special Offers</font></h3></center>
 </div><br>
 <b> Hyderabad </b> to  <b>Delhi</b>  December 10th.

only  Rs 6500.00 <br>

<center></center>

</div>

<div id="main-sidebar4">
    <div id="color3">

     <center><h3><font color="white"> Special Offers</font></h3></center>
 </div><br>
 <b>  Banglore</b> to  <b>Delhi</b>  December 10th.
only Rs 6200.00 <br>
<center></center>
</div>
</form>


<div id="main-content1">


<h2><b>Welcome to Sandhata</b></h2>
<br>Welcome to sandhata,the hottest airline in the skies.<br>
<b>Book a flight online now!</b><br>
Find a flight using the search box on the left, or take advantage of our latest special offers.
<br>
<h2><b>Delhi</b></h2>
Delhi, India's capital city, has a wealth of unique historic architecture and has emerged as one of the most popular tourist destinations in India. Fly to Delhi

<br>
<img src="Images/delhi.jpg" height=250px width=350px>
</div>
</div>
 </div>



 </body>

</html>
