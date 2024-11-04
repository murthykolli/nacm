<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>

<html>
	<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="nookandcove">
    <link rel="stylesheet" href="resources/css/registry_shop/1_shop_home.css" type="text/css">
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon" />	
	
	<script type="text/javascript">
	    $(document).ready(function() { var selectedShopRoomName1 = "<c:out value="${selectedShopRoomName}"/>"; var selectedShopRoomNameVal = selectedShopRoomName1.replace(" ", "_"); $("#"+selectedShopRoomNameVal).css("color","red"); $("#"+selectedShopRoomNameVal).css("text-decoration","underline"); });	
		function typeOfRoomForShop(roomName) { document.shopRoomSelectFormName.selectedShopRoomName.value = roomName; $("#shopSelRoomFormId").submit(); }	
		function viewProductsForRegistry(id, count) { document.viewProductsFormName.registryShopViewProducts.value = id; document.viewProductsFormName.shopCBRoomsCount.value = count; $("#viewProductsFormNameId").submit(); }
		function typeOfFinishingTouches(finishingTouchesName) { document.finishingTouchesFormName.finishingTouchesName.value = finishingTouchesName; $("#finishingTouchesFormId").submit(); }
	</script>
	</head>	
		<body>		
		<!-- <div id="mmenu_screen" class="container-fluid main_container top_adjustment_100"> <div class="row rshop_top_bgclr">					    	
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text rshop_scb_bn_pdng" align="center">5% OFF $1000 - $1999 (Code: 5OFF)</div> </div>			      	
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text" align="center"><div class="rshop_scb_bnr_bordl"></div></div> </div>			      	
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text rshop_scb_bn_pdng" align="center">7% OFF $2000 - $2999 (Code: 7OFF)</div> </div>			      	
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text" align="center"><div class="rshop_scb_bnr_bordl"></div></div> </div>			      	
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text rshop_scb_bn_pdng" align="center">10% OFF $3000+ (Code: 10OFF)</div> </div> </div> </div> -->
					
		<div id="mainframe" class="section-content" style="margin-top: 0px;"> <div class="container"> <div class="row top_adjustment_50"> <div class="col-md-12 col-sm-12">				    	
		<div class="reg_con_bord_top_radio_but_box rshop_tcnt_hd_txt"><font class="reg_con_bord_top_txt_fl">R</font><font class="reg_con_bord_top_txt_ll">OOMS</font></div>
		<div class="rshop_con_dev_adj"> <div id="Living_Room" class="cb_room_selection_text" onclick="typeOfRoomForShop('Living Room');"><font class="cb_room_selection_text_fl">L</font>iving <font class="cb_room_selection_text_fl">R</font>oom</div>
		<div id="Dining_Room" class="cb_room_selection_text" onclick="typeOfRoomForShop('Dining Room');"><font class="cb_room_selection_text_fl">D</font>ining <font class="cb_room_selection_text_fl">R</font>oom</div>
		<div id="Bedroom" class="cb_room_selection_text" onclick="typeOfRoomForShop('Bedroom');"><font class="cb_room_selection_text_fl">B</font>edroom</div>
		<div id="Home_Office" class="cb_room_selection_text" onclick="typeOfRoomForShop('Home Office');"><font class="cb_room_selection_text_fl">H</font>ome <font class="cb_room_selection_text_fl">O</font>ffice</div>
		<div id="Entryway" class="cb_room_selection_text" onclick="typeOfRoomForShop('Entryway');"><font class="cb_room_selection_text_fl">E</font>ntryway</div>
		<div id="Nursery" class="cb_room_selection_text" onclick="typeOfRoomForShop('Nursery');"><font class="cb_room_selection_text_fl">N</font>ursery</div>
		<div id="Kids_Bedroom" class="cb_room_selection_text" onclick="typeOfRoomForShop('Kids Bedroom');"><font class="cb_room_selection_text_fl">K</font>ids <font class="cb_room_selection_text_fl">B</font>edroom</div>
		<div id="Outdoor_Space" class="cb_room_selection_text" onclick="typeOfRoomForShop('Outdoor Space');"><font class="cb_room_selection_text_fl">O</font>utdoor <font class="cb_room_selection_text_fl">S</font>pace</div>
									        	
		<div style="border-bottom: 1px solid black; padding-bottom: 3px; width: auto; margin-left: 6px; width: 125px; margin-top: 6px; margin-bottom: 15px;"></div>										
		<div id="Finishing_Touches" class="cb_room_selection_text" onclick="typeOfFinishingTouches('Finishing Touches');"><font class="cb_room_selection_text_fl">F</font>inishing <font class="cb_room_selection_text_fl">T</font>ouches</div>
		</div> </div> </div>
		<div class="row top_adjustment_20"> <div class="col-md-12 col-sm-12"> <div align="left" class="reg_dsn_curated_cb_title_text">
		<h4><font class="reg_dsn_curated_cb_title_fl">C</font><font class="reg_dsn_curated_cb_title_ll">URATED </font> <font class="reg_dsn_curated_cb_title_fl">D</font><font class="reg_dsn_curated_cb_title_ll">ESIGN </font><font class="reg_dsn_curated_cb_title_fl">B</font><font class="reg_dsn_curated_cb_title_ll">OARDS</font></h4> </div> </div>  </div>
		<div class="row top_adjustment_10"> <div class="col-md-12 col-sm-12"> <table> <tbody> <tr class="reg_dsn_curated_cb_rigtext_dspl">
		<td align="left" style="position: relative; left: 0px;"> ${selectedShopRoomName} </td>
		<td align="right" style="position: relative; left: 60px;"><font style="font: bold 1.15em/0.9em Georgia;">${totalShopCBProductsCount}</font> <font style="font: 1.25em/1.25em Georgia;">R</font>ESULTS</td> </tr></tbody> </table> </div> </div>
		<div class="row top_adjustment_20"> <div class="col-md-12 col-sm-12"> <div class="top_adjustment_0">						       
		<%
			if (null != session.getAttribute("shopViewDesignsCBIdsListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopViewDesignsCBIdsList = (ArrayList) session.getAttribute("shopViewDesignsCBIdsListInSn"); if (null != shopViewDesignsCBIdsList && shopViewDesignsCBIdsList.size() > 0) {
			if (null != session.getAttribute("shopViewDesignsCBImagesListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopViewDesignsCBImagesList = (ArrayList) session.getAttribute("shopViewDesignsCBImagesListInSn"); if (null != shopViewDesignsCBImagesList && shopViewDesignsCBImagesList.size() > 0) {						   
		%> <div class="row" style="margin-top: 5px;">
		<% 
			for(int i=0; i<shopViewDesignsCBIdsList.size(); i++) { int count = (i + 1); byte[] conBoardsImagesFromDB = (byte[]) shopViewDesignsCBImagesList.get(i); String conceptBoardsBigImage = null;
			if(null != conBoardsImagesFromDB) { String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(conBoardsImagesFromDB); conceptBoardsBigImage = "data:image/jpg;base64," +b64; }					
		%>
		<div class="col-md-6 col-sm-6" id="imageDspId<%=count%>" style="margin-bottom: 30px;">		        	
		<div onclick="viewProductsForRegistry('<%=shopViewDesignsCBIdsList.get(i)%>', '<%=i%>');">
		<div class="image_mouse_over_dsp" align="center"> <img src="<%=conceptBoardsBigImage%>" class="image_disply_proper_cl">
		<div class="middle"> <div class="text">VIEW</div> </div> </div> </div> </div>						 	
		<% } %> </div>						 			
		<% } } } } %> </div> </div>  </div> </div> </div>		
	    <form action="shopViewAllDesignsConcepts" id="shopSelRoomFormId" name="shopRoomSelectFormName" method="GET"> <input type="hidden" id="selectedShopRoomNameId" name="selectedShopRoomName"> </form>
        <form action="viewShopDesignSelectedConcepts" id="viewProductsFormNameId" name="viewProductsFormName" method="GET">
        <input type="hidden" id="registryShopViewProductsId" name="registryShopViewProducts"> <input type="hidden" id="shopCBRoomsCountId" name="shopCBRoomsCount"> <input type="hidden" id="selectedShopRoomNameId" name="selectedShopRoomName" value="${selectedShopRoomName}">
        <%-- <input type="hidden" id="registryStyleNameId" name="registryStyleName" value="${registryStyleName}"> <input type="hidden" id="registryPriceId" name="registryPrice" value="${registryPrice}"> --%> </form>
        <form action="shopSelectedFinishingTouches" id="finishingTouchesFormId" name="finishingTouchesFormName" method="POST"> 
      		<input type="hidden" id="finishingTouchesNameId" name="finishingTouchesName"> 
      		<input type="hidden" id="registryCBRoomCountId" name="registryCBRoomCount" value="0"> 
      	</form>             
		</body>
</html>
