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
		String gkey=(String)application.getAttribute("gkey");

			long stime=System.currentTimeMillis();
			
			String p1=request.getParameter("p1");
			String p2=request.getParameter("p2");
			String p3=request.getParameter("p3");
			String p4=request.getParameter("p4");
			String p5=request.getParameter("p5");
			String p6=request.getParameter("p6");
			
	
			
			String oname=(String)application.getAttribute("owner");
	
      		String file=request.getParameter("t42");
      		String cont=request.getParameter("text2");
      		String mac =request.getParameter("t4");
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
			Cipher encoder = Cipher.getInstance("RSA");
			KeyPair kp = kg.generateKeyPair();

				Key pubKey = kp.getPublic();
				byte[] pub = pubKey.getEncoded();		
				String pk = String.valueOf(pub);
				String rank="0";
			
				
				
				
				Statement st=connection.createStatement();
	
				String user="Data Owner";
				String task="Upload";
				
				String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"+oname+"','"+file+"','"+pk+"','"+task+"','"+dt+"')";
				connection.createStatement().executeUpdate(strQuery2);
				
				st.executeUpdate("insert into  cloudserver(p1,p2,p3,p4,p5,p6,fname,ct,trapdoor,sk,rank,dt,Oname,gkey) values ('"+p1+"','"+p2+"','"+p3+"','"+p4+"','"+p5+"','"+p6+"','"+file+"','"+cont+"','"+mac+"','"+pk+"','"+rank+"','"+dt+"','"+oname+"','"+gkey+"')"); 
				
				st.executeUpdate("insert into  ownerfiles(p1,p2,p3,p4,p5,p6,fname,ct,trapdoor,sk,rank,dt,Oname,gkey) values ('"+p1+"','"+p2+"','"+p3+"','"+p4+"','"+p5+"','"+p6+"','"+file+"','"+cont+"','"+mac+"','"+pk+"','"+rank+"','"+dt+"','"+oname+"','"+gkey+"')"); 			
				
      		
			
					long etime=System.currentTimeMillis();
					long ttime = etime-stime;
					long tpt=((cont.length())/ttime)*1024;
					
					Statement st1=connection.createStatement();
				st1.executeUpdate("insert into  results values ('"+file+"','"+ttime+"','"+tpt+"')"); 
										
			
	
%>
		  <p><h2>Data Uploaded Successfully !!!</h2></p><br />
		<p>  <a href="o_main.jsp">BACK</a></p>

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
