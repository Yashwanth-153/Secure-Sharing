<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>c_view_search_request</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 23px}
.style2 {color: #FF0000}
.style8 {color: #000000}
.style10 {color: #FF0000; font-weight: bold; }
.style11 {font-weight: bold}
.style14 {font-weight: bold; color: #0000FF; }
.style15 {color: #0000FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">A Data Sharing Protocol to Minimize Security and Privacy Risks of Cloud Storage in Big Data Era
</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="c_login.jsp"><span>Cloud Provider</span></a></li>
          <li class="active"><a href="o_login.jsp"><span>Owner</span></a></li>
          <li><a href="u_login.jsp"><span>Group Member</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center">View Alll Users Data Share Request 
  </h2>
          <p align="center">&nbsp;</p>
  
          <table width="631" border="1" align="center">
  <tr>
    <td width="66" height="32" bgcolor="#FFFF00"><div align="center" class="style10"><span class="style5">Requested Id </span></div></td>
    <td width="123" bgcolor="#FFFF00"><div align="center" class="style2 style4"><strong>Username </strong></div></td>
    <td width="147" bgcolor="#FFFF00"><div align="center" class="style2 style4"><strong>Status </strong></div></td>
	<td width="124" bgcolor="#FFFF00"><div align="center" class="style2 style4"><strong>Requested Date</strong></div></td> 
	<td width="137" bgcolor="#FFFF00"><div align="center" class="style2 style4"><strong>Owner Name</strong></div></td> 
  </tr>

<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          String oname=(String)application.getAttribute("owner");
      		
      		 
      		
      		String query="select * from srequest where oname='"+oname+"'  "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
	
		%>

  <tr>
    <td height="29"><div align="center" class="style15"><%=i%></div></td>
    <td><div align="center" class="style15"><%=s2%></div></td>
    <td><div align="center" class="style15"><%=s3%></div></td>
	  <td><div align="center" class="style15"><%=s4%></div></td>
	    <td><div align="center" class="style15"><%=s5%></div></td>
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e);
          }
%>
</table>
        
  <p align="center">&nbsp;</p>
  <a href="c_main.jsp">Back</a></div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Owner</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="o_profile.jsp">View Profile</a></strong></li>
            
			
            <li><strong><a href="o_login.jsp">Log Out</a></strong></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
