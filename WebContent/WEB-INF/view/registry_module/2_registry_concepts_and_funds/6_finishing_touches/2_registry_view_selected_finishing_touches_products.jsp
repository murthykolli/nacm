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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="resources/css/registry_css/registry_finishing_touches.css" type="text/css">    
	<script type="text/javascript" src="resources/js/popup/registry_finishing_touches_popup_products_info.js"></script>
	<script type="text/javascript" src="resources/js/popup/lightbox-2.6.min.js" ></script>
    <link rel="stylesheet" href="resources/css/popup/lightbox_for_registry.css" media="screen"/>
	
	<script type="text/javascript">	
	$(document).ready(function () {
		var regFTSelectedCategory1 = "<c:out value="${regFTSelectedCategory}"/>"; regFTSelectedCategory1 = regFTSelectedCategory1.replace("&amp; ", ""); 
		var regFTSelectedCategoryVal = regFTSelectedCategory1.replace(" ", "_"); $("#"+regFTSelectedCategoryVal).css("color","red"); $("#"+regFTSelectedCategoryVal).css("text-decoration","underline");		
	
		$("#enableGroupOffId").click(function () { $("#enableGroupOffId").hide(); $("#enableGroupOnId").show(); $("#enableGroupGiftId").val(""); });	
		$("#enableGroupOnId").click(function () { $("#enableGroupOffId").show(); $("#enableGroupOnId").hide(); $("#enableGroupGiftId").val("Enable Group Gift"); });		
		$('.big_top_image_dsp').click(function() { var viewImgs = $(this).attr("src"); $("#bigTopimageIdDsp").attr("href", viewImgs); });	
		$('.big_image_dsp').click(function() { var viewImgs = $(this).attr("src"); var imgId = $(this).attr("id"); $("#"+imgId+"Dsp").attr("href", viewImgs); });
 	 	var words = $('#cbRoomFNameTextId').text().split(' '); var html = ''; $.each(words, function() { html += '<span class="first_letter_dsp">'+this.substring(0,1)+'</span>'+this.substring(1) + ' '; });
 	 	$('#cbRoomFNameTextId').html(html); $("#showArrowClickId").click(function (){ $('html, body').animate({scrollTop: $('#bottomDataDisplayId').offset().top}, 0); }); });		
		
	function addProductToRegistryLanding() { alert("This product has been added to your Registry"); }
	
	function typeOfRoom(roomName) { document.regRoomSelect.registrySpaceRoom.value = roomName; $("#roomImgsFormId").submit(); }	
	function viewProductsForRegistry(id, count) { document.viewProductsFormName.registryViewProducts.value = id; document.viewProductsFormName.registryCBRoomCount.value = count; $("#viewProductsFormNameId").submit(); }
	function typeOfFinishingTouches(finishingTouchesName) { document.finishingTouchesFormName.regFTSelectedCategory.value = finishingTouchesName; $("#finishingTouchesFormId").submit(); }
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
			<div id="mainframe" class="section-content" style="padding-bottom: 50px;"> <div class="container">			
			<div class="row" style="margin-top: -30px;">
				<div class="col-md-12 col-sm-12">
				<div style="padding: 5px;">
			    <div class="reg_ft_cbd_top_radio_but_box" style="margin-top: 5px; margin-right: 20px;"><font class="reg_con_bord_top_txt_fl">R</font><font class="reg_con_bord_top_txt_ll">OOMS</font></div>
				<div style="padding-left: 8px; margin-top: 15px;">
					<div id="Living_Room" class="ft_room_selection_text" onclick="typeOfRoom('Living Room');"><font class="ft_room_selection_text_fl">L</font>iving <font class="ft_room_selection_text_fl">R</font>oom</div>
					<div id="Dining_Room" class="ft_room_selection_text" onclick="typeOfRoom('Dining Room');"><font class="ft_room_selection_text_fl">D</font>ining <font class="ft_room_selection_text_fl">R</font>oom</div>
					<div id="Bedroom" class="ft_room_selection_text" onclick="typeOfRoom('Bedroom');"><font class="ft_room_selection_text_fl">B</font>edroom</div>
					<div id="Home_Office" class="ft_room_selection_text" onclick="typeOfRoom('Home Office');"><font class="ft_room_selection_text_fl">H</font>ome <font class="ft_room_selection_text_fl">O</font>ffice</div>
					<div id="Entryway" class="ft_room_selection_text" onclick="typeOfRoom('Entryway');"><font class="ft_room_selection_text_fl">E</font>ntryway</div>
					<div id="Nursery" class="ft_room_selection_text" onclick="typeOfRoom('Nursery');"><font class="ft_room_selection_text_fl">N</font>ursery</div>
					<div id="Kids_Bedroom" class="ft_room_selection_text" onclick="typeOfRoom('Kids Bedroom');"><font class="ft_room_selection_text_fl">K</font>ids <font class="ft_room_selection_text_fl">B</font>edroom</div>
					<div id="Outdoor_Space" class="ft_room_selection_text" onclick="typeOfRoom('Outdoor Space');"><font class="ft_room_selection_text_fl">O</font>utdoor <font class="ft_room_selection_text_fl">S</font>pace</div>
					</div>
				</div> </div>
			</div>
			
			<div class="row" style="margin-top: -20px;">
				<div class="col-md-12 col-sm-12">
				<div style="padding: 5px;">
			    <div class="reg_ft_cbd_top_radio_but_box ft_view_top_mgtp_mgrt_cl" style="margin-top: 30px;"><font class="reg_con_bord_top_txt_fl">F</font><font class="reg_con_bord_top_txt_ll">INISHING </font><font class="reg_con_bord_top_txt_fl">T</font><font class="reg_con_bord_top_txt_ll">OUCHES</font></div>
				<div class="ft_view_top_pdnl_mgtp_cl">
				<div id="Curtains" class="ft_room_selection_text" onclick="typeOfFinishingTouches('Curtains');"><font class="ft_room_selection_text_fl">C</font>urtains</div>
				<div id="Bedding" class="ft_room_selection_text" onclick="typeOfFinishingTouches('Bedding');"><font class="ft_room_selection_text_fl">B</font>edding</div>
				<div id="Pillows" class="ft_room_selection_text" onclick="typeOfFinishingTouches('Pillows');"><font class="ft_room_selection_text_fl">P</font>illows</div>
				<div id="Throws" class="ft_room_selection_text" onclick="typeOfFinishingTouches('Throws');"><font class="ft_room_selection_text_fl">T</font>hrows</div>
				<div id="Kitchen_&_Dining" class="ft_room_selection_text" onclick="typeOfFinishingTouches('Kitchen & Dining');"><font class="ft_room_selection_text_fl">K</font>itchen <font class="ft_room_selection_text_fl">&amp; </font> <font class="ft_room_selection_text_fl">D</font>ining</div>
				<div id="Home_Accessories" class="ft_room_selection_text" onclick="typeOfFinishingTouches('Home Accessories');"><font class="ft_room_selection_text_fl">H</font>ome <font class="ft_room_selection_text_fl">A</font>ccessories</div>
				<div id="Mattresses" class="ft_room_selection_text" onclick="typeOfFinishingTouches('Mattresses');"><font class="ft_room_selection_text_fl">M</font>attresses</div>			
				<div id="Lighting" class="ft_room_selection_text" onclick="typeOfFinishingTouches('Lighting');"><font class="ft_room_selection_text_fl">L</font>ighting</div> </div>				
				</div> </div>
			</div>
			
			<div class="row top_adjustment_15"> <div class="col-md-12 col-sm-12"> <div align="center" class="reg_dsn_curated_ft_title_text"> <h4><font class="reg_dsn_curated_ft_title_fl">C</font><font class="reg_dsn_curated_ft_title_ll">URATED </font> <font class="reg_dsn_curated_ft_title_fl">D</font><font class="reg_dsn_curated_ft_title_ll">ESIGN </font><font class="reg_dsn_curated_ft_title_fl">B</font><font class="reg_dsn_curated_ft_title_ll">OARDS</font></h4> </div> </div> </div>
			<div class="row top_adjustment_25"> <div align="center" class="col-md-12 col-sm-12"> <form action="createRoomFunds"> <h4><button class="reg_ft_cbd_submit_Btn" id="addBoardsId"><font class="reg_ft_cbd_submit_Btn_flt">&nbsp;A</font>DD <font class="reg_ft_cbd_submit_Btn_flt">R</font>OOM <font class="reg_ft_cbd_submit_Btn_flt">F</font>UNDS&nbsp;</button></h4> </form> </div> </div>
			<div class="row top_adjustment_25"> <div align="center" class="col-md-12 col-sm-12"> <form action="createCashFunds"> <h4><button class="reg_ft_cbd_submit_Btn" id="addBoardsId"><font class="reg_ft_cbd_submit_Btn_flt">&nbsp;A</font>DD <font class="reg_ft_cbd_submit_Btn_flt">C</font>ASH <font class="reg_ft_cbd_submit_Btn_flt">F</font>UNDS&nbsp;&nbsp;</button></h4> </form> </div> </div>			
			<div class="row top_adjustment_20"> <div align="center" class="col-md-12 col-sm-12"> <div align="center" class="reg_dsn_curated_cb_rigtext_dspl"> ${regFTSelectedCategory} </div> </div> </div>
			
			<div class="row" style="margin-top: -10px;"> <div align="center" class="col-md-12 col-sm-12">			
