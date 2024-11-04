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
	<script type="text/javascript" src="resources/js/popup/shop_popup_cb_products_info_dsp.js"></script>
	<script type="text/javascript" src="resources/js/popup/lightbox-2.6.min.js" ></script>
    <link rel="stylesheet" href="resources/css/popup/lightbox_for_registry.css" media="screen"/>
    <script async defer src="//assets.pinterest.com/js/pinit.js"></script>
	
	<script type="text/javascript">	
	$(document).ready(function () { $('.big_top_image_dsp').click(function() { var viewImgs = $(this).attr("src"); $("#bigTopimageIdDsp").attr("href", viewImgs); });
	$('.big_image_dsp').click(function() { var viewImgs = $(this).attr("src"); var imgId = $(this).attr("id"); $("#"+imgId+"Dsp").attr("href", viewImgs); });
	var words = $('#cbShopRoomFNameTextId').text().split(' '); var html = ''; $.each(words, function() { html += '<span class="first_letter_dsp">'+this.substring(0,1)+'</span>'+this.substring(1) + ' '; }); $('#cbShopRoomFNameTextId').html(html); });		
	function addProductToRegistryLanding() { alert("This product has been added to your Cart"); }		
	</script>
	<style type="text/css">	
	.mreg_con_bor_tooltxt { font: 0.7em/1.25em Georgia; letter-spacing: 1px; color: black; text-align: left; margin-bottom: 13px; }	
	.mytooltip1 .mytext1 { visibility: hidden; width: 180px; background-color: #1f4e79; color: #fff; z-index: 1; top: -88px; right: 170%; border-radius: 6px; padding: 16px; position: absolute; font: normal 0.95em/1.35em Georgia; text-align: left; letter-spacing: 1px; box-shadow: -4px 4px #bababa; text-transform: uppercase; }
    .mytooltip1 { position: relative; display: inline-block; margin-left: 50px; } 
    .mytooltip1 .mytext1:after { content: ""; position: absolute; top: 50%; left: 100%; margin-top: -5px; border-width: 6px; border-style: solid; border-color: transparent transparent transparent #3c3c3c; }
    .mytooltip1:hover .mytext1 { visibility: visible; }
	</style>
	</head>
	
		<body>		
		<!-- <div id="mmenu_screen" class="container-fluid main_container top_adjustment_100"> <div class="row rshop_top_bgclr">					    	
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text rshop_scb_bn_pdng" align="center">5% OFF $1000 - $1999 (Code: 5OFF)</div> </div>
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text" align="center"><div class="rshop_scb_bnr_bordl"></div></div> </div>
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text rshop_scb_bn_pdng" align="center">7% OFF $2000 - $2999 (Code: 7OFF)</div> </div>			      	
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text" align="center"><div class="rshop_scb_bnr_bordl"></div></div> </div>			      	
		<div class="col-md-12 col-sm-12"> <div class="promo_codes_text rshop_scb_bn_pdng" align="center">10% OFF $3000+ (Code: 10OFF)</div> </div> </div> </div> -->
		
		<div id="mainframe" class="section-content" style="margin-top: 0px;"> <div class="container">
        <%		    	
			int currentcount = (int) session.getAttribute("shopCBRoomsCountInSn");
			int totalCBProductsCount = (int) session.getAttribute("totalShopCBProductsCountInSn");
			if(totalCBProductsCount > 0) {			        	
		%> 
		<div class="row top_adjustment_50"> <div class="col-md-12 col-sm-12">
		<div align="left" class="reg_dsn_curated_cb_title_text"> <h4><font class="reg_dsn_curated_cb_title_fl">C</font><font class="reg_dsn_curated_cb_title_ll">URATED </font> <font class="reg_dsn_curated_cb_title_fl">D</font><font class="reg_dsn_curated_cb_title_ll">ESIGN </font><font class="reg_dsn_curated_cb_title_fl">B</font><font class="reg_dsn_curated_cb_title_ll">OARDS</font></h4> </div>
		<div align="left" class="top_adjustment_20">
		<form action="shopViewAllDesignsConcepts" method="GET">
		<h4><button class="reg_con_cur_bod_submit_Btn" id="addBoardsId"><font class="reg_con_cur_bod_submit_Btn_flt">&nbsp;V</font>IEW <font class="reg_con_cur_bod_submit_Btn_flt">A</font>LL <font class="reg_con_cur_bod_submit_Btn_flt">D</font>ESIGNS&nbsp;</button></h4>
		<input type="hidden" id="selectedShopRoomNameId" name="selectedShopRoomName" value="${selectedShopRoomName}"> </form> </div>						
		<div align="left" class="top_adjustment_20"> <div class="reg_dsn_curated_cb_rigtext_dspl">${selectedShopRoomName}</div> </div>
		<div align="center">
		<% if(currentcount > 0) { %>
		<form action="previousShopCBProductsDisplay">
		<input class="img-responsive" title="PREVIOUS" type="image" src="resources/images/registry/rcb_left_arrow_img.png" style="margin-top: 10px; margin-bottom: 5px;"> <input type="hidden" name="shopCBRoomsCount" value="<%=currentcount%>"> <input type="hidden" name="selectedShopRoomName" value="${selectedShopRoomName}"> </form> 
		<% } %> </div> </div> </div>
		<div class="row top_adjustment_0"> <div class="col-md-12 col-sm-12">												
		<%
			byte[] conBoardsImageFromDB = (byte[]) session.getAttribute("shopConceptBoardsBigImageInSn");
			String conceptBoardBigImage = null;
			if(null != conBoardsImageFromDB) { String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(conBoardsImageFromDB); conceptBoardBigImage = "data:image/jpg;base64," +b64; }
		%>
		<div align="center" class="top_adjustment_10"> <a class="example-image-link" id="bigTopimageIdDsp" data-lightbox="example-1">		        	
		<img src="<%=conceptBoardBigImage%>" class="big_top_image_dsp big_image_disply_proper_cl left_adjustment_0"> </a> </div> </div> </div>				
		<div class="row bot_adjustment_30"> <div class="col-md-12 col-sm-12"> <div align="center">
		<%		    	
			String shopMostPopularStatus = (String) session.getAttribute("shopMostPopularStatusInSn");
			if(("Most Popular").equals(shopMostPopularStatus)) {	
		%>				    					    		
		<img class="img-responsive" src="resources/images/shop/most_popular_img.png" style="position: absolute; margin-top: -180px; margin-left: 220px;">				    	
		<% } %> 
		<div align="center">					 			
		<% if(currentcount < (totalCBProductsCount-1)) { %>
		<form action="nextShopCBProductsDisplay">
		<input class="img-responsive" title="NEXT" type="image" src="resources/images/registry/rcb_right_arrow_img.png" style="margin-top: 50px;"> <input type="hidden" name="shopCBRoomsCount" value="<%=currentcount%>"> <input type="hidden" name="selectedShopRoomName" value="${selectedShopRoomName}">
		</form>
		<% } %> </div> </div> </div> </div>	
		<% } %>				
        <div class="row"> <div align="center" class="col-md-12 col-sm-12 bot_adjustment_90">			         
	        
<!-- Products List DIsplay Code Start -->
		<% 
			if (null != session.getAttribute("shopProductSavingIdsListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductSavingIdsList = (ArrayList) session.getAttribute("shopProductSavingIdsListInSn"); if (null != shopProductSavingIdsList && shopProductSavingIdsList.size() > 0) {
			if (null != session.getAttribute("shopProductImages1ListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductImages1List = (ArrayList) session.getAttribute("shopProductImages1ListInSn"); if (null != shopProductImages1List && shopProductImages1List.size() > 0) {
			if (null != session.getAttribute("shopProductNamesListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductNamesList = (ArrayList) session.getAttribute("shopProductNamesListInSn"); if (null != shopProductNamesList && shopProductNamesList.size() > 0) {
			if (null != session.getAttribute("shopProductStoreNamesListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductStoreNamesList = (ArrayList) session.getAttribute("shopProductStoreNamesListInSn"); if (null != shopProductStoreNamesList && shopProductStoreNamesList.size() > 0) {
			if (null != session.getAttribute("shopProductPricesListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductPricesList = (ArrayList) session.getAttribute("shopProductPricesListInSn"); if (null != shopProductPricesList && shopProductPricesList.size() > 0) {
			if (null != session.getAttribute("shopProductPopUpValuesListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductPopUpValuesList = (ArrayList) session.getAttribute("shopProductPopUpValuesListInSn"); if (null != shopProductPopUpValuesList && shopProductPopUpValuesList.size() > 0) {
			if (null != session.getAttribute("shopProductImages2ListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductImages2List = (ArrayList) session.getAttribute("shopProductImages2ListInSn"); if (null != shopProductImages2List && shopProductImages2List.size() > 0) {
			if (null != session.getAttribute("shopProductImages3ListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductImages3List = (ArrayList) session.getAttribute("shopProductImages3ListInSn"); if (null != shopProductImages3List && shopProductImages3List.size() > 0) {					
			if (null != session.getAttribute("shopProductImages4ListInSn")) { @SuppressWarnings("rawtypes") ArrayList shopProductImages4List = (ArrayList) session.getAttribute("shopProductImages4ListInSn"); if (null != shopProductImages4List && shopProductImages4List.size() > 0) {
		%> 
		<div class="row top_adjustment_120">
		<% 	
			for(int i=0; i<shopProductSavingIdsList.size(); i++) { int count = (i + 1);
			String regiFurnSpecPopUpValuesSt = (String) shopProductPopUpValuesList.get(i); regiFurnSpecPopUpValuesSt = regiFurnSpecPopUpValuesSt.replace("\"", "DoubleQuotes"); regiFurnSpecPopUpValuesSt = regiFurnSpecPopUpValuesSt.replace("\'", "SingleQuotes"); regiFurnSpecPopUpValuesSt = regiFurnSpecPopUpValuesSt.replace("&#034;", "DoubleQuotes"); regiFurnSpecPopUpValuesSt = regiFurnSpecPopUpValuesSt.replace("&#039;", "SingleQuotes");
			byte[] conBoardSmlImagesFromDB = (byte[]) shopProductImages1List.get(i); String conceptBoardsMainImage1 = null; String conceptBoardsSmlImage1 = null;
			if(null != conBoardSmlImagesFromDB) { String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(conBoardSmlImagesFromDB); conceptBoardsMainImage1 = "data:image/jpg;base64," +b64; conceptBoardsSmlImage1 = b64; }
			byte[] furnSpecProductImage2List = (byte[]) shopProductImages2List.get(i); String conceptBoardsSmlImage2 = null;
			if(null != furnSpecProductImage2List) { conceptBoardsSmlImage2 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage2List); }
			byte[] furnSpecProductImage3List = (byte[]) shopProductImages3List.get(i); String conceptBoardsSmlImage3 = null;
			if(null != furnSpecProductImage3List) { conceptBoardsSmlImage3 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage3List); }		        	
			byte[] furnSpecProductImage4List = (byte[]) shopProductImages4List.get(i); String conceptBoardsSmlImage4 = null;
			if(null != furnSpecProductImage4List) { conceptBoardsSmlImage4 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage4List); }
			String allpopdataRedirection = conceptBoardsSmlImage1 + "_,_" + conceptBoardsSmlImage2 + "_,_" + conceptBoardsSmlImage3 + "_,_" + conceptBoardsSmlImage4 + "_,_" + regiFurnSpecPopUpValuesSt;
		%>
		<div class="col-md-3 col-sm-3" style="margin-bottom: 30px;"> <div class="reg_landing_images_and_text_frame"> <div class="row"> <div class="col-md-12 col-sm-12 reg_image_top_frame_align_cl1" align="center">
		<img src="<%=conceptBoardsMainImage1%>" id="image<%=count%>Id" onClick="furnamtureSpecProductInfo('<%=allpopdataRedirection%>')" class="reg_image_dsp_center_align_cl1 reg_cash_fund_top_image_dsp1" style="cursor: pointer; margin-left: -15px;"> </div> </div>
		<div class="row"> <div class="col-md-12 col-sm-12 shop_text_bottom_frame_align"> <div align="left" class="reg_sub_div_middle_text_disp1">									
		<div class="reg_bott_text_hd_dspl1"><%=shopProductNamesList.get(i)%></div> </div>
		<div class="reg_mid_ita_text_frame_dspl"> <font class="reg_bott_small_ita_text_dspl"><%=shopProductStoreNamesList.get(i)%></font> </div>						
		<div align="left" class="fur_spec_prod_price_dspl"> $<%=shopProductPricesList.get(i)%> </div>									
		<div align="center" style="margin-bottom: 30px; margin-top: 10px;"> <h4><button class="reg_fur_spec_submit_Btn" id="furnamtureSpecProductId" onClick="furnamtureSpecProductInfo('<%=allpopdataRedirection%>')">ADD TO CART</button></h4> </div> </div> </div> </div> </div>		        			        				        	
		<% } %> </div>
		<% } } } } } } } } } } } } } } } } } } %> 
		</div> </div>
	       
