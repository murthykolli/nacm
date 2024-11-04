<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
	<meta charset="UTF-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="nookandcove">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon"/>
	<script type="text/javascript" src="resources/js/login_reg_validation.js"></script>

	<script type="text/javascript"> window.onload=function(){ document.register.elements['securityPin'].focus(); }; </script>

	</head>	
		<body>		
		<div id="mainframe" class="section-content"> <div class="container"> <div class="row"> <div class="col-md-12 col-sm-12"> </div> <div class="col-md-12 col-sm-12">                
	    <form action="regForgotPassSecPinChecking" name="register" method="post"> 
	    <div class="subtitle-section text-center"> <h2>Security PIN</h2> </div>					
		<div align="center" class="top_adjustment_50"> <table>								
		<c:if test="${not empty forPassSeqPinErrorPage}"> <tr><td><img src="resources/images/warning.gif" style="position: absolute;"> <font style="color: #c00002; font: 1.1em/1.25em sans-serif; "> &nbsp;&nbsp;&nbsp;&nbsp; ${forPassSeqPinErrorPage}</font></td></tr> </c:if>
		<c:if test="${not empty secPinMessage}"> <tr id="logOutMsgId"><td><font style="font: 1.0em/1.25em sans-serif; color: #2b81ee; position: absolute; margin-top: -20px; width: 270px;"> ${secPinMessage}</font></td></tr> </c:if> <tr><td style="height: 15px;"></td></tr>		
		<tr><td><div align="center"><input type="text" id="securityPinId" class="login_frame_cl" name="securityPin" maxLength="8" placeholder="Security PIN"> </div> </td></tr>
		<tr><td><div align="center"><input id="newPasswordId" type="password" class="login_frame_cl" name="newPassword" placeholder="New password"> </div> </td></tr>
		<tr><td><div align="center"><input id="confirmPasswordId" type="password" class="login_frame_cl" name="confirmPassword" placeholder="Confirm password"> </div> </td></tr> <tr><td style="height: 25px;"></td></tr>
		<tr><td><div align="center"><h4><button class="continue_submit_Btn" id="secPinButtonId">Save Password</button></h4></div></td></tr> </table> </div> </form> </div> <div class="col-md-4 col-sm-6"> </div> </div> </div> </div>		
		</body>	
</html>