<!-- Products List DIsplay Code Start -->		      		
				<% 	if (null != session.getAttribute("regFTProductIdsListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductSavingIdList = (ArrayList) session.getAttribute("regFTProductIdsListInSn"); if (null != regFTProductSavingIdList && regFTProductSavingIdList.size() > 0) {
					if (null != session.getAttribute("regFTProductImage1ListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductImageList = (ArrayList) session.getAttribute("regFTProductImage1ListInSn"); if (null != regFTProductImageList && regFTProductImageList.size() > 0) {
					if (null != session.getAttribute("regFTProductNameListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductNameList = (ArrayList) session.getAttribute("regFTProductNameListInSn"); if (null != regFTProductNameList && regFTProductNameList.size() > 0) {
					if (null != session.getAttribute("regFTProductStoreNameListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductStoreNameList = (ArrayList) session.getAttribute("regFTProductStoreNameListInSn"); if (null != regFTProductStoreNameList && regFTProductStoreNameList.size() > 0) {
					if (null != session.getAttribute("regFTProductPriceListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductPriceList = (ArrayList) session.getAttribute("regFTProductPriceListInSn"); if (null != regFTProductPriceList && regFTProductPriceList.size() > 0) {
					if (null != session.getAttribute("regFTProductPopUpValuesListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductPopUpValuesList = (ArrayList) session.getAttribute("regFTProductPopUpValuesListInSn"); if (null != regFTProductPopUpValuesList && regFTProductPopUpValuesList.size() > 0) {
					if (null != session.getAttribute("regFTProductImage2ListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductImage2List = (ArrayList) session.getAttribute("regFTProductImage2ListInSn"); if (null != regFTProductImage2List && regFTProductImage2List.size() > 0) {
					if (null != session.getAttribute("regFTProductImage3ListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductImage3List = (ArrayList) session.getAttribute("regFTProductImage3ListInSn"); if (null != regFTProductImage3List && regFTProductImage3List.size() > 0) {
					if (null != session.getAttribute("regFTProductImage4ListInSn")) { @SuppressWarnings("rawtypes") ArrayList regFTProductImage4List = (ArrayList) session.getAttribute("regFTProductImage4ListInSn"); if (null != regFTProductImage4List && regFTProductImage4List.size() > 0) {			
				%>							
				<div class="row top_adjustment_20">
				<% for(int i=0; i<regFTProductSavingIdList.size(); i++) { int count = (i + 1);
					String regFTProductPopUpValuesSt = (String) regFTProductPopUpValuesList.get(i); regFTProductPopUpValuesSt = regFTProductPopUpValuesSt.replace("\"", "DoubleQuotes"); regFTProductPopUpValuesSt = regFTProductPopUpValuesSt.replace("\'", "SingleQuotes"); regFTProductPopUpValuesSt = regFTProductPopUpValuesSt.replace("&#034;", "DoubleQuotes"); regFTProductPopUpValuesSt = regFTProductPopUpValuesSt.replace("&#039;", "SingleQuotes"); byte[] conBoardSmlImagesFromDB = (byte[]) regFTProductImageList.get(i); String finTouchesMainImage1 = null; String finTouchesSmlImage1 = null;
		        	if(null != conBoardSmlImagesFromDB) { String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(conBoardSmlImagesFromDB); finTouchesMainImage1 = "data:image/jpg;base64," +b64; finTouchesSmlImage1 = b64; }		        	
		        	byte[] furnSpecProductImage2List = (byte[]) regFTProductImage2List.get(i); String finTouchesSmlImage2 = null;
		        	if(null != furnSpecProductImage2List) { finTouchesSmlImage2 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage2List); }		        	
		        	byte[] furnSpecProductImage3List = (byte[]) regFTProductImage3List.get(i); String finTouchesSmlImage3 = null;
		        	if(null != furnSpecProductImage3List) { finTouchesSmlImage3 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage3List); }		        	
		        	byte[] furnSpecProductImage4List = (byte[]) regFTProductImage4List.get(i); String finTouchesSmlImage4 = null;
		        	if(null != furnSpecProductImage4List) { finTouchesSmlImage4 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage4List); }
		        	String allpopdataRedirection = finTouchesSmlImage1 + "_,_" + finTouchesSmlImage2 + "_,_" + finTouchesSmlImage3 + "_,_" + finTouchesSmlImage4 + "_,_" + regFTProductPopUpValuesSt;
		        %>
					<div class="col-md-12 col-sm-12" style="margin-bottom: 30px;"> <div class="reg_landing_images_and_text_frame">
					<div class="row"> <div class="col-md-12 col-sm-12 reg_image_top_frame_align_cl1" align="center" style="margin-left: -30px;"> <img src="<%=finTouchesMainImage1%>" id="image<%=count%>Id" onClick="furnamtureSpecProductInfo('<%=allpopdataRedirection%>')" class="reg_image_dsp_center_align_cl1 reg_cash_fund_top_image_dsp1 rcb_midfrm_cur_pot_adj_cl" style="cursor: pointer;"> </div> </div>
					<div class="row"> <div class="col-md-12 col-sm-12 reg_text_bottom_frame_align_cl1" style="margin-left: 0px;"> <div align="left" class="reg_sub_div_middle_text_disp1"> <div class="reg_bott_text_hd_dspl1"><%=regFTProductNameList.get(i)%></div> </div>
					<div class="reg_mid_ita_text_frame_dspl"> <font class="reg_bott_small_ita_text_dspl"><%=regFTProductStoreNameList.get(i)%></font> </div>						
					<div align="left" class="fur_spec_prod_price_dspl"> $<%=regFTProductPriceList.get(i)%> </div>
					<div align="center" class="rcb_midfrm_mbottp_adj_cl"> <h4><button class="reg_fur_spec_submit_Btn" id="furnamtureSpecProductId" onClick="furnamtureSpecProductInfo('<%=allpopdataRedirection%>')">ADD TO REGISTRY</button></h4> </div> </div> </div> </div> </div>		        			        				        	
				<% } %>
			 	</div>			 			
			 	<% } } } } } } } } } } } } } } } } } } %>		      
        	</div> </div>
        	
        	
		 	
