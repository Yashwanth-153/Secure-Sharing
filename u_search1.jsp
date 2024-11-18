<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>u_search</title>
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
.style9 {font-weight: bold}
.style10 {color: #0000FF}
.style11 {font-weight: bold}
.style12 {font-weight: bold}
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
          <li><a href="o_login.jsp"><span>Owner</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>Group Member</span></a></li>
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
          <h2 align="center">Welcome to User Main : <span class="style8"><%=application.getAttribute("user")%></span></h2><br>
		  <br>
		   <span class="style2"><strong>Your Group:<span class="style10">:</span></strong></span><span class="style12 style10"><%=application.getAttribute("ugroup")%><br />
           </span><br> 
  <span class="style11"><span class="style2"><strong>Your Group Key or Encryption Key:</strong></span>:</span><span class="style12 style10"><%=application.getAttribute("ugkey")%></span><span class="style10"></span>
  </h3>
		  </span>
  <p>&nbsp;</p>
		  
		 
       <table width="625" border="1" align="center">
            <tr>
              <td width="86" height="29"><div align="center" class="style2"><span class="style4"> ID </span></div></td>
              <td width="204"><div align="center" class="style2"><span class="style4">	Patient Name </span></div></td>
              <td width="97"><div align="center" class="style2"><span class="style4">Address</span></div></td>
			                <td width="97"><div align="center" class="style2"><span class="style4">EMail</span></div></td>
							              <td width="97"><div align="center" class="style2"><span class="style4">Symtoms</span></div></td>
										                <td width="97"><div align="center" class="style2"><span class="style4">Disease</span></div></td>
              <td width="210"><div align="center" class="style2"><span class="style4">Download</span></div></td>
			  
		<%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        String ekey=(String)application.getAttribute("ugkey");
          String keyword = request.getParameter("keyword");
      		String keys = ekey.substring(0,16);
      		String h1="";
      		String filename="filename.txt";
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		byte[] keyValue = keys.getBytes();
      		Key key = new SecretKeySpec(keyValue, "AES");
      		Cipher c = Cipher.getInstance("AES");
      		c.init(Cipher.DECRYPT_MODE, key);
      		
			String per ="";	
      		String uname=(String)application.getAttribute("user");
      		
			String yes="Yes";
			
			String query1="select * from srequest  where user='"+uname+"' and status='"+yes+"'"; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
		
						
		   	
	if ( rs1.next() )
	   {
			per="Yes";
			
      	   String query="select * from cloudserver"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2).toLowerCase();// pname
		s3=rs.getString(3);
		s4=rs.getString(4);
				s5=rs.getString(5);
						s6=rs.getString(6);
								s7=rs.getString(7);
										s8=rs.getString(8);// fname
												s9=rs.getString(9);
		
		c.init(Cipher.DECRYPT_MODE,key);
		String decryptedValue = new String(Base64.decode(s3.getBytes()));
		String decryptedValue1 = new String(Base64.decode(s4.getBytes()));
		String decryptedValue2 = new String(Base64.decode(s5.getBytes()));
		String decryptedValue3 = new String(Base64.decode(s6.getBytes()));
		String decryptedValue4 = new String(Base64.decode(s7.getBytes()));
		String decryptedValue5 = new String(Base64.decode(s9.getBytes()));
			
      	
	   
		if(decryptedValue5.toLowerCase().contains(keyword.toLowerCase()) ||s2.toLowerCase().contains(keyword.toLowerCase()) )
		{
			String strQuery1 = "select * from cloudserver where fname='"+s2+"'";
			ResultSet rs11 = connection.createStatement().executeQuery(strQuery1);
			{
			if(rs11.next()==true)
			{
				String rank=rs11.getString(12);
				int updaterank = Integer.parseInt(rank)+1;
				String strQuery2 = "update cloudserver set rank='"+updaterank+"' where fname='"+s2+"'";
				connection.createStatement().executeUpdate(strQuery2);
			}
			}
			
			
					
		%>
            <tr>
              <td height="28"><div align="center"><%=i%></div></td>
              <td><div align="center"><%=s2%></div></td>
              <td><div align="center"><%=decryptedValue1%></div></td>
			  <td><div align="center"><%=decryptedValue2%></div></td>
			  <td><div align="center"><%=decryptedValue3%></div></td>
			  <td><div align="center"><%=decryptedValue4%></div></td>
			  
              <td><div align="center"><a href="u_search_download.jsp?uid=<%=s2%>"> <%=s2%> </a></div></td>
            </tr>
            <%
			
			}else
	   {
	   		
	   }
	   }
	  }
	  
	  else
	   {
	   per="No";
	   
	  
	  %>
	  
	   <p><h2>You Don't Have Permission To Access !!!</h2></p><br />
						<p><a href="Download.jsp">Back</a></p>
	   		
	<%  
	
	
		 }
	
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style9">
            <li><a href="u_profile.jsp">View Profile</a></li>
            
            <li><a href="u_login.jsp">Log Out</a></li>
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
