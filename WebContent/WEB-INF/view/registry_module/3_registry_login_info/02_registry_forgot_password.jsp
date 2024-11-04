<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<meta charset="UTF-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="nookandcove">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon"/>
	<script type="text/javascript" src="resources/js/login_reg_validation.js"></script>	
	<script type="text/javascript"> window.onload=function(){ document.register.elements['regUserName'].focus(); }; </script>
	</head>	
		<body>		
		<div id="mainframe" class="section-content"> <div class="container"> <div class="row"> 
        <div align="center" class="col-md-12 col-sm-12"> <form action="regForgotPasswordSendingToEmail" name="register"> <div class="subtitle-section text-center"> <h2>FORGOT PASSWORD</h2> </div> <div align="center" style="margin-top: 50px;"> <table>					
		<c:if test="${not empty forPassErrorPage}"> <tr><td><img src="resources/images/warning.gif" style="position: absolute;"> <font style="color: #c00002; font: 1.1em/1.25em sans-serif; "> &nbsp;&nbsp;&nbsp;&nbsp; ${forPassErrorPage}</font></td></tr> </c:if>
		<tr><td><div align="center"> <input type="text" class="login_frame_cl" id="userEmailId" name="regUserName" placeholder="Email"> </div> </td></tr>
		<tr><td><div align="center"><h4><button class="continue_submit_Btn" id="forgotPassButtonId" style="margin-top: 50px;">Email me a Pin</button></h4></div> </td></tr> </table> </div> </form> </div> <div class="col-md-4 col-sm-6"> </div> </div> </div> </div>		
		</body>	
</html>