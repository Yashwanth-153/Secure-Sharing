<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile</title>
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
.style3 {font-family: "Times New Roman", Times, serif}
.style10 {font-size: 18px}
.style11 {color: #0000FF}
.style12 {color: #000000}
.style13 {font-family: "Times New Roman", Times, serif; font-size: 15px; }
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
          <li class="active"><a href="c_login.jsp"><span>Cloud Provider</span></a></li>
          <li><a href="o_login.jsp"><span>Owner</span></a></li>
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
          <h2 align="center"> User Profile </span></h2>
		  <p>&nbsp;</p>
		  
		  
		  
	  
<table width="565" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%
						
						String user=request.getParameter("user");
						String type=request.getParameter("type");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//loc
								s11=rs.getString(11);//image
								s12=rs.getString(12);
								s13=rs.getString(13);
								
								
								
								
								
					%>
        <tr>
          <td width="230" rowspan="6" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;">
          </a></div></td>
        </tr>
		
        <tr>
          <td  width="145" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Name</strong></div></td>
          <td  width="182" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s2);%>
          </div></td>
        </tr>
		<tr>
          <td  width="145" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
          <td  width="182" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s4);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" height="40" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Mobile</strong></div></td>
          <td  width="182" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s5);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Location</strong></div></td>
          <td  width="182" align="left" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s10);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
          <td  width="182" align="left" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s7);%>
          </div></td>
        </tr>
         <tr>
		  <td></td>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Address</strong></div></td>
          <td  width="182" align="left" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s6);%>
          </div></td>
        </tr>
		<tr>
		  <td></td>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Gender</strong></div></td>
          <td  width="182" align="left" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s8);%>
          </div></td>
        </tr>
		<tr>
		  <td></td>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Pincode</strong></div></td>
          <td  width="182" align="left" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s9);%>
          </div></td>
        </tr>
		
		<tr>
		  <td></td>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Status</strong></div></td>
          <td  width="182" align="left" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s12);%>
          </div></td>
        </tr>
		<tr>
		  <td></td>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#99FF00" style="color: #2c83b0;"><div align="left" class="style14 style15 style20 style4 style5 style6 style13 style3 style10 style11" style="margin-left:20px;"><strong>Account Type</strong></div></td>
          <td  width="182" align="left" valign="middle" height="40"><div align="left" class="style23 style6 style13 style3 style10 style12" style="margin-left:20px;">
            <%out.println(s13);%>
          </div></td>
        </tr>
		</table>
		
		
		
		
        <%
		
		if(type.equalsIgnoreCase("one"))
		{
		%><p align="right"><a href="a_mal_users.jsp" class="style13">Back</a></p>
        <%
		}
		if(type.equalsIgnoreCase("two"))
		{
		%><p align="right"><a href="a_mal_users2.jsp" class="style13">Back</a></p>
        <%
		}
		
}
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
                      
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="c_main.jsp"><span>Admin Main</span></a></li>
            <li><a href="c_login.jsp"><span>Log Out</span></a></li>
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
