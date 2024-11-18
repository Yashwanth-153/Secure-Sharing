<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>o_verifydata</title>
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
          <h2 align="center">Welcome to Owner : <span class="style8"><%=application.getAttribute("owner")%></span></h2>
          <p><br>
             <span class="style2"><strong>Your Group::</strong></span><span class="style14"><%=application.getAttribute("ogroup")%><br />
                       </span><br> 
                      <span class="style11"><span class="style10">Your Group Key or Encryption Key:</span>:</span><span class="style14"><%=application.getAttribute("gkey")%></span><span class="style15"></span>
            </h3>
            
            </span>          </p>
          <p>&nbsp;</p>
         <%
	 	
	 	String csmac=null, ownermac=null,ocon=null,csname=null;
		
			
				String omac="",td="",on1="";

	 	try {
		
		
		    
			
	 		String file = request.getParameter("fname");
	
	 		Statement st = connection.createStatement();

	 		on1=(String)application.getAttribute("owner");
			
 				

	 		String strQuery2 = "select * from cloudserver where fname='"+ file + "' and Oname='" + on1 + "' ";
	 	

	 		ResultSet rs = st.executeQuery(strQuery2);
	 		if (rs.next()) {
	 			
	 		
				td = rs.getString("trapdoor");
				 
				
	 			
	 			}
				
				
				
        
					String strQuery3 = "Select * FROM ownerfiles where fname='"
									+ file + "' and Oname='" + on1 + "' ";

							ResultSet rss = st.executeQuery(strQuery3);
							if (rss.next()) {
								
								ownermac = rss.getString("trapdoor");//trapdoor
								
								}

							
							%>
							
							<h2><% out.println("Cloud Trapdoor="+td); out.println("Owner Trapdoor="+ownermac); %></h2>
							
							<%
							
					
							if(td.equalsIgnoreCase(ownermac) )
							{
							%>
<p>
<h1>No Change in Trapdoor !!! So  data is not modified</h1>
</p>

<%
							}	
							else {
							
								%>
<p>
<h2>Trapdoor is changed !!! S0 -- <%=file %>  is Attacked by Attacker !!! </h2>  <br />

</p>
<%				
					 		}
																			
		  	connection.close();

		  	}catch (Exception e) {
		  		out.println(e.getMessage());
		  		e.printStackTrace();
		  	} %>
        
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
