<%--
    Document   : index
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
    <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Sandhata Airlines</title>

    <meta name="description" content="" />

     <!-- Mobile viewport optimized: j.mp/bplateviewport -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />

 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js">
 </script>
<script>
$(document).ready(function(){
 $('.radiochecked:first').attr('checked', 'checked');
});
</script>

 </head>



 <body>
 <div id="color">
   <div id="header">
   
 <img src="Images/logo1.jpg" height=100px width=250px>
    </div>

<div id="page-wrap">

<form action="second.jsp" method="post" >

  <div id="main-sidebar2">

      <h2><b><center>Hyderabad</center></b></h2><br>
Fly into Hyderabad to celebrate new year.

<br>
<img src="Images/Hyderabad.jpg" height=55% width=80%>
</div>

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


<div id="main-content1">

<%

      String myParameter1 = request.getParameter("sel1");
      String myParameter2 = request.getParameter("sel2");
      String myParameter3 = request.getParameter("date");
      String myParameter4 = request.getParameter("sel3");

      
     String myParameter5 = request.getParameter("sel4");
     String myParameter6 = request.getParameter("sel5");
     String myParameter7 = request.getParameter("s1");
      
      String myParameter8 = request.getParameter("date3");
      String myParameter9 = request.getParameter("date4");

     String myParameter10 = request.getParameter("date1");
      String myParameter11 = request.getParameter("date2");
      

     if(myParameter7.equalsIgnoreCase("Findflights") )

        {%> 
       
           <%@include file="db.jsp" %> 
    
                  <%   Statement st=con.createStatement();
                      Statement st1=con.createStatement();
                      Statement st2=con.createStatement();

                   String volrole ="SELECT * FROM flights WHERE source=" +myParameter1+"AND destination="+myParameter2;


                   ResultSet resultset = st.executeQuery(volrole);

                  %>

         <h2>AVALIABLE FLIGHTS</h2>
         <table border="1" cellpadding="0" cellspacing="0" style="width:350px;padding-left:5px;">

           <tr>

                   <td width="5%" class="one" height="25">
                        <div align="left">SNO</div>
                       </td>

                   <td width="25%" class="one">
                        <div align="left">FLIGHT</div>
                       </td>

                   <td width="20%" class="one">
                    <div align="left">SOURCE</div>
                   </td>

                   <td width="20%" class="one">
                    <div align="left">DESTINATION</div>
                   </td>

                    <td width="20%" class="one">
                    <div align="left">COST</div>
                   </td>

                   <td width="20%" class="one">
                    <div align="left"></div>
                   </td>

          </tr>

           <%  while(resultset.next())
             { %>

               <tr>

                 <td width="5%" class="one" height="25">
                  <div align="left"><%=resultset.getString(1)%></div>
                 </td>

                 <td width="25%" class="one">
                    <div align="left"><%=resultset.getString(4)%></div>
                   </td>

                   <%  String volrole1 ="SELECT * FROM places WHERE id=" +myParameter1;

            // ResultSet results = psmnt.executeQuery();
                    ResultSet resultset1 = st1.executeQuery(volrole1);
                    while(resultset1.next())
                     {
                   %>

                       <td width="20%" class="one">
                       <div align="left"><%=resultset1.getString(2)%></div>
                       </td>
                    <% }
                    resultset1.close();%>
                    <%
                     String volrole2 ="SELECT * FROM places WHERE id=" +myParameter2;

                     ResultSet resultset2 = st2.executeQuery(volrole2);
                     while(resultset2.next())
                          {
                     %>

                     <td width="15%" class="one">
                      <div align="left">
                        <%=resultset2.getString(2)%>
                      </div>
                     </td>

                     <% }
                     resultset2.close();%>

                     <td width="15%" class="one">
                      <div align="left">
                        <%=resultset.getString(5)%>
                      </div>
                      </td>

                       <td width="15%" class="one">
                            <div align="left">
                             <a href="second.jsp?s2=<%= resultset.getString(1)%>" >Book</a>
                            </div>
                           </td>

                      </tr>
                  </table>

           <% } resultset.close();}%>



 

</div>

  

           </div>
 </div>

 </body>

</html>

