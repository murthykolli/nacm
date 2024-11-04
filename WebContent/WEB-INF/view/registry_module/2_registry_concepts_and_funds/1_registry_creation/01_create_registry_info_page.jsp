
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>

<html>
	<meta charset="UTF-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="nookandcove">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="resources/css/registry_css/registry_landing.css">
	<script type="text/javascript" src="resources/js/create_registry_validation.js"></script>	
	<style type="text/css"> @font-face { font-family: 'Allura-Regular'; src: url('resources/sitefonts/Allura-Regular.ttf') format('truetype'); } </style>
		
	<script type="text/javascript">
 	$(function () { var ddlYears = $("#eventYearId"); var currentYear = (new Date()).getFullYear(); for (var i = currentYear; i <= currentYear+50; i++) { var option = $("<option />"); option.html(i); option.val(i); ddlYears.append(option); } });
	function noOfdaysDisplay(month) { $('#eventDayId')[0].options.length = 0; var currentYearName = (new Date()).getFullYear(); var getDaysInMonth = new Date(currentYearName, $("#eventMonthId").val(), 0).getDate(); var noOfDaysDsp = $("#eventDayId"); noOfDaysDsp.append("<option value=''>--Day--</option>"); for (var i = 1; i <= getDaysInMonth; i++) { var option = $("<option />"); option.html(i); option.val(i); noOfDaysDsp.append(option); } }	
 	$(document).ready(function() { 		
 	    var eventType1 = '<c:out value="${eventType}"/>'; var eventMonth1 = '<c:out value="${eventMonth}"/>'; var eventDay1 = '<c:out value="${eventDay}"/>'; var eventYear1 = '<c:out value="${eventYear}"/>'; var regUserName1 = '<c:out value="${regUserName}"/>'; var regFirstName1 = '<c:out value="${regFirstName}"/>'; var regLastName1 = '<c:out value="${regLastName}"/>'; var coRegFirstName1 = '<c:out value="${coRegFirstName}"/>';
	    var coRegLastName1 = '<c:out value="${coRegLastName}"/>'; var regAddress1 = '<c:out value="${regAddress}"/>'; var password1 = '<c:out value="${password}"/>'; var regSocialMedia1 = '<c:out value="${regSocialMedia}"/>'; var regVendorCouponId1 = '<c:out value="${regVendorCouponId}"/>';
 	    $("[name=eventType]").val(eventType1); $("[name=eventMonth]").val(eventMonth1); $("[name=eventDay]").val(eventDay1); $("[name=eventYear]").val(eventYear1); $("[name=regUserName]").val(regUserName1); $("[name=regFirstName]").val(regFirstName1); $("[name=regLastName]").val(regLastName1); $("[name=coRegFirstName]").val(coRegFirstName1); $("[name=coRegLastName]").val(coRegLastName1); $("[name=regAddress]").val(regAddress1); $("[name=password]").val(password1); $("[name=verifyPassword]").val(password1); $("[name=socialMediaReff]").val(regSocialMedia1); $("[name=vendorCouponCode]").val(regVendorCouponId1);	    
        $('input[type="checkbox"]').click(function() { if($(this).prop("checked") == true){ $("#eventMonthId").val(null); $("#eventDayId").val(null); $("#eventYearId").val(null); $("#eventDateIdLabel").css("color","black"); } }); var regErrorPage1 = '<c:out value="${regErrorPage}"/>'; var regAddrErrorPage1 = '<c:out value="${regAddrErrorPage}"/>'; var dateCheckOption1 = '<c:out value="${dateCheckOption}"/>';
        if(dateCheckOption1 === "Date coming soon") { $('#dateCheckOptionId').prop('checked', true); }        
        if(regErrorPage1 === "This e-mail already exists!") { $("#page4DivDisplayRefId").show(); $("#page1DivDisplayRefId").hide(); }        
		if(regAddrErrorPage1 === "Please create your custom url!") { $("#page6DivDisplayRefId").show(); $("#page1DivDisplayRefId").hide(); } }); 	
    </script>
	</head>
	
		<body>		
		<div id="mainframe" class="section-content"> <div class="container"> <div class="row top_adjustment_10"> <div class="col-md-1 col-sm-1"></div>
		<div class="col-md-10 col-sm-10" > <div style="background-image: url(resources/images/registry/create_a_registry/create_a_registry_image.jpg); background-repeat: no-repeat; height: 530px; " class="img-responsive" ></div> <div class="row top_adjustment_10"> <div class="col-md-2 col-sm-2"></div> <div class="col-md-8 col-sm-8">
		<!-- Page1 Display code -->
		<div id="page1DivDisplayRefId" class="frame_height_display_cl"> <div align="right"><font class="reg_red_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font></div> <div class="cr_frame_display_box_cl">
		<div align="center" class="top_adjustment_60"><img src="resources/images/registry/create_a_registry/reg_page1_cint_text_img.png" class="img-responsive" style="padding: 15px;"></div> <div align="center" class="reg_page1_small_text_dsp top_adjustment_0">A few quick questions to help you get set up...</div>
		<div align="center" class="top_adjustment_20"><h4><button class="reg_page1_sub_button" id="page1NextPageDispRefId">Start</button></h4></div> </div> </div>
		
		<!-- Page2 Display code -->
		<div id="page2DivDisplayRefId" class="frame_height_display_cl rsinup_all_ndsp"> <div align="right"><font class="reg_black_dots_dsp">.</font> <font class="reg_red_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font></div>
		<div class="cr_frame_display_box_cl"> <div align="center"> <div class="reg_page2_heading_top_text_dsp top_adjustment_30"> <h3>Event Information</h3> </div> <div align="center" class="rsinup_all_bbar_line_dsp"></div>
		<div align="center"> <table class="rsinup_md_mtw_cl"><tbody>
		<tr><td class="reg_input_heading_text_dsp" id="eventTypeIdLabel" align="left">Event*: &nbsp;&nbsp;</td><tr>							
		<tr><td align="left"><select id="eventTypeId" name="eventType" class="reg_page2_select_box rsinup_sntxtf_wt"> <option value=''>Please Select Event </option>	<option value='Wedding'>Wedding</option> <option value='CommitmentCeremony'>Commitment Ceremony</option> <option value='Anniversary'>Anniversary</option> <option value='Housewarming'>Housewarming</option> <option value='Birthday'>Birthday</option> <option value='BridalShower'>Bridal Shower</option> <option value='BabyShower'>Baby Shower</option> <option value='Celebration'>Celebration</option></select></td></tr>
		<tr><td class="reg_input_heading_text_dsp" id="eventDateIdLabel" align="left">Event Date*: &nbsp;&nbsp;</td></tr>
		<tr><td align="left"><select id="eventMonthId" name="eventMonth" class="reg_page2_select_sub_box1 rsinup_sntxtf_wt"> <option value=''>Month</option> <option value='1'>January</option> <option value='2'>February</option> <option value='3'>March</option> <option value='4'>April</option> <option value='5'>May</option> <option value='6'>June</option> <option value='7'>July</option> <option value='8'>August</option> <option value='9'>September</option> <option value='10'>October</option> <option value='11'>November</option> <option value='12'>December</option> </select></td></tr>									
		<tr><td align="left"><select id="eventDayId" name="eventDay" class="reg_page2_select_sub_box2 rsinup_sntxtf_wt"> <option value=''>Day</option> </select></td></tr>							
		<tr><td align="left"><select id="eventYearId" name="eventYear" class="reg_page2_select_sub_box3 rsinup_sntxtf_wt"> <option value=''>Year</option> </select></td></tr>
		<tr><td align="left"><input type="checkbox" name="dateCheckOption" id="dateCheckOptionId"> <font class="reg_page2_check_box_text_dsp">We haven't set a date yet</font></td></tr> </tbody></table> </div>
		<div class="rsinup_all_thmtaj_cl"> <table class="rsinup_atbl_frm_adj">
		<tr><td align="left" class="rsinup_all_curpon"><font class="rsinup_all_curpon" id="page2PreviousPageDispRefId"><img src="resources/images/registry/create_a_registry/registry_back_image.jpg" title="PREVIOUS"/></font></td>
		<td align="right"><font class="reg_page2_next_butt_text_dsp" id="page2NextPageDispRefId">NEXT &nbsp;&nbsp;<img src="resources/images/registry/create_a_registry/registry_next_image.jpg" title="NEXT"/></font></td></tr> </table> </div> </div> </div> </div>
							
		<!-- Page3 Display code -->
		<div id="page3DivDisplayRefId" class="frame_height_display_cl rsinup_all_ndsp"> <div align="right"><font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_red_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font></div>
		<div class="cr_frame_display_box_cl"> <div align="center"> <div class="reg_page2_heading_top_text_dsp top_adjustment_30"> <h3>Contact Information</h3> </div> <div align="center" class="rsinup_all_bbar_line_dsp"></div> <div>	
		<table class="rsinup_trdr_mt_wt"><tbody> <tr><td class="reg_input_heading_text_dsp" align="left">Your Name*: &nbsp;&nbsp;</td></tr>							
		<tr><td align="left"><input type="text" id="regFirstNameId" name="regFirstName" placeholder="First" maxLength="25" class="reg_page3_textfield_box" onkeyup = "checkFirstChar(event.keyCode, this);" onkeydown = "return checkFirstChar(event.keyCode, this);" autocomplete="off"></td></tr>
		<tr><td align="left"><input type="text" id="regLastNameId" name="regLastName" placeholder="Last" maxLength="15" class="reg_page3_textfield_box" onkeyup = "checkFirstChar(event.keyCode, this);" onkeydown = "return checkFirstChar(event.keyCode, this);" style="margin-left: 0px;" autocomplete="off"></td></tr> <tr class="rsinup_trhtf_dsp"><td></td><td></td><td></td></tr>
		<tr><td class="reg_input_heading_text_dsp" align="left">Co-Registrant's Name: &nbsp;&nbsp;</td></tr>							
		<tr><td align="left"><input type="text" id="coRegFirstNameId" name="coRegFirstName" placeholder="First" maxLength="25" class="reg_page3_textfield_box" onkeyup = "checkFirstChar(event.keyCode, this);" onkeydown = "return checkFirstChar(event.keyCode, this);" autocomplete="off"></td></tr>
		<tr><td align="left"><input type="text" id="coRegLastNameId" name="coRegLastName" placeholder="Last" maxLength="15" class="reg_page3_textfield_box" onkeyup = "checkFirstChar(event.keyCode, this);" onkeydown = "return checkFirstChar(event.keyCode, this);" style="margin-left: 0px;" autocomplete="off"></td></tr> </tbody></table> <div class="rsinup_trhts_dsp"></div> </div>
		<div class="rsinup_all_thmtaj_cl"> <table class="rsinup_atbl_frm_adj">
		<tr><td align="left" class="rsinup_all_curpon"><font class="rsinup_all_curpon" id="page3PreviousPageDispRefId"><img src="resources/images/registry/create_a_registry/registry_back_image.jpg" title="PREVIOUS"/></font></td>
		<td align="right"><font class="reg_page2_next_butt_text_dsp" id="page3NextPageDispRefId">NEXT &nbsp;&nbsp;<img src="resources/images/registry/create_a_registry/registry_next_image.jpg" title="NEXT"/></font></td></tr> </table> </div> </div> </div> </div>
							
		<!-- Page4 Display code -->
		<div id="page4DivDisplayRefId" class="frame_height_display_cl rsinup_all_ndsp"> <div align="right"><font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_red_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font></div>
		<div class="cr_frame_display_box_cl"> <div align="center"> <div class="reg_page2_heading_top_text_dsp top_adjustment_30"> <h3>Create Account</h3> </div> <div align="center" class="rsinup_all_bbar_line_dsp"></div> <div>											
		<div align="center"> <table class="rsinup_fthr_mt_wt"><tbody> <c:if test="${not empty regErrorPage}"> <tr style="position: absolute; margin-top: -35px;"> <td><img src="resources/images/warning.gif" style="position: absolute;"> <font style="color: red; font: 0.9em/1.25em sans-serif; "> &nbsp;&nbsp;&nbsp;&nbsp; ${regErrorPage}</font></td></tr> </c:if>
		<tr><td class="reg_input_heading_text_dsp" align="left">Email*: &nbsp;&nbsp;</td></tr>							
		<tr><td align="left"><input type="text" id="regEmailId" name="regUserName" class="reg_page4_textfield_box" style="width: 200px; margin-top: 0px;" onkeyup = "checkFirstChar(event.keyCode, this);" onkeydown = "return checkFirstChar(event.keyCode, this);"></td></tr> <tr style="height: 12px;"><td></td><td></td><td></td></tr>
		<tr><td class="reg_input_heading_text_dsp" align="left">Password*: &nbsp;&nbsp;</td></tr>							
		<tr><td align="left"><input type="password" id="createPasswordId" name="password" class="reg_page4_textfield_box" style="width: 200px; margin-top: 0px;" onkeyup = "checkFirstChar(event.keyCode, this);" onkeydown = "return checkFirstChar(event.keyCode, this);"></td></tr> <tr style="height: 12px;"><td></td><td></td><td></td></tr>
		<tr><td class="reg_input_heading_text_dsp" align="left">Verify Password*: &nbsp;&nbsp;</td></tr>							
		<tr><td align="left"><input type="password" id="verifyPasswordId" name="verifyPassword" class="reg_page4_textfield_box" style="width: 200px; margin-top: 0px;" onkeyup = "checkFirstChar(event.keyCode, this);" onkeydown = "return checkFirstChar(event.keyCode, this);"></td></tr> </tbody></table> </div> <div style="height: 25px;"></div> </div>
		<div class="rsinup_all_thmtaj_cl"> <table class="rsinup_atbl_frm_adj">
		<tr><td align="left" class="rsinup_all_curpon"><font class="rsinup_all_curpon" id="page4PreviousPageDispRefId"><img src="resources/images/registry/create_a_registry/registry_back_image.jpg" title="PREVIOUS"/></font></td>
		<td align="right"><font class="reg_page2_next_butt_text_dsp" id="page4NextPageDispRefId">NEXT &nbsp;&nbsp;<img src="resources/images/registry/create_a_registry/registry_next_image.jpg" title="NEXT"/></font></td></tr> </table> </div> </div> </div> </div>
												
		<!-- Page5 Display code -->
		<div id="page5DivDisplayRefId" class="frame_height_display_cl rsinup_all_ndsp"> <div align="right"><font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_red_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font></div>
		<div class="cr_frame_display_box_cl"> <div align="center"> <div class="reg_page2_heading_top_text_dsp top_adjustment_30"> <h3>Create Account</h3> </div> <div align="center" class="rsinup_all_bbar_line_dsp"></div> <div style="padding: 30px 20px; margin-top: 33px;">
		<table><tbody> <tr><td class="reg_input_heading_text_dsp" align="right">Where did you hear about us? &nbsp;&nbsp;</td> </tr> <tr style="height: 10px;"><td></td><td></td><td></td></tr>							
		<tr><td><select id="socialMediaReffId" name="socialMediaReff" class="reg_page5_sm_select_box"> <option value=''>---- Please Select ---- </option>	<option value='Facebook'>Facebook</option> <option value='Instagram'>Instagram</option> <option value='Pinterest'>Pinterest</option> <option value='Twitter'>Twitter</option> <option value='Google Search'>Google Search</option> <option value='Blog'>Blog</option> <option value='Wedding Vendor'>Wedding Vendor</option></select></td></tr> <tr style="height: 12px;"><td></td><td></td><td></td></tr>
		<tr> <td class="reg_input_heading_text_dsp">Please enter a referral code <br>if you have one: &nbsp;&nbsp;</td> </tr> <tr style="height: 10px;"><td></td><td></td><td></td></tr>						
		<tr> <td><input type="text" id="vendorCouponCodeId" name="vendorCouponCode" maxLength="60" class="reg_vender_id_text_field_dsp"></td></tr> <tr style="height: 17px;"><td></td><td></td><td></td></tr> </tbody></table> </div>
		<div class="rsinup_all_thmtaj_cl"> <table class="rsinup_atbl_frm_adj"> 
		<tr><td align="left" class="rsinup_all_curpon"><font class="rsinup_all_curpon" id="page5PreviousPageDispRefId"><img src="resources/images/registry/create_a_registry/registry_back_image.jpg" title="PREVIOUS"/></font></td>
		<td align="right"><font class="reg_page2_next_butt_text_dsp" id="page5NextPageDispRefId">NEXT &nbsp;&nbsp;<img src="resources/images/registry/create_a_registry/registry_next_image.jpg" title="NEXT"/></font></td></tr> </table> </div> </div> </div> </div>
																			
		<!-- Page6 Display code -->
		<div id="page6DivDisplayRefId" class="frame_height_display_cl rsinup_all_ndsp">		
		<div align="right"><font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_black_dots_dsp">.</font> <font class="reg_red_dots_dsp">.</font></div>
		<div class="cr_frame_display_box_cl"> <div align="center"> <div class="reg_page2_heading_top_text_dsp top_adjustment_30"> <h3>Your Registry Page</h3> </div> <div align="center" class="rsinup_all_bbar_line_dsp"></div> <div>											
		<div align="center"> <div class="reg_page5_subheading_text_dsp top_adjustment_30"><h3>What do you want your address to be? </h3></div>	
		<table class="rsinup_md_mtw_cl"><tbody> <c:if test="${not empty regAddrErrorPage}"> <tr style="position: relative; top: -15px;"><td align="right"><img src="resources/images/warning.gif" style="position: absolute;"> <font style="color: #c00002; font: 0.9em/1.25em sans-serif;"> &nbsp;&nbsp;&nbsp;&nbsp; ${regAddrErrorPage}</font></td></tr></c:if>
		<tr><td class="reg_page5_ulr_text_dsp">https://www.nookandcove.com/registry/<input type="text" id="yourAddressId" name="regAddress" class="reg_page5_text_field_box"></td></tr> </tbody></table>
		<table style="margin-left: 0px; width: 200px; margin-top: 20px; font: 1.05em/1.25em Georgia; color: black; letter-spacing: 1px;" ><tbody>
		<tr><td><input type="checkbox" style="box-shadow: 2px 2px 1px #6a6a6a;" id="checkBoxReffNameId" name="checkBoxReffName" value=""/></td>
		<td><p>&nbsp;&nbsp;I accept the <a target="_blank" href="regTermsPopupDisplay" style="text-decoration: underline; color: black; cursor: pointer;" onmouseover="this.style.color='red';" onmouseout="this.style.color='black';">Terms</a> and <a target="_blank" href="regPrivacyPolicyPopupDisplay" style="cursor: pointer; color: black; text-decoration: underline;" onmouseover="this.style.color='red';" onmouseout="this.style.color='black'">Privacy Policy</a></p></td></tr> </tbody></table> </div> </div>
		<form action="registryDataSaving" method="post" name="registryName"> <div class="top_adjustment_30"><h4><button class="reg_page1_sub_button" id="letsDoThisReffId">Let's Do This!</button></h4></div>	
		<input type="hidden" name="eventType" id="regEventTypeId"> <input type="hidden" name="eventMonth" id="regEventMonthId"> <input type="hidden" name="eventDay" id="regEventDayId"> <input type="hidden" name="eventYear" id="regEventYearId"> <input type="hidden" name="dateCheckOption" id="regDateCheckOptionId"> <input type="hidden" name="regUserName" id="regiEmailId"> <input type="hidden" name="regFirstName" id="regiFirstNameId"> <input type="hidden" name="regLastName" id="regiLastNameId"> <input type="hidden" name="coRegFirstName" id="coRegiFirstNameId">
		<input type="hidden" name="coRegLastName" id="coRegiLastNameId"> <input type="hidden" name="password" id="regCreatePasswordId"> <input type="hidden" name="regAddress" id="regYourAddressId"> <input type="hidden" name="regSocialMedia" id="regSocialMediaId"> <input type="hidden" name="regVendorCouponId" id="regVendorCouponCodeId">
		</form> <div class="rsinup_all_thmtaj_cl"> <table class="rsinup_atbl_frm_adj">
		<tr><td align="left" class="rsinup_all_curpon"><font class="rsinup_all_curpon" id="page6PreviousPageDispRefId"><img src="resources/images/registry/create_a_registry/registry_back_image.jpg" title="PREVIOUS"/></font></td> <td align="right"></td></tr> </table> </div> </div> </div> </div>
  			
  		<!-- Already Registry link code -->
		<div align="center" class="top_adjustment_22"><font class="reg_alr_reg_text_dsp">Already registered?&nbsp; </font><a href="registryLogin" class="reg_signin_text_dsp">Sign In</a></div> </div>
		<div class="col-md-2 col-sm-2"></div> </div> </div> <div class="col-md-1 col-sm-1"></div> </div> </div> </div>		
        </body>
</html>
