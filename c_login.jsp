<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}


}
</script>
<style type="text/css">
<!--
.style1 {font-size: 23px}
.style2 {color: #FF0000}
.style3 {font-family: "Times New Roman", Times, serif}
.style4 {font-size: 15px}
.style5 {color: #FFFFFF}
.style7 {font-size: 25px}
.style9 {color: #0000FF}
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
          <h2 align="center"> Cloud Provider Login </h2>
		  <p align="center"><img src="images/Ulogin.jpg" width="178" height="120" /></p>
		  
		  
		  
<form name="s" action="c_authentication.jsp" method="post" onSubmit="return valid()"  ons target="_top">  
            
    <table align="center" border="1" width="51%" height="146">
      <tr>
        <td width="48%" height="25" bgcolor="#99CC00" class="style4 style2"><span class="style3 style7 style9"> Name </span></td>
        <td width="55%" height="25"><input type="text"  name="userid" size="15" /></td>
      </tr>
      <tr>
        <td width="48%" height="25" bgcolor="#99CC00" class="style5 style2"> <span class="style3 style7 style9">Password</span></td>
        <td width="55%" height="25"><input type="password"  name="pass" size="15" /></td>
      </tr>
      <tr>
        <td height="78" colspan="2"><p align="center">
            <input type="submit"  value="Login" name="B1" />
            <input type="reset" value="Reset" name="B2" />
        </td>
      </tr>
    </table>
	
</form>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html"><span>Home Page</span></a></li>
            <li><a href="c_login.jsp"><span>Cloud Provider</span></a></li>
            <li><a href="o_login.jsp"><span>Owner</span></a></li>
            <li><a href="u_login.jsp"><span>Group Member</span></a></li>
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
