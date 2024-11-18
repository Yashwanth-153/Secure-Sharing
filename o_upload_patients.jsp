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
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>
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
            
            </span>          </p>
          <p>&nbsp;</p>
          <form id="form1" name="form1" method="post" action="o_upload_patients1.jsp">
          <table width="598" border="0" align="center">
            <tr>
              <td bgcolor="#FFFF00"><span class="style2"><strong>Patient Name </strong></span></td>
              <td><input type="text" name="textfield" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00"><span class="style2"><strong>Patient Address </strong></span></td>
              <td><textarea name="textfield2"></textarea></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00"><span class="style2"><strong>Patient Email Id </strong></span></td>
              <td><input type="text" name="textfield3" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00"><span class="style2"><strong>Patient Age </strong></span></td>
              <td><input type="text" name="textfield4" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00"><span class="style2"><strong>Patient Symptoms </strong></span></td>
              <td><input type="text" name="textfield5" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00"><span class="style2"><strong>Patient Disease </strong></span></td>
              <td><input type="text" name="textfield6" /></td>
            </tr>
            <tr>
              <td width="286" bgcolor="#FFFF00"><span class="style4 style2"><strong>Select Report :- </strong></span></td>
              <td width="356"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00" class="style4"><span class="style2"><strong>Report Name :- </strong></span></td>
              <td><input required="required" name="tt" type="text" id="t42" size="50"/></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00"><span class="style2"></span></td>
              <td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
            </tr>
            <tr>
              <td bgcolor="#FFFF00"><span class="style4 style2"><strong>Trapdoor :- </strong></span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
            <tr>
              <td><div align="right"></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
            </tr>
          </table>
      </form>
        
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
