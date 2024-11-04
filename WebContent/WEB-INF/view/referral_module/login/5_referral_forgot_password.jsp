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
	
</head>
	<body>
	<div id="mainframe" class="section-content"> <div class="container"> <div class="row">
	<div class="col-md-12 col-sm-12"> <div class="service-item service_item_align"> <div class="service-description"> <div align="center" class="referral_forgot_login_frame">
	<div align="center"><font class="referral_login_hd_fl_dsp">F</font><font class="referral_login_hd_nl_dsp">ORGOT </font><font class="referral_login_hd_fl_dsp">P</font><font class="referral_login_hd_nl_dsp">ASSWORD </font></div>
	<form action="referralForgotPasswordSendingToEmail" name="login" method="post">
	<div class="top_adjustment_40" align="center"> <table>					
	<c:if test="${not empty forPassErrorPage}"> <tr style="position: absolute; top: 85px;"><td><img src="resources/images/warning.gif" style="position: absolute;"> <font style="color: red; font: 1.1em/1.25em sans-serif; "> &nbsp;&nbsp;&nbsp;&nbsp; ${forPassErrorPage}</font></td></tr> </c:if>
	<tr><td><input type="text" class="reff_input_box_disp" id="referralUserEmailId" name="referralUserEmail" placeholder="Email"> </td></tr>
	<tr><td align="center"><h4><button class="referral_signin_sub_buttn" id="referralForgotPassButtonId" style="margin-top: 40px;">Email me a Pin</button></h4></td></tr> </table> </div> </form> </div> </div> </div> </div> </div> </div> </div>
	</body>
</html>