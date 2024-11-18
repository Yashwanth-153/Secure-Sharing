<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<html>
<style type="text/css">
<!--
.style2 {
	color: #FF0000;
	font-size: 25px;
}
.style4 {font-family: "Times New Roman", Times, serif}
.style5 {color: #FF0000}
.style6 {font-size: 15px}
.style7 {
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
	color: #0000FF;
	font-size: 17px;
}
.style11 {font-size: 17px}
.style13 {color: #0000FF}
.style14 {color: #000000}
-->
</style>
<body>

          <p>
		  
		  <table width="965" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td  width="23" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>ID</strong></strong></div></td>
    <td  width="116" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Patient Name</strong></strong></div></td>
    <td  width="113" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Patient Address </strong></strong></div></td>
	    <td  width="113" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Patient EMailId </strong></strong></div></td>
    <td  width="83" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong> Patient Age </strong></strong></div></td>
    <td  width="67" height="66" valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Patient Symptoms</strong></strong></div></td>
    <td  width="59" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Patient Disease</strong></strong></div></td>
    <td  width="59" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>ARepost Name</strong></strong></div></td>
    <td  width="59" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Trapdoor</strong></strong></div></td>
	<td  width="59" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Secret Key</strong></strong></div></td>
	<td  width="59" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Rank</strong></strong></div></td>
	<td  width="59" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>DT</strong></strong></div></td>
	<td  width="59" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Owner</strong></strong></div></td>
	<td  width="59" height="66"  valign="middle" bgcolor="#99CC00" style="color: #2c83b0;"><div align="center" class="style4 style3 style2 style15 style21 style11 style13"><strong><strong>Group Key</strong></strong></div></td>
    </tr>

	<%
		                String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
						int i=0,j=1;
			
			try{
			
			
			String oname=(String)application.getAttribute("owner");

			                String query="select * from ownerfiles where oname='"+oname+"'"; 
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
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);//cont
								s9=rs.getString(10);
								s10=rs.getString(11);
								s11=rs.getString(12);
								s12=rs.getString(13);
								s13=rs.getString(14);
								s14=rs.getString(15);
				
				                                

	%>

	<tr>
		<td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(j);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td width="116" rowspan="1" ><div class="style22 style4 style14" style="margin:10px 13px 10px 13px;" > 
			  
			   <%out.println(s1);%>
               </div></td>
              <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(s2);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(s3);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(s4);%>
                    <p>&nbsp; </p>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(s5);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(s6);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(s7);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(s9);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14">
                    <%out.println(s10);%>
                    <p>&nbsp; </p>
                  </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s11);%>
                    <p>&nbsp; </p>
                  </div></td>  
			 <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s12);%>
                    <p>&nbsp; </p>
                  </div></td>  
				   <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s13);%>
                    <p>&nbsp; </p>
                  </div></td>  
				   <td  valign="baseline" height="0"><p class="style22 style4 style14">&nbsp;</p>
                  <div align="center" class="style22 style4 style14 style15">
                    <%out.println(s14);%>
                    <p>&nbsp; </p>
                  </div></td>  
            
            </tr>

	<%
		j=j+1;}

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
		  
		  
</body>
</html>
