<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main</title>
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
          <h2 align="center">Welcome to User  : <span class="style8"><%=application.getAttribute("user")%></span></h2><br>
		  <br>
		   <span class="style2"><strong>Your Group:<span class="style10">:</span></strong></span><span class="style12 style10"><%=application.getAttribute("ugroup")%><br />
           </span><br> 
  <span class="style11"><span class="style2"><strong>Your Group Key or Encryption Key:</strong></span>:</span><span class="style12 style10"><%=application.getAttribute("ugkey")%></span><span class="style10"></span>
  </h3>
		  </span>
  <p>&nbsp;</p>
		  
		 
         
           <form action="u_download1.jsp" method="post" name="form1" id="form1">
            <table width="478" border="0" align="center">
              <tr>
                <td width="223"><span class="style9 style10">Enter Patient Name :-</span></td>
                <td width="245"><label>
                  <input required name="t1" type="text" value="" size="40" />
                </label></td>
              </tr>
              <tr>
                <td height="34"><span class="style9 style10">Trapdoor :-</span></td>
                <td><input name="t12" type="text" size="40" /></td>
              </tr>
              <tr>
                <td><span class="style9 style10">Secret Key :-</span></td>
                <td><input name="t13" type="text" size="40" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><label>
                <input type="submit" name="Submit" value="Access Keys" />
                </label></td>
              </tr>
            </table>
          </form>
        
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
