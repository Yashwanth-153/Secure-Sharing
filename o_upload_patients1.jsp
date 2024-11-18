<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>o_upload_patients1</title>
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
          <h2 align="center">Welcome to Owner Main : <span class="style8"><%=application.getAttribute("owner")%></span></h2>
          <p><br>
             <span class="style2"><strong>Your Group::</strong></span><span class="style14"><%=application.getAttribute("ogroup")%><br />
                       </span><br> 
                      <span class="style11"><span class="style10">Your Group Key or Encryption Key:</span>:</span><span class="style14"><%=application.getAttribute("gkey")%></span><span class="style15"></span>
            </h3>
            
          </span></p>
          <%

      	try 
	{
	
	String ekey=(String)application.getAttribute("gkey");
	
	String p1=request.getParameter("textfield");
	String p2=request.getParameter("textfield2");
	String p3=request.getParameter("textfield3");
	String p4=request.getParameter("textfield4");
	String p5=request.getParameter("textfield5");
	String p6=request.getParameter("textfield6");
	
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
      		String keys = ekey.substring(0,16);
      		String h1="";
      		String filename="filename.txt";
      		
			
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
      		
			String encryptedValue1 = new String(Base64.encode(p1.getBytes()));
			String encryptedValue2 = new String(Base64.encode(p2.getBytes()));
			String encryptedValue3 = new String(Base64.encode(p3.getBytes()));
			String encryptedValue4 = new String(Base64.encode(p4.getBytes()));
			String encryptedValue5 = new String(Base64.encode(p5.getBytes()));
			String encryptedValue6 = new String(Base64.encode(p6.getBytes()));
			
      		PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(cont));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
			
      		
	
%>
		  <form action="o_upload_patients2.jsp" method="post">
		  		<table width="598" border="1" align="center">

            <tr>
              <td width="286"><span class="style4 style15"><strong>Patient Name  :- </strong></span></td>
              <td width="356"><input name="p1" type="text" id="t42" size="50" value="<%=p1 %>" readonly="readonly" /></td>
            </tr>
			 <tr>
              <td width="286"><span class="style4 style15"><strong>Patient Address :- </strong></span></td>
              <td width="356"><textarea name="p2" cols="50" readonly="readonly" id="t42"><%= encryptedValue2 %></textarea></td>
            </tr>
			 <tr>
              <td width="286"><span class="style4 style15"><strong>Patient Email Id:- </strong></span></td>
              <td width="356"><input name="p3" type="text" id="t42" size="50" value="<%= encryptedValue3 %>" readonly="readonly" /></td>
            </tr>
			 <tr>
              <td width="286"><span class="style4 style15"><strong>Patient Age:- </strong></span></td>
              <td width="356"><input name="p4" type="text" id="t42" size="50" value="<%= encryptedValue4%>" readonly="readonly" /></td>
            </tr>
			 <tr>
              <td width="286"><span class="style4 style15"><strong>Patient Symptoms :- </strong></span></td>
              <td width="356"><input name="p5" type="text" id="t42" size="50" value="<%=encryptedValue5 %>" readonly="readonly" /></td>
            </tr>
			 <tr>
              <td width="286"><span class="style4 style15"><strong>Patient Disease :- </strong></span></td>
              <td width="356"><input name="p6" type="text" id="t42" size="50" value="<%= encryptedValue6 %>" readonly="readonly" /></td>
            </tr>
		   
		   
		    <tr>
              <td width="286"><span class="style4 style15"><strong>Report Name :- </strong></span></td>
              <td width="356"><input name="t42" type="text" id="t42" size="50" value="<%= file %>" readonly="readonly" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><textarea name="text2" cols="50" rows="15" readonly><%= encryptedValue %></textarea></td>
            </tr>
            <tr>
              <td><span class="style4 style15"><strong>Trapdoor : </strong></span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="<%= h1 %>" readonly="readonly" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="right">
              </div></td>
              <td><input type="submit" name="Submit2" value="Upload" /></td>
            </tr>
          </table>
		  </form>
		  <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
	
        
          <p>&nbsp;        </p>
          <p align="center">&nbsp;</p>
        <a href="o_main.jsp">Back</a></div>
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
