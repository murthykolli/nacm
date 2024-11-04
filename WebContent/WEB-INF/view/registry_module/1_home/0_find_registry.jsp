<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<html>    
    <head>        
    <meta charset="UTF-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="nookandcove">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="resources/css/registry_css/registry_landing.css">
    
	<script type="text/javascript">
	$(document).ready(function() { var foundNameStatus = "<c:out value="${findNameStatus}"/>"; if(foundNameStatus !== "") { alert("No records available"); } });	
	function checkFirstChar(key, txt) { if(key == 32 && txt.value.length<=0) { return false; } else if(txt.value.length>0) { if(txt.value.charCodeAt(0) == 32) { txt.value=txt.value.substring(1,txt.value.length); return true; } } return true; }	
	function regSearchNamesList() { var input, filter, ul, li, a, i; input = document.getElementById("reg_search_Input_id"); filter = input.value.toUpperCase(); ul = document.getElementById("reg_search_ul_id"); li = ul.getElementsByTagName("li");
	if(filter !== "") { ul.style.display = "block"; } else { ul.style.display = "none"; } var totCount = li.length; var chCount = 0; for (i = 0; i < li.length; i++) { a = li[i].getElementsByTagName("span")[0]; var ancVal = a.innerHTML.toUpperCase().replace(/\&AMP;/g,"&"); if (ancVal.indexOf(filter) > -1) { li[i].style.display = ""; } else { chCount = chCount + 1; li[i].style.display = "none"; } }
	if(totCount === chCount) { document.getElementById("noResultId").style.display = "block"; } else { document.getElementById("noResultId").style.display = "none"; } }
	</script>
	</head>
	
		<body class="rindex_mob_top_oxh">							
		<div id="mainframe" class="section-content"> <div class="container"> <div class="row top_adjustment_40"> <div class="col-md-1 col-sm-1"></div> <div class="col-md-10 col-sm-10" align="center"> <img src="resources/images/registry/find_reg_img.png" class="img-responsive">        
        <div class="row"> <div class="col-md-4 col-sm-4"></div> <div class="col-md-4 col-sm-4" align="center" style="margin-top: -145px;"> <input type="text" class="img-responsive" id="reg_search_Input_id" onkeyup="regSearchNamesList()" placeholder="Enter name" title="Type in a name"> <ul id="reg_search_ul_id" class="img-responsive top_adjustment_5">
		<%	if (null != session.getAttribute("reg_User_Ids_List")) { @SuppressWarnings("rawtypes") ArrayList regUserIdsList = (ArrayList) session.getAttribute("reg_User_Ids_List"); if (null != regUserIdsList && regUserIdsList.size() > 0) {		
		   	if (null != session.getAttribute("reg_User_Images_List")) { @SuppressWarnings("rawtypes") ArrayList regUserImagesList = (ArrayList) session.getAttribute("reg_User_Images_List"); if (null != regUserImagesList && regUserImagesList.size() > 0) {
           	if (null != session.getAttribute("reg_User_Dates_List")) { @SuppressWarnings("rawtypes") ArrayList regUserNamesList = (ArrayList) session.getAttribute("reg_User_Names_List"); if (null != regUserNamesList && regUserNamesList.size() > 0) {
    	   	if (null != session.getAttribute("reg_User_Dates_List")) { @SuppressWarnings("rawtypes") ArrayList regUserDatesList = (ArrayList) session.getAttribute("reg_User_Dates_List"); if (null != regUserDatesList && regUserDatesList.size() > 0) {
           	if (null != session.getAttribute("reg_User_URLs_List")) { @SuppressWarnings("rawtypes") ArrayList regUserURLsList = (ArrayList) session.getAttribute("reg_User_URLs_List"); if (null != regUserURLsList && regUserURLsList.size() > 0) {
			for(int i=0;i<regUserIdsList.size(); i++){
		%>				 
		<li><a href="registry/<%=regUserURLsList.get(i)%>">		
		<font class="rfind_reg_prg_cl"> <img align="left" class="reg_search_img_resize_dsp img-responsive" src="<%=regUserImagesList.get(i)%>"/> </font>			
		<font class="rfind_reg_pdnlft_cl"> <span class="rfind_reg_fwtxta_cl"><%=regUserNamesList.get(i)%></span><br> <font class="rfind_reg_txtamlt_cl"><%=regUserDatesList.get(i)%></font> </font> </a></li>		
		<% } } } } } } } } } } } %>			
		<li class="rfind_reg_dsplcr_cl" id="noResultId"><a href="#" class="rfind_reg_clrcurs_cl" onMouseOver="this.style.background='white';" onMouseOut="this.style.background='white';"><span class="rfind_reg_mgrlsg">Sorry, there's no registry under that name</span> </a></li>
		</ul> </div></div> <div class="col-md-4 col-sm-4"></div> </div> <div class="col-md-1 col-sm-1"></div> </div> <div class="rfind_reg_hton_cl"></div> </div> </div>
        <div class="rfind_reg_dspon_cl">Find A REGISTRY</div>
		</body>
</html>