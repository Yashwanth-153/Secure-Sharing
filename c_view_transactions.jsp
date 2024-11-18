
<%@ include file="connect.jsp"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Transactions</title>
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
.style3 {font-weight: bold}
.style4 {font-weight: bold}
.style6 {font-weight: bold}
.style8 {font-weight: bold}
.style10 {font-weight: bold}
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
        <h1><a href="index.html" class="style1 style2">A Data Sharing Protocol to Minimize Security <br />
          and Privacy Risks of Cloud Storage in Big Data Era
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
          <h2 align="center"> View All User Transactions</h2>
          <p align="center">&nbsp; </p>
		  
		  
        <table width="639" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td  width="39" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>ID</strong></strong></div></td>
    <td  width="72" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>User Name</strong></strong></div></td>
    <td  width="144" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Report Name </strong></strong></div></td>
	    <td  width="75" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Key</strong></strong></div></td>
    <td  width="145" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong> Task </strong></strong></div></td>
    <td  width="144" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Date and Time</strong></strong></div></td>
    
    

	<%
		                String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
						int i=0,j=1;
			
			try{

			                String query="select * from transaction"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);//add
								s5=rs.getString(6);//dob
								
							
	%>
	<tr>
		<td  valign="baseline" height="0"><p class="style2 style14 style22">&nbsp;</p>
                  <div align="center" class="style22 style14 style2 style4">
                    <%out.println(i);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td width="72" rowspan="1" ><div class="style2 style14 style22" style="margin:10px 13px 10px 13px;" ><strong> 
			  
			   <%out.println(s1);%>
              </strong></div></td>
              <td  valign="baseline" height="0"><p class="style2 style14 style22">&nbsp;</p>
                  <div align="center" class="style22 style14 style2 style6">
                    <%out.println(s2);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style2 style14 style22">&nbsp;</p>
                  <div align="center" class="style22 style14 style2 style8">
                    <%out.println(s3);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style2 style14 style22">&nbsp;</p>
                  <div align="center" class="style22 style14 style2 style10">
                    <%out.println(s4);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style2 style14 style22">&nbsp;</p>
                  <div align="center" class="style22 style14 style2 style12">
                    <%out.println(s5);%>
                    <p>&nbsp; </p>
                  </div></td>
            </tr>

	<%
		}

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
		  <p>&nbsp;</p>
          <p><a href="c_main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Cloud</span> Menu</h2>
          <div class="clr style2"></div>
          <ul class="sb_menu">
            <li class="style2"><strong><a href="c_main.jsp"> Home</a></strong></li>
            <li><span class="style2"><strong><a href="c_login.jsp">Log Out</a></strong></span></li>
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
