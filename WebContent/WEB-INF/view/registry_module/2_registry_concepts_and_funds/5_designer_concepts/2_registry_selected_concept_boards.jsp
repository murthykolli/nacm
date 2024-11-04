<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="resources/js/popup/registry_popup_products_info_dsp.js"></script>
	<script type="text/javascript" src="resources/js/popup/lightbox-2.6.min.js" ></script>
    <link rel="stylesheet" href="resources/css/popup/lightbox_for_registry.css" media="screen"/>
		
	<style type="text/css">
	.big_image_disply_proper_cl { width: 100%; height: auto; max-height: 100vh; object-fit: scale-down; position: relative; object-position: 50% 50%; object-position: 0 0; overflow: auto; overflow-y: hidden; overflow-x: hidden; box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.3), 0 2px 5px 0 rgba(0, 0, 0, 0.25); }
	.big_image_disply_proper_cl:hover { box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.4), 0 6px 18px 0 rgba(0, 0, 0, 0.35); cursor: pointer; }	
	.reg_dsn_curated_cb_rigtext_dspl { font: 0.9em/1.25em Georgia; color: black; display: block; letter-spacing: 2px; margin-left: 0px; text-transform: uppercase; }	
		
	.view_show_image_disply_cl { width: 746px; object-fit: scale-down; position: relative; object-position: 50% 50%; object-position: 0 0; overflow: auto; overflow-y: hidden; overflow-x: hidden; }
	
	.view_product_for_dccb_cl { font: 0.95em/1.25em Georgia; letter-spacing: 1px; color: black; text-transform: uppercase; text-decoration: none; outline: none; }
	.view_product_for_dccb_cl:hover { color: #36669b; text-decoration: none; outline: none; }
	
	.reg_con_cur_bod_submit_Btn { font: 500 0.9em/1.5em Georgia; display: block; margin: 0px auto; vertical-align: middle; background-color: #e7e6e6; color: black; display: inline-block; text-transform: uppercase; padding: 3px 20px; outline: none; border: none; letter-spacing: 2px; cursor: pointer; box-shadow: -2px -2px 3px #bbbbbb; white-space: nowrap; }
	.reg_con_cur_bod_submit_Btn:hover { background-color: #ff3b3b; color: white; cursor: pointer; }
	.reg_con_cur_bod_submit_Btn_flt { font: 500 1.3em/1.5em Georgia; }
	
	.fur_spc_image_frame_dsp { border: 2px solid #595959; width: 270px; height: 200px; }
	.con_images_display_in_middle { width: 270px; height: 200px; display: table-cell; vertical-align: middle; }
	.fur_spc_image_proper_cl { height: 149px; object-fit: scale-down; position: relative; object-position: 50% 50%; }
	.fur_spc_text_frame_dsp { border: 2px solid #595959; width: 270px; height: 170px; margin-top: -2px; }
	
	.fur_spec_prod_name_dspl { font: 500 1.2em/1.4em Georgia; letter-spacing: 0px; color: black; margin-top: -10px }
	.fur_spec_store_name_dspl { font: 500 1em/1.5em Georgia; letter-spacing: 1px; color: black; padding-bottom: 10px; }
	.fur_spec_prod_price_dspl { font: bold 1.15em/2.0em Georgia; letter-spacing: 1px; color: black; }
	
	.reg_fur_spec_submit_Btn { font: 500 0.9em/1.5em Georgia; display: block; margin: 0px auto; vertical-align: middle; background-color: #385a7f; color: white; display: inline-block; text-transform: uppercase; width: 190px; height: 32px; outline: none; border: none; letter-spacing: 2px; cursor: pointer; box-shadow: 2px 2px #bbbbbb; }
	.reg_fur_spec_submit_Btn:hover { background-color: #595959; cursor: pointer; }
	.image_mouse_over_dsp { position: relative; cursor: pointer; }
	.image_mouse_over_dsp:hover { opacity: 0.4; cursor: pointer; outline: none; }
	
	.reg_mid_ita_text_frame_dspl { min-height: 30px; margin-top: 5px;}
	.reg_bott_small_ita_text_dspl { font: italic 1em/1.25em Georgia; color: black; letter-spacing: 1px; vertical-align: middle; padding: 2px 0px; }
	
	.reg_con_bord_top_radio_but_box { background: #e7e6e6; border: 1px solid #e7e6e6; padding: 2px 5px; width: auto; }
	.reg_con_bord_top_txt_fl { font: 1.3em/1.25em Georgia; letter-spacing: 1px; color: black; }
	.reg_con_bord_top_txt_ll { font: 1.05em/1.25em Georgia; letter-spacing: 1px; color: black; }
	.reg_dsn_curated_cb_title_text h4 { font: bold 1em/1.25em Georgia; color: black; display: block; border-bottom: 1px solid #ff3b3b; padding-bottom: 5px; letter-spacing: 2px; width: 205px; }
	.reg_dsn_curated_cb_title_fl { font: bold 1.35em/1.25em Georgia; }
	.reg_dsn_curated_cb_title_ll { font: bold 1.0em/1.25em Georgia; }
	.reg_popup_prodts_name_hd { font: normal 0.75em/1.5em Georgia; text-align: left; letter-spacing: 1px; color: black; margin-top: -5px; padding-bottom: 15px; text-transform: uppercase; }
	.reg_popup_prod_price_hd { font: bold 0.90em/1.25em Georgia; text-align: left; letter-spacing: 1px; color: black; margin-top: 0px; padding-bottom: 15px; text-transform: uppercase; }
	</style>
	
<!-- Pop up CSS Code Start -->
	<style type="text/css">
	#mask { position:absolute; left:0; top:0; background-color:#000; display:none; } 
	#boxes .window { position:absolute; z-index:9999; }
	#boxes #dialog { height:auto; padding:10px; background-color:#ffffff; font-size: 15pt; }
	#popupfoot{ text-align: right; }
	#popupfoot a{ text-decoration: underline; font-family: sans-serif; font-size: 11pt; outline:none; color:black; }
	#popupImage1Id { border-bottom: 1px solid white; padding-bottom: 5px; }
	#popupImage2Id { border-bottom: 1px solid white; padding-bottom: 5px; }
	#popupImage3Id { border-bottom: 1px solid white; padding-bottom: 5px; }
	#popupImage4Id { border-bottom: 1px solid white; padding-bottom: 5px; }
	
	.mytooltip .mytext { visibility: hidden; width: 180px; background-color: #1f4e79; color: #fff; z-index: 1; top: -88px; right: 170%; border-radius: 6px; padding: 16px; position: absolute; font: normal 1em/1.35em Georgia; text-align: left; letter-spacing: 1px; box-shadow: -4px 4px #bababa; }
    .mytooltip { position: relative; display: inline-block; margin-left: 50px; } 
    .mytooltip .mytext:after { content: ""; position: absolute; top: 50%; left: 100%; margin-top: -5px; border-width: 6px; border-style: solid; border-color: transparent transparent transparent #3c3c3c; }
    .mytooltip:hover .mytext { visibility: visible; }
    .reg_popup_pro_sub_left_frame_dsp { height: 220px; margin-top: 0px; vertical-align: middle; margin-bottom: 30px; }
    .reg_popup_pro_big_image_disl { height: 200px; object-fit: scale-down; position: relative; object-position: 50% 50%; overflow: auto; overflow-y: hidden; overflow-x: hidden; width: 100%; }
    
    a.reg_cb_learn_more { font: italic 0.85em/1.5em Georgia; letter-spacing: 0px; color: #324f70; white-space: nowrap; text-decoration: underline; }
    a.reg_cb_learn_more:hover { color: red;}
    
	.shop_add_to_cart_sub_butt { font: 500 1em/1.25em Georgia; letter-spacing: 3px; display: inline-block; text-transform: uppercase; cursor: pointer; outline: none; color: #fff; background-color: #385a7f; border: none; padding: 7px 30px; -webkit-box-shadow: 3px 3px gray; -moz-box-shadow: 3px 3px gray; box-shadow: 3px 3px gray; }
	.shop_add_to_cart_sub_butt:hover { background-color: #494949; color: white; }
	
	.mreg_con_bor_tooltxt { font: 0.7em/1.25em Georgia; letter-spacing: 1px; color: black; text-align: left; margin-bottom: 13px; }	
	.mytooltip1 .mytext1 { visibility: hidden; width: 180px; background-color: #1f4e79; color: #fff; z-index: 1; top: -88px; right: 170%; border-radius: 6px; padding: 16px; position: absolute; font: normal 0.95em/1.35em Georgia; text-align: left; letter-spacing: 1px; box-shadow: -4px 4px #bababa; text-transform: uppercase; }
    .mytooltip1 { position: relative; display: inline-block; margin-left: 50px; } 
    .mytooltip1 .mytext1:after { content: ""; position: absolute; top: 50%; left: 100%; margin-top: -5px; border-width: 6px; border-style: solid; border-color: transparent transparent transparent #3c3c3c; }
    .mytooltip1:hover .mytext1 { visibility: visible; }
    
	}
	</style>
	
	<script type="text/javascript">
	
	$(document).ready(function () {    

		$("#enableGroupOffId").click(function (){	    
	    	$("#enableGroupOffId").hide();
	    	$("#enableGroupOnId").show();
	    	$("#enableGroupGiftId").val("");
	    });
	
		$("#enableGroupOnId").click(function (){	    
	    	$("#enableGroupOffId").show();
	    	$("#enableGroupOnId").hide();
	    	$("#enableGroupGiftId").val("Enable Group Gift");    	
	    });
		
		$('.big_top_image_dsp').click(function(){			
			var viewImgs = $(this).attr("src");		
			$("#bigTopimageIdDsp").attr("href", viewImgs);
		});
	
		$('.big_image_dsp').click(function(){			
			var viewImgs = $(this).attr("src");
			var imgId = $(this).attr("id");
			$("#"+imgId+"Dsp").attr("href", viewImgs);
		});
		

 	 	var words = $('#cbRoomFNameTextId').text().split(' ');
 	 	var html = '';
 	 	$.each(words, function() {
 	 	html += '<span class="first_letter_dsp">'+this.substring(0,1)+'</span>'+this.substring(1) + ' ';
 	 	});
 	 	$('#cbRoomFNameTextId').html(html);
 	 	
	});
		
	function addProductToRegistryLanding() {
		alert("This product has been added to your Registry");
	}
		
	</script>
	</head>
	
		<body>		
		
		<div id="mmenu_screen" class="container-fluid main_container" style="margin-top: 0px; margin-bottom: 60px;">

			<div class="row" style="margin-left: -2px;">
				<div class="col-md-12 col-sm-12">
					<div align="left" class="reg_dsn_curated_cb_title_text text-left">
						<h4><font class="reg_dsn_curated_cb_title_fl">C</font><font class="reg_dsn_curated_cb_title_ll">URATED </font> <font class="reg_dsn_curated_cb_title_fl">D</font><font class="reg_dsn_curated_cb_title_ll">ESIGN </font><font class="reg_dsn_curated_cb_title_fl">B</font><font class="reg_dsn_curated_cb_title_ll">OARDS</font></h4>
					</div>
				</div>
				
				<div class="col-md-12 col-sm-12">
					<div align="left" style="margin-top: 25px;">
						<form action="registryViewAllDesigns" method="POST">
							<h4><button class="reg_con_cur_bod_submit_Btn" id="addBoardsId"><font class="reg_con_cur_bod_submit_Btn_flt">&nbsp;V</font>IEW <font class="reg_con_cur_bod_submit_Btn_flt">A</font>LL <font class="reg_con_cur_bod_submit_Btn_flt">D</font>ESIGNS&nbsp;</button></h4>
							<input type="hidden" id="registrySpaceRoomId" name="registrySpaceRoom" value="${registrySpaceRoom}">
						</form>
					</div>
				</div>
				
				<div class="col-md-12 col-sm-12">
					<div align="left" style="margin-top: 20px;">
						<div style="width: 300px; white-space: nowrap;" class="reg_dsn_curated_cb_rigtext_dspl" id="cbRoomFNameTextId">${registrySpaceRoom}</div>
					</div>			        
				</div>
				
				
			</div>
						        
		    <div class="row" style="margin-top: 30px;">		    	
		      	<div class="col-md-12 col-sm-12">
		       		<div class="row">        
			    	<%
			    	  	int currentcount = (int) session.getAttribute("registryCBRoomCountInSn");
			    		int totalCBProductsCount = (int) session.getAttribute("totalCBProductsCountInSn");
			    	   	if(totalCBProductsCount > 0) {			        	
				    %> 
		        
			        <div class="col-md-12 col-sm-12" style="margin-top: -13px; margin-bottom: 20px;">
				        <div align="center">
				        	<% if(currentcount > 0) { %>
						       	<form action="previousCBProductsDisplay">
						       		<input class="img-responsive" title="PREVIOUS" type="image" src="resources/images/registry/rcb_left_arrow_img.png" style="margin-top: 10px; margin-bottom: 5px;">
						       	 	<input type="hidden" name="registryCBRoomCount" value="<%=currentcount%>">
						       	 	<input type="hidden" name="registrySpaceRoom" value="${registrySpaceRoom}">
						       	 </form> 
						    <% } %>						        
			        	</div>
				        
			        </div>
			         
			        <div class="col-md-12 col-sm-12">		        	
			        	
			        	<%
			        	byte[] conBoardsImageFromDB = (byte[]) session.getAttribute("conceptBoardsBigImage");
			        	String conceptBoardBigImage = null;
			        	if(null != conBoardsImageFromDB) {
				        	String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(conBoardsImageFromDB);
				        	conceptBoardBigImage = "data:image/jpg;base64," +b64;
			        	}
			        	%>
						<div class="row">
							<div class="col-md-12 col-sm-12" align="center" style="padding: 0px 30px;">
								<a class="example-image-link" id="bigTopimageIdDsp" data-lightbox="example-1">		        	
					        		<img src="<%=conceptBoardBigImage%>" class="big_top_image_dsp big_image_disply_proper_cl">
					        	</a>
						   	</div>			        	
				        </div>
				        
				 	</div>
				 	
				 	<div class="col-md-12 col-sm-12" style="margin-top: -20px;">
				 		<div align="center">
					        <% if(currentcount < (totalCBProductsCount-1)) { %>
					        	<form action="nextCBProductsDisplay">
						       	 	<input class="img-responsive" title="NEXT" type="image" src="resources/images/registry/rcb_right_arrow_img.png" style="margin-top: 50px;">
						       	 	<input type="hidden" name="registryCBRoomCount" value="<%=currentcount%>">
						       	 	<input type="hidden" name="registrySpaceRoom" value="${registrySpaceRoom}">
						       	 </form>
					        <% } %>
			        	</div>				        		        				        	
					</div>
					
					
					<div class="row">
						<div class="col-md-12 col-sm-12" align="center" style="margin-top: 25px;">
							<div style="font: bold 0.85em/1.37em Georgia; letter-spacing: 0px; color: black;">DESIGN PRICE STARTING <font style="white-space: nowrap;">AT $${allProductsTotalPrice}</font></div>
							<div style="margin-top: 15px; font: bold 0.85em/1.37em Georgia; letter-spacing: 0px; color: #ce3a3a; margin-top: 15px;">APPROX. ${guestsWatchedCount} GUESTS TO FULFILL THIS LOOK.</div>
							<div style="margin-top: 15px;"><a href="resources/images/registry/cb_learn_more_image.png" class="example-image-link reg_cb_learn_more" data-lightbox="example-1">LEARN MORE</a></div>
						</div>			        	
				   	</div>
					
					
					<%-- <div style="margin-left: 0px; margin-top: -180px; position: absolute;">				        
							<div style="font: bold 0.85em/1.37em Georgia; letter-spacing: 0px; color: black;">DESIGN PRICE STARTING <br><font style="white-space: nowrap;">AT $${allProductsTotalPrice}</font></div>
						    <div style="margin-top: 15px; font: 0.85em/1.37em Georgia; letter-spacing: 0px; color: black;">APPROX. ${guestsWatchedCount} GUESTS TO FULFILL THIS LOOK.</div>
						    <div style="margin-top: 15px;"><a href="resources/images/registry/cb_learn_more_image.png" class="example-image-link reg_cb_learn_more" data-lightbox="example-1">LEARN MORE</a></div>
						</div> --%>
						
			               
					<% } %> 
				        
				</div>
		          		
		    </div> 
		    </div>
		       
		</div>
		
			         
		<div id="mainframe" class="section-content">
        <div class="container">
         
	        
	        <div class="row" style="margin-top: 0px;">
	        	<div class="col-md-1 col-sm-1"></div>
	        		        
	        	<div class="col-md-10 col-sm-10" id="bottomDataDisplayId" style="margin-top: -205px;">			         
	        
<!-- Products List DIsplay Code Start -->
		      		
				<% 
				if (null != session.getAttribute("regFurnSpecSavingIdList")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecSavingIdList = (ArrayList) session.getAttribute("regFurnSpecSavingIdList");
				if (null != regiFurnSpecSavingIdList && regiFurnSpecSavingIdList.size() > 0) {
					
				if (null != session.getAttribute("regFurnSpecProductImageList")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecProductImageList = (ArrayList) session.getAttribute("regFurnSpecProductImageList");
				if (null != regiFurnSpecProductImageList && regiFurnSpecProductImageList.size() > 0) {
						   
				if (null != session.getAttribute("regFurnSpecProductNameList")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecProductNameList = (ArrayList) session.getAttribute("regFurnSpecProductNameList");
				if (null != regiFurnSpecProductNameList && regiFurnSpecProductNameList.size() > 0) {
					   
				if (null != session.getAttribute("regFurnSpecStoreNameList")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecStoreNameList = (ArrayList) session.getAttribute("regFurnSpecStoreNameList");
				if (null != regiFurnSpecStoreNameList && regiFurnSpecStoreNameList.size() > 0) {
						   
				if (null != session.getAttribute("regFurnSpecProductPriceList")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecProductPriceList = (ArrayList) session.getAttribute("regFurnSpecProductPriceList");
				if (null != regiFurnSpecProductPriceList && regiFurnSpecProductPriceList.size() > 0) {
					   
				if (null != session.getAttribute("regFurnSpecPopUpValuesList")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecPopUpValuesList = (ArrayList) session.getAttribute("regFurnSpecPopUpValuesList");
				if (null != regiFurnSpecPopUpValuesList && regiFurnSpecPopUpValuesList.size() > 0) {
					
				if (null != session.getAttribute("regFurnSpecProductImage2List")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecProductImage2List = (ArrayList) session.getAttribute("regFurnSpecProductImage2List");
				if (null != regiFurnSpecProductImage2List && regiFurnSpecProductImage2List.size() > 0) {
					
				if (null != session.getAttribute("regFurnSpecProductImage3List")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecProductImage3List = (ArrayList) session.getAttribute("regFurnSpecProductImage3List");
				if (null != regiFurnSpecProductImage3List && regiFurnSpecProductImage3List.size() > 0) {
					
				if (null != session.getAttribute("regFurnSpecProductImage4List")) {
				@SuppressWarnings("rawtypes")
				ArrayList regiFurnSpecProductImage4List = (ArrayList) session.getAttribute("regFurnSpecProductImage4List");
				if (null != regiFurnSpecProductImage4List && regiFurnSpecProductImage4List.size() > 0) {
				
				
				%> 
							
				<div class="row" style="margin-top: 115px;">
					<% for(int i=0; i<regiFurnSpecSavingIdList.size(); i++) { int count = (i + 1);
					String regiFurnSpecPopUpValuesSt = (String) regiFurnSpecPopUpValuesList.get(i);
					regiFurnSpecPopUpValuesSt = regiFurnSpecPopUpValuesSt.replace("\"", "DoubleQuotes");
					regiFurnSpecPopUpValuesSt = regiFurnSpecPopUpValuesSt.replace("\'", "SingleQuotes");
					regiFurnSpecPopUpValuesSt = regiFurnSpecPopUpValuesSt.replace("&#034;", "DoubleQuotes");
					regiFurnSpecPopUpValuesSt = regiFurnSpecPopUpValuesSt.replace("&#039;", "SingleQuotes");
					byte[] conBoardSmlImagesFromDB = (byte[]) regiFurnSpecProductImageList.get(i);
		        	String conceptBoardsMainImage1 = null;
		        	String conceptBoardsSmlImage1 = null;
		        	if(null != conBoardSmlImagesFromDB) {
			        	String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(conBoardSmlImagesFromDB);
			        	conceptBoardsMainImage1 = "data:image/jpg;base64," +b64;
			        	conceptBoardsSmlImage1 = b64;
		        	}
		        	
		        	byte[] furnSpecProductImage2List = (byte[]) regiFurnSpecProductImage2List.get(i);
		        	String conceptBoardsSmlImage2 = null;
		        	if(null != furnSpecProductImage2List) {
		        		conceptBoardsSmlImage2 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage2List);
		        	}
		        	
		        	byte[] furnSpecProductImage3List = (byte[]) regiFurnSpecProductImage3List.get(i);
		        	String conceptBoardsSmlImage3 = null;
		        	if(null != furnSpecProductImage3List) {
		        		conceptBoardsSmlImage3 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage3List);
		        	}
		        	
		        	byte[] furnSpecProductImage4List = (byte[]) regiFurnSpecProductImage4List.get(i);
		        	String conceptBoardsSmlImage4 = null;
		        	if(null != furnSpecProductImage4List) {
		        		conceptBoardsSmlImage4 = javax.xml.bind.DatatypeConverter.printBase64Binary(furnSpecProductImage4List);
		        	}
		        	String allpopdataRedirection = conceptBoardsSmlImage1 + "_,_" + conceptBoardsSmlImage2 + "_,_" + conceptBoardsSmlImage3 + "_,_" + conceptBoardsSmlImage4 + "_,_" + regiFurnSpecPopUpValuesSt;
		        	
					%>
						<div align="center" class="col-md-12 col-sm-12" style="margin-bottom: 30px;">
						<div class="reg_landing_images_and_text_frame">
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_image_top_frame_align_cl1" align="center" style="margin-left: -30px;">
									<img src="<%=conceptBoardsMainImage1%>" id="image<%=count%>Id" onClick="furnamtureSpecProductInfo('<%=allpopdataRedirection%>')" class="reg_image_dsp_center_align_cl1 reg_cash_fund_top_image_dsp1" style="cursor: pointer;">									
								</div>				
							</div>
								
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_text_bottom_frame_align_cl1" style="margin-left: 0px;">
									<div align="left" class="reg_sub_div_middle_text_disp1">									
										<div class="reg_bott_text_hd_dspl1"><%=regiFurnSpecProductNameList.get(i)%></div>																		
									</div>
									
									<div class="reg_mid_ita_text_frame_dspl">
										<font class="reg_bott_small_ita_text_dspl"><%=regiFurnSpecStoreNameList.get(i)%></font>
									</div>						
									
									<div align="left" class="fur_spec_prod_price_dspl"> $<%=regiFurnSpecProductPriceList.get(i)%> </div>
									
									<div align="center" style="margin-bottom: 30px; margin-top: 10px;">
											 <h4><button class="reg_fur_spec_submit_Btn" id="furnamtureSpecProductId" onClick="furnamtureSpecProductInfo('<%=allpopdataRedirection%>')">ADD TO REGISTRY</button></h4> 
											
									</div>
								</div>
							</div>
						</div>	
							
						</div>		        			        				        	
					        
				 	<% } %>
			 	</div>			 			
			 	<% } } } } } } } } } } } } } } } } } } %>			     	
		        </div>		        
		        <div class="col-md-1 col-sm-1"></div>	        
	        </div>		 	
		 	
<!-- Pop up Code Start -->
	<div id="boxes">
        <div style="width: 500px; height: 400px; display: none; opacity: 0.1; z-index: 10001;" id="mask"></div>        
        <div align="center" style="padding: 5px; display: none;  min-width: 270px; z-index: 10001; overflow-y: hidden; position: absolute; -ms-transform: translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%); margin-left: 135px; margin-top: 600px;" id="dialog" class="window">
        <div id="popupfoot" class="close"> <a href="#"><img src="resources/images/close.png" style="cursor: pointer; top: 10px; left: -2px;  position: relative;"></a></div>
        
        
        <div class="reg_popup_pro_sub_left_frame_dsp"> <img id="bigImgDsplayCl" class="reg_popup_pro_big_image_disl"> </div>
    			<table style="margin-top: 20px;"> <tbody> <tr>
					<td> <img class="smlImgClickCl" id="popupImage1Id" style="width: 55px; position: relative; left: -25px;"> </td>
				    <td> <img class="smlImgClickCl" id="popupImage2Id" style="width: 55px; position: relative; left: -5px;"> </td>
				    <td> <img class="smlImgClickCl" id="popupImage3Id" style="width: 55px; position: relative; left: 15px;"> </td>
				    <td> <img class="smlImgClickCl" id="popupImage4Id" style="width: 55px; position: relative; left: 35px;"> </td>
				</tr> </tbody> </table>	
				
				<div style="margin-top: 20px;">			        	
			        <form action="registrySelectedCBdInfoSaving" method="POST">
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
			        	
			        	<input type="hidden" id="enableGroupGiftId" name="groupGiftRefferanceValue">
			        	<input type="hidden" id="productInfoSavingId" name="productInfoSavingInfo">
			        	<input type="hidden" name="registrySpaceRoom" value="${registrySpaceRoom}">
			        	<input type="hidden" name="registryStyleName" value="${registryStyleName}">
			        	<input type="hidden" name="registryViewProducts" value="${registryViewProducts}">
			        	<input type="hidden" name="registryPrice" value="${registryPrice}">
			        	<input type="hidden" id="regProductSizeId" name="regProductHeading">
			        	<input type="hidden" id="registryPriceId" name="regProductPrice">
			        	<input type="hidden" id="registryDescriptionId" name="registryDescription">
						</form>
			   	</div>
			        
		
		</div>
	</div>
	
	<!-- Pop up Code End -->
       
        </div>
        </div>
          
		</body>
</html>