<!-- Pop up Code Start -->	

		<div id="boxes"> <div class="rshop_scb_popuptp" id="mask"></div> <div align="center" style="padding: 5px; display: none;  min-width: 270px; z-index: 10001; overflow-y: hidden; position: absolute; -ms-transform: translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%); margin-left: 135px; margin-top: 600px;" id="dialog" class="window">
        <div id="popupfoot" class="close"> <a href="#"><img src="resources/images/close.png" class="rshop_scb_popup_cls"></a></div>
        <div class="reg_popup_pro_sub_left_frame_dsp"> <img id="bigImgDsplayCl" class="reg_popup_pro_big_image_disl"> </div>
    	<table style="margin-top: 20px;"> <tbody> <tr> <td> <img class="smlImgClickCl" id="popupImage1Id" style="width: 55px; position: relative; left: -25px;"> </td>
		<td> <img class="smlImgClickCl" id="popupImage2Id" style="width: 55px; position: relative; left: -5px;"> </td>
		<td> <img class="smlImgClickCl" id="popupImage3Id" style="width: 55px; position: relative; left: 15px;"> </td>
		<td> <img class="smlImgClickCl" id="popupImage4Id" style="width: 55px; position: relative; left: 35px;"> </td>
		</tr> </tbody> </table>	
		<div style="margin-top: 20px;">			        	
		<form action="shopSelectedCBProductsAddToCart" method="POST">
		<div class="reg_popup_prodts_name_hd"><font id="shopProductNameDspId"></font></div>
		<div class="reg_popup_prod_store_name_hd"><font id="shopProductStoreNameDspId"></font></div>
		<div class="shop_popup_prod_price_hd" id="displaySelectPriceID" style="display: none;">$<font id="shopProductPriceID"></font></div>			        	
		<div class="shop_popup_prod_price_hd" id="displayDBPriceID">$<font id="regPriceDesp1ID"></font></div>
		
		<div id="enableGGTextDspYesId">
			<div class="mreg_con_bor_tooltxt">BETTER PRICE GUARANTEE&nbsp;&nbsp; 
			<div class="mytooltip1" style="margin-left: 0px;"><i style="font-size: 18px; cursor: pointer;" class="fa">&#xf059;</i>
	        <span class="mytext1" style="margin-top: -28px;"> We'll not only match the retailer's listed price on their website, but we offer an automatic 5% off the product at checkout! <br><br>No coupon code needed</span>
	      	</div> </div>
      	</div>
      	
		<div class="reg_popup_prod_sub_frame_dsp"> <div align="left" class="reg_popup_prod_quantity_hd" style="margin-top: 5px;">QUANTITY</div>
		<div align="left"> <select id="productQuantityId" name="productQuantity" class="reg_popup_prod_sele_box_quantity"> 
		<option value="1">1</option> <option value="2">2</option> <option value="3">3</option> <option value="4">4</option> <option value="5">5</option> <option value="6">6</option> <option value="7">7</option> <option value="8">8</option> <option value="9">9</option> <option value="10">10</option> </select> </div>
		<div class="reg_popup_prod_quantity_hd" style="margin-top: 15px;"> <div style="margin-top: 15px;" id="sizeTableDisplayId">
		<table> <tr> <td align="left" class="reg_popup_prod_quantity_hd" style="margin-top: 0px;font: 1em/1.25em Georgia; letter-spacing: 1px;">SELECT: &nbsp;</td><tr>
		<tr><td align="left"> <select id="selectedSizeId" class="reg_popup_prod_sel_box_size" name="registrySize" style="margin-top: -8px;"> </select> </td></tr> </table> </div>
		<div style="margin-top: 25px;"> <button class="shop_add_to_cart_sub_butt" onclick="addProductToRegistryLanding()">ADD TO CART</button> </div> </div> </div>
		<div style="margin-top: 15px;"> <div class="reg_popup_prod_quantity_hd">DESCRIPTION</div>
		<div class="reg_popup_prod_quantity_hd" style="margin-top: -7px;" id="productDescShowHide1ID"><font id="regProductDesc1ID"></font></div> </div>
		<input type="hidden" id="shopProductInfoSavingId" name="shopCBProductsSavingId"> <input type="hidden" name="selectedShopRoomName" value="${selectedShopRoomName}">			        	
		<input type="hidden" name="registryPrice" value="${registryPrice}"> <input type="hidden" id="shopProductSizeId" name="shopProductSize"> <input type="hidden" id="shopProductPriceId" name="shopProductPrice">
		<input type="hidden" id="shopProductNameId" name="shopProductName"> <input type="hidden" id="shopProductImageId" name="shopProductImage">
		<!-- <input type="hidden" id="shopProductDescriptionId" name="shopProductDescription"> --> <%-- <input type="hidden" name="registryViewProducts" value="${registryViewProducts}"> --%> <!-- <input type="hidden" id="shopProductStoreNameId" name="shopProductStoreName"> -->
		</form> </div> </div> </div>
	 
<!-- Pop up Code End -->       
        </div> </div>          
		</body>
</html>