<!-- Pop up Code Start -->

	<div id="boxes" style="margin-top: 120px;">
        <div style="width: 300px; height: 400px; display: none; opacity: 0.1; z-index: 10001;" id="mask"></div>        
        <div align="center" style="padding: 5px; display: none;  min-width: 270px; z-index: 10001; overflow-y: hidden; position: absolute; -ms-transform: translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%); margin-left: 135px; margin-top: 600px;" id="dialog" class="window">
        <div id="popupfoot" class="close"> <a href="#"><img src="resources/images/close.png" style="cursor: pointer; top: 10px; left: -2px;  position: relative;"></a></div>
        
        
        <div class="reg_popup_pro_sub_left_frame_dsp"> <img id="bigImgDsplayCl" class="reg_popup_pro_big_image_disl"> </div>
    			<table style="margin-top: 0px;"> <tbody> <tr>
					<td> <img class="smlImgClickCl" id="popupImage1Id" style="width: 55px; position: relative; left: -25px;"> </td>
				    <td> <img class="smlImgClickCl" id="popupImage2Id" style="width: 55px; position: relative; left: -5px;"> </td>
				    <td> <img class="smlImgClickCl" id="popupImage3Id" style="width: 55px; position: relative; left: 15px;"> </td>
				    <td> <img class="smlImgClickCl" id="popupImage4Id" style="width: 55px; position: relative; left: 35px;"> </td>
				</tr> </tbody> </table>	
				
				
				<div style="margin-top: 20px;">			        	
			        <form action="regFinTouchesSelectedProdInfoSaving" method="POST">
			        	<div class="reg_popup_prodts_name_hd"><font id="regProductNameID"></font></div>
			        	
			        	<div class="reg_popup_prod_store_name_hd"><font id="regProductStoreNameID"></font></div>
			        	
			        	<div class="reg_popup_prod_price_hd" id="displaySelectPriceID" style="display: none;">$<font id="regSelectedPriceID"></font></div>			        	
			        	<div class="reg_popup_prod_price_hd" id="displayDBPriceID">$<font id="regPriceDesp1ID"></font></div>
			        				        	
			        	<div id="enableGGTextDspYesId">
			        		<div class="mreg_con_bor_tooltxt">BETTER PRICE GUARANTEE&nbsp;&nbsp; 
				        	<div class="mytooltip1" style="margin-left: 0px;"><i style="font-size: 18px; cursor: pointer;" class="fa">&#xf059;</i>
	         				<span class="mytext1" style="margin-top: -28px;"> We'll not only match the retailer's listed price on their website, but we offer an automatic 5% off the product at checkout! <br><br>No coupon code needed</span>
	      					</div> </div>
      					</div>
      						
			        	<div class="reg_popup_prod_sub_frame_dsp">
			        		<div align="left" class="reg_popup_prod_quantity_hd" style="margin-top: 5px;">QUANTITY</div>
			        		<div align="left">
			        		<select id="productQuantityId" name="productQuantity" class="reg_popup_prod_sele_box_quantity"> 
						    <option value="1">1</option> <option value="2">2</option> <option value="3">3</option> <option value="4">4</option> <option value="5">5</option> <option value="6">6</option> <option value="7">7</option> <option value="8">8</option> <option value="9">9</option> <option value="10">10</option> </select>
			        		</div>
			        		
			        		
			        		<div class="reg_popup_prod_quantity_hd" style="margin-top: 15px;">
			        		
			        		<div id="enableGGTextDspYesId">
			        			<div class="reg_sc_enb_gg_text_dsp">ENABLE GROUP GIFTING&nbsp;&nbsp; 
				        		<div class="mytooltip" style="margin-left: 0px;"><i style="font-size: 18px; cursor: pointer;" class="fa">&#xf059;</i>
	         					<span class="mytext" style="margin-top: -130px;"> Receive cash contributions towards this item and purchase once the total has been met. <br><br>A nominal tax and shipping fee will be added to the group gift goal to ensure you have enough funds to purchase. <br><br>The group gifting feature cannot be disabled once contributions towards a gift have begun.</span>
	      						</div>
	      						</div>
      						</div>
      						
      						<div id="enableGGTextDspNoId" style="display: none;">
      							<div class="reg_sc_enb_gg_text_dsp">ENABLE GROUP GIFTING&nbsp;&nbsp;
				        		<div class="mytooltip" style="margin-left: 0px;"><i style="font-size: 18px; cursor: pointer;" class="fa">&#xf059;</i>
	         					<span class="mytext" style="margin-top: -10px;"> Either one or multiple guests have already contributed towards this item, therefore you can no longer disable the Group Gifting feature. </span>
	         					</div>
	      						</div>
      						</div>
      						
      													
      						<div id="enableGGButtonDspYesId">
	      						<div style="margin-top: 20px; cursor: pointer;" id="enableGroupOnId">
		      						<div style="background: #bfbfbf; border: 1px solid #bfbfbf; width: 60px; height: 19px; border-radius: 25px; box-shadow: inset 6px 6px 6px -6px black;">
										<div style="height: 16px; width: 16px; background-color: #fff; border-radius: 50%; display: inline-block; margin-left: 5px; margin-top: 1px; "></div>
									</div>
								</div>
								
	      						<div style="margin-top: 20px; display: none; cursor: pointer;" id="enableGroupOffId">
		      						<div style="background: #00b050; border: 1px solid #00b050; width: 60px; height: 19px; border-radius: 25px; box-shadow: inset 6px 6px 6px -6px black;">
										<div style="height: 16px; width: 16px; background-color: #fff; border-radius: 50%; display: inline-block; margin-left: 35px; margin-top: 1px; "></div>
									</div>
								</div>
							</div>
							
      						<div id="enableGGButtonDspNoId" style="display: none;">
	      						<div style="margin-top: 20px; cursor: pointer;" id="enableGroupOn1Id">
		      						<div style="background: #bfbfbf; border: 1px solid #bfbfbf; width: 60px; height: 19px; border-radius: 25px; box-shadow: inset 6px 6px 6px -6px black;">
										<div style="height: 16px; width: 16px; background-color: #fff; border-radius: 50%; display: inline-block; margin-left: 5px; margin-top: 1px; "></div>
									</div>
								</div>
								
	      						<div style="margin-top: 20px; display: none; cursor: pointer;" id="enableGroupOff1Id">
		      						<div style="background: #00b050; border: 1px solid #00b050; width: 60px; height: 19px; border-radius: 25px; box-shadow: inset 6px 6px 6px -6px black;">
										<div style="height: 16px; width: 16px; background-color: #fff; border-radius: 50%; display: inline-block; margin-left: 35px; margin-top: 1px; "></div>
									</div>
								</div>
							</div>
							
							<div style="margin-top: 15px;" id="sizeTableDisplayId">
							<table>
							<tr> <td align="left" class="reg_popup_prod_quantity_hd" style="margin-top: 0px;font: 1em/1.25em Georgia; letter-spacing: 1px;">SELECT: &nbsp;</td><tr>
			        		<tr><td align="left">
			        			<select id="selectedSizeId" class="reg_popup_prod_sel_box_size" name="registrySize" style="margin-top: -8px;">
			        			</select>				        		
			        		</td></tr>
			        		</table>													
							</div>
							
							<div style="margin-top: 25px;">
							<button class="shop_add_to_cart_sub_butt" onclick="addProductToRegistryLanding()">ADD TO CART</button>
							</div>
							
		
			        		
			        		</div>		        		
			        		
			        	</div>
			        	
			        	<div style="margin-top: 15px;">
			        		<div class="reg_popup_prod_quantity_hd">DESCRIPTION</div>
			        		<div class="reg_popup_prod_quantity_hd" style="margin-top: -7px;" id="productDescShowHide1ID"><font id="regProductDesc1ID"></font></div>			        		
			        	</div>
			        	
			        	
      	<input type="hidden" id="enableGroupGiftId" name="groupGiftRefferanceValue"> <input type="hidden" id="productInfoSavingId" name="ftProductsInfoSavingId"> <input type="hidden" name="registrySpaceRoom" value="${registrySpaceRoom}"> <input type="hidden" name="registryStyleName" value="${registryStyleName}"> <input type="hidden" name="registryViewProducts" value="${registryViewProducts}"> <input type="hidden" name="registryPrice" value="${registryPrice}"> <input type="hidden" id="regProductSizeId" name="productHeading"> <input type="hidden" id="registryPriceId" name="productPrice"> <input type="hidden" id="productDescriptionId" name="productDescription">
		<input type="hidden" name="regFTSelectedCategory" value="${regFTSelectedCategory}">
			        	
			        	
						</form>
			   	</div>
			        
		
		</div>
	</div>
	
	<!-- Pop up Code End -->
       
			
			</div> </div> 
			
<!-- Pop up Code End -->
       
       	<form action="registryViewAllDesigns" id="roomImgsFormId" name="regRoomSelect" method="POST">
        	<input type="hidden" id="registrySpaceRoomId" name="registrySpaceRoom">               
       	</form>
            
	  	<form action="regFinTouchesSelectedProducts" id="finishingTouchesFormId" name="finishingTouchesFormName" method="POST">
        	<input type="hidden" id="regFTSelectedCategoryId" name="regFTSelectedCategory">               
       	</form>
	       	        
		</body>
</html>
