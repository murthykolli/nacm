<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="nookandcove">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon"/>
    <script type="text/javascript" src="resources/js/referral_login/referral_signup_validation.js"></script>
	<link rel="stylesheet" href="resources/css/referral_login/referral_login.css">
	
	<script type="text/javascript"> window.onload=function(){ document.register.elements['securityPin'].focus(); }; </script> 
	
</head>
	<body>
	<div id="mainframe" class="section-content"> <div class="container"> <div class="row"> <div class="col-md-12 col-sm-12"> <div class="service-item service_item_align"> <div class="service-description"> <div class="referral_sec_pin_login_frame">	            		
	<div align="center"><font class="referral_login_hd_fl_dsp">S</font><font class="referral_login_hd_nl_dsp">ECURITY </font><font class="referral_login_hd_fl_dsp">P</font><font class="referral_login_hd_nl_dsp">IN </font></div>
	<form action="referralForgotPassSecPinChecking" name="login" method="post"> <div class="top_adjustment_40" align="center">
	<c:if test="${not empty forPassSeqPinErrorPage}"> <table style="margin-top: -20px;"> <tr><td><img src="resources/images/warning.gif" alt="nookandcove warning" style="position: absolute;"> <font style="color: #c00002; font: 1.1em/1.25em sans-serif; "> &nbsp;&nbsp;&nbsp;&nbsp; ${forPassSeqPinErrorPage}</font></td></tr> </table> </c:if>
	<c:if test="${not empty secPinMessage}"> <table> <tr id="logOutMsgId"><td><font style="font: 1.05em/1.25em sans-serif; color: #2b81ee; margin-top: -20px;"> ${secPinMessage}</font></td></tr> </table> </c:if>
	<table> <tr><td><input type="text" id="securityPinId" name="securityPin" class="reff_sec_pin_input_box_disp" maxLength="8" placeholder="Security PIN"> </td></tr>
	<tr><td><input id="newPasswordId" type="password" name="newPassword" class="reff_sec_pin_input_box_disp" placeholder="New password"> </td></tr>
	<tr><td><input id="confirmPasswordId" type="password" name="confirmPassword" class="reff_sec_pin_input_box_disp" placeholder="Confirm password"> </td></tr>
	<tr><td align="center"><h4><button class="referral_signin_sub_buttn" id="referralSecurityPinButtonId" style="margin-top: 40px; width: 220px;">Save Password</button></h4></td></tr> </table> </div> </form> </div> </div> </div> </div> </div> </div> </div>
</body>
</html>