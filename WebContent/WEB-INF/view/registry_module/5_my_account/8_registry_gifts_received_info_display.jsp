
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<style type="text/css">
	.reg_transfer_now_subt_Btn { display: block; margin: 0px auto; vertical-align: middle; background-color: #ff3b3b; color: white; display: inline-block; width: 115px; outline: none; border: none; font: 500 1.2em/1.15em Georgia; letter-spacing: 1px; height: 32px; box-shadow: 2px 5px 5px -3px #292929; }
	.reg_transfer_now_subt_Btn:hover { background-color: #2c2c2c; }
	a.convert_to_store_credit_cl { font: 500 1.1em/1.35em Georgia; letter-spacing: 1px; color: black; text-decoration: underline; cursor: pointer; }
	a.convert_to_store_credit_cl:hover { color: red; text-decoration: underline; cursor: pointer; }
	.reg_cb_disable_subt_Btn { display: block; margin: 0px auto; vertical-align: middle; background-color: #767171; color: white; display: inline-block; width: 115px; outline: none; border: none; font: 500 1.2em/1.15em Georgia; letter-spacing: 1px; height: 32px; box-shadow: 2px 5px 5px -3px #292929; opacity: 0.7; cursor: not-allowed; }
	
	a.track_link_cl { font: italic 1.15em/1.25em Georgia; color: #1560ac; text-decoration: underline; background: white; }
	a.track_link_cl:hover {color: red; text-decoration: underline; }
	
	a.con_still_date_dsp_cl { font: 500 1.05em/1.25em Georgia; letter-spacing: 1px; color: black; text-decoration: underline; cursor: pointer; }
	a.con_still_date_dsp_cl:hover { color: red; text-decoration: underline; cursor: pointer; }
	.my_acc_contributed_hd_text_dsp { font: bold 0.98em/1.2em Georgia; letter-spacing: 2px; color: black; vertical-align: middle; }
	.cont_disable_stcre_cl { font: 500 1.05em/1.25em Georgia; letter-spacing: 1px; color: gray; text-decoration: underline; opacity: 0.7; cursor: not-allowed; }
	.concept_board_frame_cl { position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%); }
	
	.mytooltip .mytext { visibility: hidden; width: 170px; background-color: #1f4e79; color: #fff; z-index: 1; top: -36x; right: 170%; border-radius: 6px; padding: 16px; position: absolute; font: normal 1.0em/1.35em Georgia; text-align: left; letter-spacing: 1px; box-shadow: -4px 4px #bababa; }
    .mytooltip { position: relative; display: inline-block; margin-left: 50px; } 
    .mytooltip .mytext:after { content: ""; position: absolute; top: 50%; left: 100%; margin-top: -5px; border-width: 6px; border-style: solid; border-color: transparent transparent transparent #3c3c3c; }
    .mytooltip:hover .mytext { visibility: visible; }
    	
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function() {
 		var regConBoardAddCartValue = "<c:out value="${regConBoardAddCartValueInSn}"/>"; var regFinTouchesAddCartValue = "<c:out value="${regFinTouchesAddCartValueInSn}"/>"; var guestConBoardAddCartValue = "<c:out value="${guestConBoardAddCartValueInSn}"/>"; var guestFinTouchesAddCartValue = "<c:out value="${guestFinTouchesAddCartValueInSn}"/>";
 		if((regConBoardAddCartValue == "Have RCB Add Cart Data") || (regFinTouchesAddCartValue == "Have RFT Add Cart Data") || (guestConBoardAddCartValue == "Have GCB Add Cart Data") || (guestFinTouchesAddCartValue == "Have GFT Add Cart Data")){ $("#visibleGiftsReceivedId").show(); $("#notVisibleGiftsReceivedId").hide(); $("#notVisibleTipsDspId").hide(); } else { $("#notVisibleGiftsReceivedId").show(); $("#visibleGiftsReceivedId").hide(); $("#notVisibleTipsDspId").show(); }
 		var regConBoardContributeValue = "<c:out value="${regConBoardContributeValueInSn}"/>"; var regFinTouchesContributeValue = "<c:out value="${regFinTouchesContributeValueInSn}"/>";
 		if((regConBoardContributeValue == "Have RCB Contribute Data") || (regFinTouchesContributeValue == "Have RFT Contribute Data")){ $("#visibleGroupGiftId").show(); $("#notVsibleGroupGiftId").hide(); $("#notVisibleTipsDspId").hide(); } else { $("#notVsibleGroupGiftId").show(); $("#visibleGroupGiftId").hide(); $("#notVisibleTipsDspId").show(); }
 	});
    </script>
    
	</head>
	
		<body>
				
		<div id="mainframe" class="section-content">
        <div class="container">
      
      	<div class="row">
	        <div class="col-md-12 col-sm-12">
	        	<div class="service-item">                        
	            	<div class="service-description">
	        			<div align="left" style="margin-top: -20px; margin-left: 10px;">        			
							<div class="registry_prof_my_acc_title"><h2>MY ACCOUNT</h2></div>
	        			</div>
	        		</div>
	        	</div>
	        </div>
    	</div>    	
    
<!-- Left Code Start -->
      	<div class="row">
	        <div class="col-md-12 col-sm-12">
	        	<div class="service-item">                        
	            	<div class="service-description">
	        			<div align="left" style="margin-top: -20px; margin-left: 10px;">        			
							<div class="regi_prof_left_hd_text_dspl"><h3>ACCOUNT DETAILS</h3></div>
							<div class="top_adjustment_5"><a href="registryMyAccount" class="regi_prof_left_link_text_dspl">CONTACT INFO</a></div>
							<div class="top_adjustment_5"><a href="registryPasswordChange" class="regi_prof_left_link_text_dspl">CHANGE PASSWORD</a></div>
							
							<div class="regi_prof_left_hd_text_dspl top_adjustment_20"><h3>EVENT DETAILS</h3></div>
							<div class="top_adjustment_5"><a href="registryEventInfoChange" class="regi_prof_left_link_text_dspl">EVENT INFO</a></div>
							
							<div class="regi_prof_left_hd_text_dspl top_adjustment_20"><h3>REGISTRY SETTINGS</h3></div>
							<div class="top_adjustment_5"><a href="registryURLInfoChange" class="regi_prof_left_link_text_dspl">URL</a></div>
							<div class="top_adjustment_5"><a href="registryPrivacyInfoChange" class="regi_prof_left_link_text_dspl">PRIVACY</a></div>
							
							<div class="regi_prof_left_hd_text_dspl top_adjustment_20"><h3>GIFT TRACKER</h3></div>
							<div class="top_adjustment_5"><a href="regiShippingInfoDsp" class="regi_prof_left_link_text_dspl">SHIPPING INFO</a></div>
							<div class="top_adjustment_5"><a href="regiMyOrderDsp" class="regi_prof_left_link_text_dspl">MY ORDERS</a></div>
							<div class="top_adjustment_5"><a href="#" class="regi_prof_left_link_text_hover_dspl">GIFTS RECEIVED</a></div>
							<div class="top_adjustment_5"><a href="regiRoomFundsDsp" class="regi_prof_left_link_text_dspl">ROOM FUNDS</a></div>
							<div class="top_adjustment_5"><a href="regiCashFundsDsp" class="regi_prof_left_link_text_dspl">CASH FUNDS</a></div>
							<div class="top_adjustment_5"><a href="regiStoreCreditDsp" class="regi_prof_left_link_text_dspl">STORE CREDIT</a></div>
							
	        			</div>
	        		</div>
	        	</div>
	        </div>
	   	</div>
	        
<!-- Left Code End -->
    
	  	<div class="row">
	        <div class="col-md-12 col-sm-12">
				
				<div class="row" id="notVisibleGiftsReceivedId" style="display: none; padding-bottom: 30px;">
					<div class="col-md-12 col-sm-12"><div class="service-item"><div class="service-description reg_pro_left_adj_disp">
						<div align="left" style="margin-top: -20px; margin-left: 0px;">        			
							<div class="registry_prof_title"><h2>Gifts Received</h2></div>
				        </div>
				        
				        <div align="left">        			
							<div class="registry_prof_title"><p class="regi_prof_left_sub_nor_text">You have not received any gifts yet.</p></div>
				        </div>
				  	</div></div></div>
				</div>							
						
<!-- Add Cart Code Display -->

				<div class="row" id="visibleGiftsReceivedId" style="display: none; padding-bottom: 30px;">
				
					<div class="col-md-12 col-sm-12"><div class="service-item"><div class="service-description reg_pro_left_adj_disp">
						<div align="left" style="margin-top: -20px; margin-left: 0px;">        			
							<div class="registry_prof_title"><h2>Gifts Received</h2></div>
				        </div>
				  	</div></div></div>
				  	
				<div class="row" style=" padding: 10px;">
					<div class="col-md-12 col-sm-12" style="margin-top: -20px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">GIFT</div>					   	              
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">NAME</div>					               
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">AMOUNT</div>					               
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">FROM</div>					               
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">DATE</div>					        
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">STATUS</div>					            
					</div>		        
				</div>		
	    
	        	<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>			
								
<!-- Guest Design Curated Concept Boards Add Cart Coding -->			
			
		<% 
		   	if (null != session.getAttribute("guestConceptBoardPaymentIdsList")) {
		   	@SuppressWarnings("rawtypes")
	       	ArrayList guestConBoardPaymentIdsList = (ArrayList) session.getAttribute("guestConceptBoardPaymentIdsList");		   	
	       	if (null != guestConBoardPaymentIdsList && guestConBoardPaymentIdsList.size() > 0) {
		
		   	if (null != session.getAttribute("guestConceptBoardPaymentImageList")) {
		   	@SuppressWarnings("rawtypes")
           	ArrayList guestConBoardPaymentImageList = (ArrayList) session.getAttribute("guestConceptBoardPaymentImageList");
           	if (null != guestConBoardPaymentImageList && guestConBoardPaymentImageList.size() > 0) {

           	if (null != session.getAttribute("guestConceptBoardPaymentNameList")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList guestConBoardPaymentNameList = (ArrayList) session.getAttribute("guestConceptBoardPaymentNameList");
           	if (null != guestConBoardPaymentNameList && guestConBoardPaymentNameList.size() > 0) { 

           	if (null != session.getAttribute("guestConceptBoardPaymentAmountList")) {
           	@SuppressWarnings("rawtypes")
           	ArrayList guestConBoardPaymentAmountList = (ArrayList) session.getAttribute("guestConceptBoardPaymentAmountList");
           	if (null != guestConBoardPaymentAmountList && guestConBoardPaymentAmountList.size() > 0) { 

            if (null != session.getAttribute("guestConceptBoardPaymentStartDateList")) {
        	@SuppressWarnings("rawtypes")
            ArrayList guestConBoardPaymentStartDateList = (ArrayList) session.getAttribute("guestConceptBoardPaymentStartDateList");
            if (null != guestConBoardPaymentStartDateList && guestConBoardPaymentStartDateList.size() > 0) {
               	
           	if (null != session.getAttribute("guestCBNameList")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList guestsCBNameList = (ArrayList) session.getAttribute("guestCBNameList");
           	if (null != guestsCBNameList && guestsCBNameList.size() > 0) {
           	   	
            if (null != session.getAttribute("guestCBGiftReceivedStatusList")) {
        	@SuppressWarnings("rawtypes")
            ArrayList gustCBGiftReceivedStatusList = (ArrayList) session.getAttribute("guestCBGiftReceivedStatusList");
            if (null != gustCBGiftReceivedStatusList && gustCBGiftReceivedStatusList.size() > 0) {
               	
            if (null != session.getAttribute("guestGRTrackingLinksList")) {
            @SuppressWarnings("rawtypes")
            ArrayList gustGRTrackingLinksList = (ArrayList) session.getAttribute("guestGRTrackingLinksList");
            if (null != gustGRTrackingLinksList && gustGRTrackingLinksList.size() > 0) {
            	
            if (null != session.getAttribute("guestGRBOTillDatesList")) {
            @SuppressWarnings("rawtypes")
            ArrayList gustGRBOTillDatesList = (ArrayList) session.getAttribute("guestGRTrackingLinksList");
            if (null != gustGRBOTillDatesList && gustGRBOTillDatesList.size() > 0) {
        %>
		
		<% for(int i=0; i<guestConBoardPaymentIdsList.size(); i++) { 
			byte[] cbIndividualProductsImageByte = (byte[]) guestConBoardPaymentImageList.get(i);
        	String cbIndividualProductsImage = null;
        	if(null != cbIndividualProductsImageByte) {
        		String cbIndividualProductsImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(cbIndividualProductsImageByte);
        		cbIndividualProductsImage = "data:image/jpg;base64," +cbIndividualProductsImageB64;
        	}
        	String guestCBIndGiftRecStatus = (String) gustCBGiftReceivedStatusList.get(i);        	
		%>
				
			<div class="row">
				<div class="col-md-12 col-sm-12">				
					<div style="height: 130px;"><div class="concept_board_frame_cl"><img align="middle" src="<%=cbIndividualProductsImage%>" style="object-fit: scale-down; width: 100px;" ></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl concept_board_frame_cl"><%=guestConBoardPaymentNameList.get(i)%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">$<%=guestConBoardPaymentAmountList.get(i)%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=guestsCBNameList.get(i)%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=guestConBoardPaymentStartDateList.get(i)%></div></div>					              
				</div>				
				
				<div class="col-md-12 col-sm-12">				
					<% if(("No Action").equals(guestCBIndGiftRecStatus)) { %>
					    <div style="height: 140px;"><div class="my_acc_room_fund_link_text_dsp concept_board_frame_cl"><form action="guestMACBIndividualShopNow"><button class="reg_transfer_now_subt_Btn" onclick="return confirm('Please confirm that you would like us to place the order for this gift at this time.');">Ship Now</button> <input type="hidden" name="guestCBIndividualShopNowRef" value="<%=guestConBoardPaymentIdsList.get(i)%>"> </form> <br><a href="guestMACBIndividualConToStoreCredit?regConToStoreCreditRef=<%=guestConBoardPaymentIdsList.get(i)%>" class="convert_to_store_credit_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
					    <div align="center" class="mytooltip" style="margin-left: 200px; margin-top: 20px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		         			<span class="mytext" style="margin-top: -110px;"> You can request to have your gift shipped now or you can convert the gift amount to store credit that can be used on Nook+Cove for any product at any time. </span>
		         		</div>
					<% } else if(("Converted to Store Credit").equals(guestCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestCBIndGiftRecStatus%></div></div>
							<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		         				<span class="mytext" style="margin-top: -70px;"> Your store credit details can be found under the 'Store Credit' tab under 'Gifts' to your left. </span>
		         			</div>
					<% } else if(("Order Processing").equals(guestCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestCBIndGiftRecStatus%></div></div>
					<% } else if(("Ordered").equals(guestCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestCBIndGiftRecStatus%></div></div>
					<% } else if(("Tracking").equals(guestCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=gustGRTrackingLinksList.get(i)%></div></div>
					<% } else if(("Delivered").equals(guestCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestCBIndGiftRecStatus%></div></div>
					<% } else if(("Back Ordered Till").equals(guestCBIndGiftRecStatus)) { %>
						<div style="height: 120px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestCBIndGiftRecStatus%>&nbsp;<%=gustGRBOTillDatesList.get(i)%>  <br><br><a href="guestMACBIndividualConToStoreCredit?regConToStoreCreditRef=<%=guestConBoardPaymentIdsList.get(i)%>" class="con_still_date_dsp_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
							<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		         				<span class="mytext" style="margin-top: -145px;"> This product is on back order till the date provided. You can either wait for the product to become available or you can convert the gift amount to store credit at this time to shop for something else. </span>
		         			</div>
					<% } else if(("Converted to Store Credit Due to Out of Stock").equals(guestCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestCBIndGiftRecStatus%></div></div>
							<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		         				<span class="mytext" style="margin-top: -155px;"> This product is no longer in stock therefore the gift amount has been converted into store credit. Generally we replace out of stock products with similar products that can be found in our concept boards. </span>
		         			</div>
					<% }  %>					              
				</div>
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> 
		<% } %>        
        <% } } } } } } } } } } } } } } } } } } %>			
						
<!-- Registry Design Curated Concept Boards Add Cart Coding -->			
			
		<% 
		   	if (null != session.getAttribute("regConceptBoardPaymentIdsList")) {
		   	@SuppressWarnings("rawtypes")
	       	ArrayList regConctBoardPaymentIdsList = (ArrayList) session.getAttribute("regConceptBoardPaymentIdsList");		   	
	       	if (null != regConctBoardPaymentIdsList && regConctBoardPaymentIdsList.size() > 0) {
		
		   	if (null != session.getAttribute("regConceptBoardPaymentImageList")) {
		   	@SuppressWarnings("rawtypes")
           	ArrayList regConctBoardPaymentImageList = (ArrayList) session.getAttribute("regConceptBoardPaymentImageList");
           	if (null != regConctBoardPaymentImageList && regConctBoardPaymentImageList.size() > 0) {

           	if (null != session.getAttribute("regConceptBoardPaymentNameList")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList regConctBoardPaymentNameList = (ArrayList) session.getAttribute("regConceptBoardPaymentNameList");
           	if (null != regConctBoardPaymentNameList && regConctBoardPaymentNameList.size() > 0) { 

           	if (null != session.getAttribute("regConceptBoardPaymentAmountList")) {
           	@SuppressWarnings("rawtypes")
           	ArrayList regConctBoardPaymentAmountList = (ArrayList) session.getAttribute("regConceptBoardPaymentAmountList");
           	if (null != regConctBoardPaymentAmountList && regConctBoardPaymentAmountList.size() > 0) { 

            if (null != session.getAttribute("regConceptBoardPaymentStartDateList")) {
        	@SuppressWarnings("rawtypes")
            ArrayList regConctBoardPaymentStartDateList = (ArrayList) session.getAttribute("regConceptBoardPaymentStartDateList");
            if (null != regConctBoardPaymentStartDateList && regConctBoardPaymentStartDateList.size() > 0) {
               	
           	if (null != session.getAttribute("registrantNameList")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList registrantNamesList = (ArrayList) session.getAttribute("registrantNameList");
           	if (null != registrantNamesList && registrantNamesList.size() > 0) {
           	   	
            if (null != session.getAttribute("registrantCBGiftReceivedStatusList")) {
        	@SuppressWarnings("rawtypes")
            ArrayList regCBGiftReceivedStatusList = (ArrayList) session.getAttribute("registrantCBGiftReceivedStatusList");
            if (null != regCBGiftReceivedStatusList && regCBGiftReceivedStatusList.size() > 0) {
               	
            if (null != session.getAttribute("regGRTrackingLinksList")) {
            @SuppressWarnings("rawtypes")
            ArrayList regiGRTrackingLinksList = (ArrayList) session.getAttribute("regGRTrackingLinksList");
            if (null != regiGRTrackingLinksList && regiGRTrackingLinksList.size() > 0) {
               	
            if (null != session.getAttribute("regGRBOTillDatesList")) {
            @SuppressWarnings("rawtypes")
            ArrayList regiGRBOTillDatesList = (ArrayList) session.getAttribute("regGRBOTillDatesList");
            if (null != regiGRBOTillDatesList && regiGRBOTillDatesList.size() > 0) {            
        %>
		
		<% for(int i=0; i<regConctBoardPaymentIdsList.size(); i++) { 
			byte[] cbIndividualProductImageByte = (byte[]) regConctBoardPaymentImageList.get(i);
        	String cbIndividualProductImage = null;
        	if(null != cbIndividualProductImageByte) {
        		String cbIndividualProductImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(cbIndividualProductImageByte);
        		cbIndividualProductImage = "data:image/jpg;base64," +cbIndividualProductImageB64;
        	}
        	String regCBIndGiftRecStatus = (String) regCBGiftReceivedStatusList.get(i);        	
		%>				
			<div class="row">
				<div class="col-md-12 col-sm-12">				
					<div style="height: 130px;"><div class="concept_board_frame_cl"><img align="middle" src="<%=cbIndividualProductImage%>" style="object-fit: scale-down; width: 100px;" ></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regConctBoardPaymentNameList.get(i)%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">$<%=regConctBoardPaymentAmountList.get(i)%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=registrantNamesList.get(i)%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regConctBoardPaymentStartDateList.get(i)%></div></div>					              
				</div>				
				
				<div class="col-md-12 col-sm-12">				
					<% if(("No Action").equals(regCBIndGiftRecStatus)) { %>
					    <div style="height: 140px;"><div class="my_acc_room_fund_link_text_dsp concept_board_frame_cl"><form action="registryMACBIndividualShopNow"><button class="reg_transfer_now_subt_Btn" onclick="return confirm('Please confirm that you would like us to place the order for this gift at this time.');">Ship Now</button> <input type="hidden" name="registryCBIndividualShopNowRef" value="<%=regConctBoardPaymentIdsList.get(i)%>"> </form> <br><a href="regMACBIndividualConToStoreCredit?regConToStoreCreditRef=<%=regConctBoardPaymentIdsList.get(i)%>" class="convert_to_store_credit_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
						    <div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
			         			<span class="mytext" style="margin-top: -110px;"> You can request to have your gift shipped now or you can convert the gift amount to store credit that can be used on Nook+Cove for any product at any time. </span>
			         		</div>
					<% } else if(("Converted to Store Credit").equals(regCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regCBIndGiftRecStatus%></div></div>
							<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		         				<span class="mytext" style="margin-top: -70px;"> Your store credit details can be found under the 'Store Credit' tab under 'Gifts' to your left. </span>
		         			</div>
					<% } else if(("Order Processing").equals(regCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regCBIndGiftRecStatus%></div></div>
					<% } else if(("Ordered").equals(regCBIndGiftRecStatus)) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regCBIndGiftRecStatus%></div></div>
					<% } else if((("Tracking").equals(regCBIndGiftRecStatus))) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regiGRTrackingLinksList.get(i)%></div></div>
					<% } else if((("Delivered").equals(regCBIndGiftRecStatus))) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regCBIndGiftRecStatus%></div></div>
					<% } else if((("Back Ordered Till").equals(regCBIndGiftRecStatus))) { %>
						<div style="height: 120px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regCBIndGiftRecStatus%>&nbsp;<%=regiGRBOTillDatesList.get(i)%>  <br><br><a href="regMACBIndividualConToStoreCredit?regConToStoreCreditRef=<%=regConctBoardPaymentIdsList.get(i)%>" class="con_still_date_dsp_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
							<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		         				<span class="mytext" style="margin-top: -145px;"> This product is on back order till the date provided. You can either wait for the product to become available or you can convert the gift amount to store credit at this time to shop for something else. </span>
		         			</div>
					<% } else if((("Converted to Store Credit Due to Out of Stock").equals(regCBIndGiftRecStatus))) { %>
						<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regCBIndGiftRecStatus%></div></div>
							<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		         				<span class="mytext" style="margin-top: -155px;"> This product is no longer in stock therefore the gift amount has been converted into store credit. Generally we replace out of stock products with similar products that can be found in our concept boards. </span>
		         			</div>
					<%  }  %>					              
				</div>
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> 
				
		<% } %>        
        <% } } } } } } } } } } } } } } } } } } %>
                
<!-- Guest Design Curated Finishing Touches Add Cart Coding -->						
		<% 
		   	if (null != session.getAttribute("guestFinishingTouchesPaymentIdsList")) { @SuppressWarnings("rawtypes") ArrayList guestFinTouchesPaymentIdsList = (ArrayList) session.getAttribute("guestFinishingTouchesPaymentIdsList"); if (null != guestFinTouchesPaymentIdsList && guestFinTouchesPaymentIdsList.size() > 0) {		
		   	if (null != session.getAttribute("guestFinishingTouchesPaymentImageList")) { @SuppressWarnings("rawtypes") ArrayList guestFinTouchesPaymentImageList = (ArrayList) session.getAttribute("guestFinishingTouchesPaymentImageList"); if (null != guestFinTouchesPaymentImageList && guestFinTouchesPaymentImageList.size() > 0) {
          	if (null != session.getAttribute("guestFinishingTouchesPaymentNameList")) { @SuppressWarnings("rawtypes") ArrayList guestFinTouchesPaymentNameList = (ArrayList) session.getAttribute("guestFinishingTouchesPaymentNameList"); if (null != guestFinTouchesPaymentNameList && guestFinTouchesPaymentNameList.size() > 0) {
           	if (null != session.getAttribute("guestFinishingTouchesPaymentAmountList")) { @SuppressWarnings("rawtypes") ArrayList guestFinTouchesPaymentAmountList = (ArrayList) session.getAttribute("guestFinishingTouchesPaymentAmountList"); if (null != guestFinTouchesPaymentAmountList && guestFinTouchesPaymentAmountList.size() > 0) {
            if (null != session.getAttribute("guestFinishingTouchesPaymentStartDateList")) { @SuppressWarnings("rawtypes") ArrayList guestFinTouchesPaymentStartDateList = (ArrayList) session.getAttribute("guestFinishingTouchesPaymentStartDateList"); if (null != guestFinTouchesPaymentStartDateList && guestFinTouchesPaymentStartDateList.size() > 0) {               	
           	if (null != session.getAttribute("guestFTNameList")) { @SuppressWarnings("rawtypes") ArrayList guestsFTNameList = (ArrayList) session.getAttribute("guestFTNameList"); if (null != guestsFTNameList && guestsFTNameList.size() > 0) {           	   	
            if (null != session.getAttribute("guestFTGiftReceivedStatusList")) { @SuppressWarnings("rawtypes") ArrayList gustFTGiftReceivedStatusList = (ArrayList) session.getAttribute("guestFTGiftReceivedStatusList"); if (null != gustFTGiftReceivedStatusList && gustFTGiftReceivedStatusList.size() > 0) {               	
            if (null != session.getAttribute("guestFTGRTrackingLinksList")) { @SuppressWarnings("rawtypes") ArrayList gustGRTrackingLinksList = (ArrayList) session.getAttribute("guestFTGRTrackingLinksList"); if (null != gustGRTrackingLinksList && gustGRTrackingLinksList.size() > 0) {            	
            if (null != session.getAttribute("guestFTGRBOTillDatesList")) { @SuppressWarnings("rawtypes") ArrayList gustGRBOTillDatesList = (ArrayList) session.getAttribute("guestFTGRBOTillDatesList"); if (null != gustGRBOTillDatesList && gustGRBOTillDatesList.size() > 0) {       
        %>
		<% for(int i=0; i<guestFinTouchesPaymentIdsList.size(); i++) { 
			byte[] ftIndividualProductsImageByte = (byte[]) guestFinTouchesPaymentImageList.get(i); String ftIndividualProductsImage = null;
        	if(null != ftIndividualProductsImageByte) {
        		String ftIndividualProductsImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(ftIndividualProductsImageByte); ftIndividualProductsImage = "data:image/jpg;base64," +ftIndividualProductsImageB64;
        	} String guestFTIndGiftRecStatus = (String) gustFTGiftReceivedStatusList.get(i);        	
		%>
		<div class="row"> 
		<div class="col-md-12 col-sm-12"> 
		<div style="height: 130px;"><div class="concept_board_frame_cl"><img align="middle" src="<%=ftIndividualProductsImage%>" style="object-fit: scale-down; width: 100px;" ></div></div> </div>
		<div class="col-md-12 col-sm-12">
		<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl concept_board_frame_cl"><%=guestFinTouchesPaymentNameList.get(i)%></div></div> </div>								
		<div class="col-md-2 col-sm-2"> 
		<div style="padding: 30px 5px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">$<%=guestFinTouchesPaymentAmountList.get(i)%><%-- <font style="color: #696969;">/<%=guestFinTouchesPaymentQuantityList.get(i)%></font> --%></div></div> </div> 
		<div class="col-md-2 col-sm-2">
		<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=guestsFTNameList.get(i)%></div></div> </div> 
		<div class="col-md-2 col-sm-2">
		<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=guestFinTouchesPaymentStartDateList.get(i)%></div></div> </div>
		 
		<div class="col-md-12 col-sm-12">
		<% if(("No Action").equals(guestFTIndGiftRecStatus)) { %>
		<div style="height: 140px;">
		<div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><form action="guestMAFTIndividualShopNow"><button class="reg_transfer_now_subt_Btn" onclick="return confirm('Please confirm that you would like us to place the order for this gift at this time.');">Ship Now</button> <input type="hidden" name="guestFTIndividualShopNowRef" value="<%=guestFinTouchesPaymentIdsList.get(i)%>"> </form> <br>
		<a href="guestMAFTIndividualConToStoreCredit?regConToStoreCreditRef=<%=guestFinTouchesPaymentIdsList.get(i)%>" class="convert_to_store_credit_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
		
		<div align="center" class="mytooltip" style="margin-left: 200px; margin-top: 20px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -110px;"> You can request to have your gift shipped now or you can convert the gift amount to store credit that can be used on Nook+Cove for any product at any time. </span></div>
		
		<% } else if(("Converted to Store Credit").equals(guestFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestFTIndGiftRecStatus%></div></div>
		<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -70px;"> Your store credit details can be found under the 'Store Credit' tab under 'Gifts' to your left. </span>
		</div>
		
		<% } else if(("Order Processing").equals(guestFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestFTIndGiftRecStatus%></div></div>
		<% } else if(("Ordered").equals(guestFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestFTIndGiftRecStatus%></div></div>
		<% } else if(("Tracking").equals(guestFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=gustGRTrackingLinksList.get(i)%></div></div>
		<% } else if(("Delivered").equals(guestFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestFTIndGiftRecStatus%></div></div>
		<% } else if(("Back Ordered Till").equals(guestFTIndGiftRecStatus)) { %>
		<div style="height: 120px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestFTIndGiftRecStatus%>&nbsp;<%=gustGRBOTillDatesList.get(i)%>  <br><br>		
	    <a href="guestMAFTIndividualConToStoreCredit?regConToStoreCreditRef=<%=guestFinTouchesPaymentIdsList.get(i)%>" class="con_still_date_dsp_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>		
		<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -145px;"> This product is on back order till the date provided. You can either wait for the product to become available or you can convert the gift amount to store credit at this time to shop for something else. </span></div>
		<% } else if(("Converted to Store Credit Due to Out of Stock").equals(guestFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=guestFTIndGiftRecStatus%></div></div>
		<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -155px;"> This product is no longer in stock therefore the gift amount has been converted into store credit. Generally we replace out of stock products with similar products that can be found in our Finishing Touches. </span> </div>
		<% } %> </div> 
		<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
		
		</div>  
		<% } %>
        <% } } } } } } } } } } } } } } } } } } %>
        			
<!-- Registry Design Curated Finishing Touches Add Cart Coding -->			
		<% 		
		   	if (null != session.getAttribute("regFinishingTouchesPaymentIdsList")) { @SuppressWarnings("rawtypes") ArrayList regFiniTouchesPaymentIdsList = (ArrayList) session.getAttribute("regFinishingTouchesPaymentIdsList"); if (null != regFiniTouchesPaymentIdsList && regFiniTouchesPaymentIdsList.size() > 0) {	
		   	if (null != session.getAttribute("regFinishingTouchesPaymentImageList")) { @SuppressWarnings("rawtypes") ArrayList regFiniTouchesPaymentImageList = (ArrayList) session.getAttribute("regFinishingTouchesPaymentImageList"); if (null != regFiniTouchesPaymentImageList && regFiniTouchesPaymentImageList.size() > 0) {
           	if (null != session.getAttribute("regFinishingTouchesPaymentNameList")) { @SuppressWarnings("rawtypes") ArrayList regFiniTouchesPaymentNameList = (ArrayList) session.getAttribute("regFinishingTouchesPaymentNameList"); if (null != regFiniTouchesPaymentNameList && regFiniTouchesPaymentNameList.size() > 0) {
           	if (null != session.getAttribute("regFinishingTouchesPaymentAmountList")) { @SuppressWarnings("rawtypes") ArrayList regFiniTouchesPaymentAmountList = (ArrayList) session.getAttribute("regFinishingTouchesPaymentAmountList"); if (null != regFiniTouchesPaymentAmountList && regFiniTouchesPaymentAmountList.size() > 0) {
            if (null != session.getAttribute("regFinishingTouchesPaymentStartDateList")) { @SuppressWarnings("rawtypes") ArrayList regFiniTouchesPaymentStartDateList = (ArrayList) session.getAttribute("regFinishingTouchesPaymentStartDateList"); if (null != regFiniTouchesPaymentStartDateList && regFiniTouchesPaymentStartDateList.size() > 0) {           	
           	if (null != session.getAttribute("ftRegistrantNameList")) { @SuppressWarnings("rawtypes") ArrayList registrantNamesList = (ArrayList) session.getAttribute("ftRegistrantNameList"); if (null != registrantNamesList && registrantNamesList.size() > 0) {        	   	
            if (null != session.getAttribute("registrantFTGiftReceivedStatusList")) { @SuppressWarnings("rawtypes") ArrayList regFTGiftReceivedStatusList = (ArrayList) session.getAttribute("registrantFTGiftReceivedStatusList"); if (null != regFTGiftReceivedStatusList && regFTGiftReceivedStatusList.size() > 0) {         	
            if (null != session.getAttribute("regFTGRTrackingLinksList")) { @SuppressWarnings("rawtypes") ArrayList regiGRTrackingLinksList = (ArrayList) session.getAttribute("regFTGRTrackingLinksList"); if (null != regiGRTrackingLinksList && regiGRTrackingLinksList.size() > 0) {          	
            if (null != session.getAttribute("regFTGRBOTillDatesList")) { @SuppressWarnings("rawtypes") ArrayList regiGRBOTillDatesList = (ArrayList) session.getAttribute("regFTGRBOTillDatesList"); if (null != regiGRBOTillDatesList && regiGRBOTillDatesList.size() > 0) {
            	
        %>
		<%  for(int i=0; i<regFiniTouchesPaymentIdsList.size(); i++) { 
			byte[] ftIndividualProductImageByte = (byte[]) regFiniTouchesPaymentImageList.get(i); String ftIndividualProductImage = null;
        	if(null != ftIndividualProductImageByte) {
        		String ftIndividualProductImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(ftIndividualProductImageByte); ftIndividualProductImage = "data:image/jpg;base64," +ftIndividualProductImageB64;
        	} String regFTIndGiftRecStatus = (String) regFTGiftReceivedStatusList.get(i);        	
		%>
		
		<div class="row">
		<div class="col-md-12 col-sm-12">				
		<div style="height: 130px;"><div class="concept_board_frame_cl"><img align="middle" src="<%=ftIndividualProductImage%>" style="object-fit: scale-down; width: 100px;" ></div></div> </div> 
		<div class="col-md-12 col-sm-12">				
		<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regFiniTouchesPaymentNameList.get(i)%></div></div> </div>								
		<div class="col-md-12 col-sm-12">				
		<div style="padding: 30px 5px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">$<%=regFiniTouchesPaymentAmountList.get(i)%><%-- <font style="color: #696969;">/<%=regFiniTouchesPaymentQuantityList.get(i)%></font> --%></div></div> </div> 
		<div class="col-md-12 col-sm-12">				
		<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=registrantNamesList.get(i)%></div></div> </div>  
		<div class="col-md-12 col-sm-12">				
		<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regFiniTouchesPaymentStartDateList.get(i)%></div></div> </div>  
		
		<div class="col-md-12 col-sm-12">
		<% if(("No Action").equals(regFTIndGiftRecStatus)) { %>
		<div style="height: 140px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><form action="registryMAFTIndividualShopNow"><button class="reg_transfer_now_subt_Btn" onclick="return confirm('Please confirm that you would like us to place the order for this gift at this time.');">Ship Now</button> <input type="hidden" name="registryFTIndividualShopNowRef" value="<%=regFiniTouchesPaymentIdsList.get(i)%>"> </form> <br> <a href="regMAFTIndividualConToStoreCredit?regConToStoreCreditRef=<%=regFiniTouchesPaymentIdsList.get(i)%>" class="convert_to_store_credit_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
		<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -110px;"> You can request to have your gift shipped now or you can convert the gift amount to store credit that can be used on Nook+Cove for any product at any time. </span></div>					    
		
		<% } else if(("Converted to Store Credit").equals(regFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regFTIndGiftRecStatus%></div></div>
		<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -70px;"> Your store credit details can be found under the 'Store Credit' tab under 'Gifts' to your left. </span> </div>
		
		<% } else if(("Order Processing").equals(regFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regFTIndGiftRecStatus%></div></div>
		<% } else if(("Ordered").equals(regFTIndGiftRecStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regFTIndGiftRecStatus%></div></div>
		<% } else if((("Tracking").equals(regFTIndGiftRecStatus))) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regiGRTrackingLinksList.get(i)%></div></div>
		<% } else if((("Delivered").equals(regFTIndGiftRecStatus))) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regFTIndGiftRecStatus%></div></div>
		
		<% } else if((("Back Ordered Till").equals(regFTIndGiftRecStatus))) { %>					
		<div style="height: 120px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regFTIndGiftRecStatus%>&nbsp;<%=regiGRBOTillDatesList.get(i)%> <br><br> <div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><a href="regMAFTIndividualConToStoreCredit?regConToStoreCreditRef=<%=regFiniTouchesPaymentIdsList.get(i)%>" class="con_still_date_dsp_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
		<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -145px;"> This product is on back order till the date provided. You can either wait for the product to become available or you can convert the gift amount to store credit at this time to shop for something else. </span></div>
		
		<% } else if((("Converted to Store Credit Due to Out of Stock").equals(regFTIndGiftRecStatus))) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regFTIndGiftRecStatus%></div></div>
		<div class="mytooltip" style="margin-left: 200px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -155px;"> This product is no longer in stock therefore the gift amount has been converted into store credit. Generally we replace out of stock products with similar products that can be found in our Finishing Touches. </span> </div>
		<% } %>
		</div> 
		<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
		</div> </div> </div> 
		<% } %>        
        <% } } } } } } } } } } } } } } } } } } %>
        
        									
		<div class="row" id="notVsibleGroupGiftId" style="display: none;">
			<div class="col-md-12 col-sm-12"><div class="service-item"><div class="service-description reg_pro_left_adj_disp">
				<div align="left" style="margin-top: 10px; margin-left: 25px;">        			
					<div class="registry_prof_title"><h2>Group Gifts</h2></div>
		        </div>
		        
		        <div align="left" style="margin-top: -20px; margin-left: 0px;">        			
					<div class="registry_prof_title"><p class="regi_prof_left_sub_nor_text">You have not received any contributions towards any group gifts yet.</p></div>
		        </div>
		  	</div></div></div>
		</div>
			
<!-- Contribute Code Visible Group Gift display -->
			
			<div class="row" id="visibleGroupGiftId" style="display: none; padding-bottom: 30px;">				
				<div class="col-md-12 col-sm-12"><div class="service-item"><div class="service-description reg_pro_left_adj_disp">
					<div align="left" style="margin-top: 10px; margin-left: 25px;">        			
						<div class="registry_prof_title"><h2>Group Gifts</h2></div>
				    </div> </div></div>
				</div>
				
				  	
				<div class="row" style=" padding: 10px;">
					<div class="col-md-12 col-sm-12" style="margin-top: -20px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">GIFT</div>					   	              
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">NAME</div>					               
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">TOTAL</div>					               
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">FROM</div>					               
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">DATE</div>					        
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">AMOUNT</div>					        
					</div>
							        
				</div>
					    
	        	<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>	
			    
	        				
<!-- Registry Design Curated Concept Boards Contribute Coding -->			
			
		<% 
		   	if (null != session.getAttribute("regConceptBoardContributePaymentIdsList")) {
		   	@SuppressWarnings("rawtypes")
	       	ArrayList regConBoardContributePaymentIdsList = (ArrayList) session.getAttribute("regConceptBoardContributePaymentIdsList");		   	
	       	if (null != regConBoardContributePaymentIdsList && regConBoardContributePaymentIdsList.size() > 0) {
		
		   	if (null != session.getAttribute("regConceptBoardContributePaymentImageList")) {
		   	@SuppressWarnings("rawtypes")
           	ArrayList regConBoardContributePaymentImageList = (ArrayList) session.getAttribute("regConceptBoardContributePaymentImageList");
           	if (null != regConBoardContributePaymentImageList && regConBoardContributePaymentImageList.size() > 0) {

           	if (null != session.getAttribute("regConceptBoardContributePaymentNameList")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList regConBoardContributePaymentNameList = (ArrayList) session.getAttribute("regConceptBoardContributePaymentNameList");
           	if (null != regConBoardContributePaymentNameList && regConBoardContributePaymentNameList.size() > 0) {

            if (null != session.getAttribute("regConceptBoardContributeTotalPriceList")) {
        	@SuppressWarnings("rawtypes")
            ArrayList regConBoardContributeTotalPriceList = (ArrayList) session.getAttribute("regConceptBoardContributeTotalPriceList");
            if (null != regConBoardContributeTotalPriceList && regConBoardContributeTotalPriceList.size() > 0) { 

           	if (null != session.getAttribute("regConceptBoardTotalContributedDataList")) {
           	@SuppressWarnings("rawtypes")
           	ArrayList regConBoardTotalContributedDataList = (ArrayList) session.getAttribute("regConceptBoardTotalContributedDataList");
           	if (null != regConBoardTotalContributedDataList && regConBoardTotalContributedDataList.size() > 0) {           		

            if (null != session.getAttribute("registryAndGuestCBGiftReceivedStatusList")) {
            @SuppressWarnings("rawtypes")
            ArrayList regAndGuestCBGiftReceivedStatusList = (ArrayList) session.getAttribute("registryAndGuestCBGiftReceivedStatusList");
            if (null != regAndGuestCBGiftReceivedStatusList && regAndGuestCBGiftReceivedStatusList.size() > 0) { 
               	
            if (null != session.getAttribute("regContGRTrackingLinksList")) {
            @SuppressWarnings("rawtypes")
            ArrayList regiContGRTrackingLinksList = (ArrayList) session.getAttribute("regContGRTrackingLinksList");
            if (null != regiContGRTrackingLinksList && regiContGRTrackingLinksList.size() > 0) {
                   	
            if (null != session.getAttribute("regContGRBOTillDatesList")) {
            @SuppressWarnings("rawtypes")
            ArrayList regiContGRBOTillDatesList = (ArrayList) session.getAttribute("regContGRBOTillDatesList");
            if (null != regiContGRBOTillDatesList && regiContGRBOTillDatesList.size() > 0) {
            	
        %>
		
		<% for(int i=0; i<regConBoardContributePaymentIdsList.size(); i++) { 
			byte[] cbContributedProductImageByte = (byte[]) regConBoardContributePaymentImageList.get(i);
        	String cbContributedProductImage = null;
        	if(null != cbContributedProductImageByte) {
        		String cbContributedProductImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(cbContributedProductImageByte);
        		cbContributedProductImage = "data:image/jpg;base64," +cbContributedProductImageB64;
        	}
        	double totalProductAmountDb = Double.parseDouble((String) regConBoardContributeTotalPriceList.get(i));
        	String totalProductAmountSt = String.format("%,.2f", totalProductAmountDb);
		%>		
			
			<div class="row">
				<div class="col-md-12 col-sm-12">				
					<div style="height: 130px;"><div class="concept_board_frame_cl"><img align="middle" src="<%=cbContributedProductImage%>" style="object-fit: scale-down; width: 100px;" ></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regConBoardContributePaymentNameList.get(i)%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">$<%=totalProductAmountSt%></div></div>					              
				</div>
								
								
			<div class="col-md-12 col-sm-12">
			
				<% String regConBoardTotalContributedDataSt = (String) regConBoardTotalContributedDataList.get(i);
						String[] regConBoardTotalContDataDspSt = regConBoardTotalContributedDataSt.split("__");
						double originalTotalAmountDb = Double.parseDouble((String) regConBoardContributeTotalPriceList.get(i));
						String cbButtonStatus = null;
						double totalContrAmount = 0;
						String contNoActionDsp = null;
						for(int a=0; a<regConBoardTotalContDataDspSt.length; a++) {
							String[] regConBoardContributedData = regConBoardTotalContDataDspSt[a].split("_,_");
							String regFullName = regConBoardContributedData[0];
							String regDate = regConBoardContributedData[1];
							String regGivenPrice = regConBoardContributedData[2];
							String contributedStatusRef = regConBoardContributedData[3];
							double remAmount = Double.parseDouble(regGivenPrice);
							String regGivenPriceSt = String.format("%,.2f", remAmount);
							totalContrAmount = totalContrAmount + remAmount;
							String contributedCBStatusCh = (String) regAndGuestCBGiftReceivedStatusList.get(i);
				%>
					 <div class="row">
						<div class="row" align="center"><div style="width: 140px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
						
						<div class="col-md-12 col-sm-12">				
							<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regFullName%></div></div>					              
						</div>
						
						<div class="col-md-12 col-sm-12">				
							<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regDate%></div></div>					              
						</div>
						
						
						 <div class="col-md-12 col-sm-12">							
									<% if(("Converted to Store Credit").equals(contributedCBStatusCh) && ("Converted to Store Credit").equals(contributedStatusRef)) { %>			
																				
										<div style="height: 60px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">
											<div style="margin-top: 0px; font: bold 0.97em/1.15em Georgia; white-space: nowrap; letter-spacing: 0px; text-transform: capitalize; color: #a0a0a0;">Store Credit</div>
											<div style="margin-top: 5px; color: #a0a0a0;">$<%=regGivenPriceSt%></div>
										</div></div>
									<% } else { contNoActionDsp = "No Action"; %>
										<div style="height: 30px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">$<%=regGivenPriceSt%></div></div>
									<% } %>						    	
								            
						</div> 
												 
					 </div>
					 					
			<% } double remainingAmountDb = originalTotalAmountDb - totalContrAmount;			
				String stillNeedContAmount = String.format("%,.2f", remainingAmountDb);
				String contributedCBStatus = (String) regAndGuestCBGiftReceivedStatusList.get(i);
				String fullfillContAmount = String.format("%,.2f", totalContrAmount);
			%>
				
			<% if(("Converted to Store Credit").equals(contributedCBStatus)) { %>
				<div class="row" style="width: auto; margin-top: 20px;">						
						
						<div class="col-md-12 col-sm-12">
							<div align="center">
								<% if(("No Action").equals(contNoActionDsp)) { %>
									<div style="height: 60px;">	<div class="my_acc_room_fund_link_text_dsp concept_board_frame_cl" style="font: 500 1.0em/1.5em Georgia;">
										<a href="regMACBContributedConToStoreCredit?regConToStoreCreditRef=<%=regConBoardContributePaymentIdsList.get(i)%>" class="con_still_date_dsp_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a>
									</div></div>
								<% } else { %>
									<div style="height: 60px;">	<div class="my_acc_room_fund_link_text_dsp concept_board_frame_cl" style="font: 500 1.0em/1.5em Georgia;">
										<div class="cont_disable_stcre_cl" >Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</div>
									</div></div>
								<% } %>
							</div>
						</div>					
					</div>
			
			<% } else { %>			
			
					<div class="row" style="width: auto; margin-top: 20px;">						
						<div class="col-md-12 col-sm-12">
							<div align="center">
								<% if(remainingAmountDb > 0) { %>
									<div style="height: 30px;">	<div class="my_acc_contributed_hd_text_dsp" style="position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%);">
										<div align="center">STIL NEED</div>
									</div></div>	
								<% } else { %>
									<div style="height: 30px;">	<div class="my_acc_contributed_hd_text_dsp" style="position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%);">
										<div align="center"><img src="resources/images/registry/contributed_tick_mark_img.png" style="position: relative; top: -5px;">FULLFILLED</div>
									</div></div>
								<% } %>
							</div>             
						</div>
						
						<div class="col-md-12 col-sm-12">
							<div align="center">
								<% if(remainingAmountDb > 0) { %>
									<div style="height: 30px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl" style="color: red;">$<%=stillNeedContAmount%></div></div>
								<% } else { %>
									<div style="height: 30px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl" style="color: black;">$<%=fullfillContAmount%></div></div>
								<% } %>
							</div>               
						</div>						
					</div>
					
					
					
					<div class="row" style="width: auto; margin-top: 20px;">
						
						<div class="col-md-12 col-sm-12">
							<div align="center">
								<% if(("No Action").equals(contributedCBStatus)) { if(remainingAmountDb > 0) {  %>
									<div style="height: 100px;">	<div class="my_acc_room_fund_link_text_dsp concept_board_frame_cl">
										<div style="margin-top: 30px; margin-bottom: 15px;"><button class="reg_cb_disable_subt_Btn">Ship Now</button></div>
										<a href="regMACBContributedConToStoreCredit?regConToStoreCreditRef=<%=regConBoardContributePaymentIdsList.get(i)%>" class="convert_to_store_credit_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a>
									</div></div>	
								<% } else { %>
									<div style="height: 100px;"> <div class="my_acc_room_fund_link_text_dsp concept_board_frame_cl">
										<div style="margin-top: 30px; margin-bottom: 15px;"><form action="regMACBContributedShopNow"><button class="reg_transfer_now_subt_Btn" onclick="return confirm('Please confirm that you would like us to place the order for this gift at this time.');">Ship Now</button> <input type="hidden" name="regCBContributedShopNowRef" value="<%=regConBoardContributePaymentIdsList.get(i)%>"> </form></div>
										<div><a href="regMACBContributedConToStoreCredit?regConToStoreCreditRef=<%=regConBoardContributePaymentIdsList.get(i)%>" class="convert_to_store_credit_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div>
									</div></div>
										<div class="mytooltip" style="margin-left: 0px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
						         			<span class="mytext" style="margin-top: -110px;"> You can request to have your gift shipped now or you can convert the gift amount to store credit that can be used on Nook+Cove for any product at any time. </span>
						         		</div>
								<% } } else if(("Order Processing").equals(contributedCBStatus)) { %>
									<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedCBStatus%></div></div>
								<% } else if(("Ordered").equals(contributedCBStatus)) { %>
									<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedCBStatus%></div></div>
								<% } else if((("Tracking").equals(contributedCBStatus))) { %>
									<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regiContGRTrackingLinksList.get(i)%></div></div>
								<% } else if((("Delivered").equals(contributedCBStatus))) { %>
									<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedCBStatus%></div></div>
								<% } else if((("Back Ordered Till").equals(contributedCBStatus))) { %>
									<div style="height: 100px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedCBStatus%>&nbsp;<%=regiContGRBOTillDatesList.get(i)%>  <br><br><a href="regMACBContributedConToStoreCreditInBOTD?regConToStoreCreditRef=<%=regConBoardContributePaymentIdsList.get(i)%>" class="con_still_date_dsp_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
										<div class="mytooltip" style="margin-left: 0px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
					         				<span class="mytext" style="margin-top: -145px;"> This product is on back order till the date provided. You can either wait for the product to become available or you can convert the gift amount to store credit at this time to shop for something else. </span>
					         			</div>
								<% } else if((("Converted to Store Credit Due to Out of Stock").equals(contributedCBStatus))) { %>
									<div style="height: 80px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedCBStatus%></div></div>
										<div class="mytooltip" style="margin-left: 0px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
					         				<span class="mytext" style="margin-top: -155px;"> This product is no longer in stock therefore the gift amount has been converted into store credit. Generally we replace out of stock products with similar products that can be found in our concept boards. </span>
					         			</div>
								<%  }  %>
							</div> </div> </div>
	            <% } %>
		</div> </div>				
		<% } %>                
        <% } } } } } } } } } } } } } } } } %>
        
<!-- Registry Design Curated Finishing Touches Contribute Coding -->						
		<% 		
		   	if (null != session.getAttribute("regFinishingTouchesContributePaymentIdsList")) { @SuppressWarnings("rawtypes") ArrayList regFinTouchesContributePaymentIdsList = (ArrayList) session.getAttribute("regFinishingTouchesContributePaymentIdsList"); if (null != regFinTouchesContributePaymentIdsList && regFinTouchesContributePaymentIdsList.size() > 0) {		
		   	if (null != session.getAttribute("regFinishingTouchesContributePaymentImageList")) { @SuppressWarnings("rawtypes") ArrayList regFinTouchesContributePaymentImageList = (ArrayList) session.getAttribute("regFinishingTouchesContributePaymentImageList"); if (null != regFinTouchesContributePaymentImageList && regFinTouchesContributePaymentImageList.size() > 0) {
           	if (null != session.getAttribute("regFinishingTouchesContributePaymentNameList")) { @SuppressWarnings("rawtypes") ArrayList regFinTouchesContributePaymentNameList = (ArrayList) session.getAttribute("regFinishingTouchesContributePaymentNameList"); if (null != regFinTouchesContributePaymentNameList && regFinTouchesContributePaymentNameList.size() > 0) {
            if (null != session.getAttribute("regFinishingTouchesContributeTotalPriceList")) { @SuppressWarnings("rawtypes") ArrayList regFinTouchesContributeTotalPriceList = (ArrayList) session.getAttribute("regFinishingTouchesContributeTotalPriceList"); if (null != regFinTouchesContributeTotalPriceList && regFinTouchesContributeTotalPriceList.size() > 0) {
           	if (null != session.getAttribute("regFinishingTouchesTotalContributedDataList")) { @SuppressWarnings("rawtypes") ArrayList regFinTouchesTotalContributedDataList = (ArrayList) session.getAttribute("regFinishingTouchesTotalContributedDataList"); if (null != regFinTouchesTotalContributedDataList && regFinTouchesTotalContributedDataList.size() > 0) {          		
            if (null != session.getAttribute("registryAndGuestFTGiftReceivedStatusList")) { @SuppressWarnings("rawtypes") ArrayList regAndGuestFTGiftReceivedStatusList = (ArrayList) session.getAttribute("registryAndGuestFTGiftReceivedStatusList"); if (null != regAndGuestFTGiftReceivedStatusList && regAndGuestFTGiftReceivedStatusList.size() > 0) {               	
            if (null != session.getAttribute("regFTContGRTrackingLinksList")) { @SuppressWarnings("rawtypes") ArrayList regiContGRTrackingLinksList = (ArrayList) session.getAttribute("regFTContGRTrackingLinksList"); if (null != regiContGRTrackingLinksList && regiContGRTrackingLinksList.size() > 0) {                   	
            if (null != session.getAttribute("regFTContGRBOTillDatesList")) { @SuppressWarnings("rawtypes") ArrayList regiContGRBOTillDatesList = (ArrayList) session.getAttribute("regFTContGRBOTillDatesList"); if (null != regiContGRBOTillDatesList && regiContGRBOTillDatesList.size() > 0) {            	
        %>
		<% for(int i=0; i<regFinTouchesContributePaymentIdsList.size(); i++) { 
			byte[] ftContributedProductImageByte = (byte[]) regFinTouchesContributePaymentImageList.get(i); String ftContributedProductImage = null;
        	if(null != ftContributedProductImageByte) {
        		String ftContributedProductImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(ftContributedProductImageByte); ftContributedProductImage = "data:image/jpg;base64," +ftContributedProductImageB64;
        	} double totalProductAmountDb = Double.parseDouble((String) regFinTouchesContributeTotalPriceList.get(i)); String totalProductAmountSt = String.format("%,.2f", totalProductAmountDb);
		%>
		
		<div class="row"> 
		<div class="col-md-12 col-sm-12">				
			<div style="height: 130px;"><div class="concept_board_frame_cl"><img align="middle" src="<%=ftContributedProductImage%>" style="object-fit: scale-down; width: 100px;" ></div> </div> </div> 
		<div class="col-md-12 col-sm-12">				
			<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regFinTouchesContributePaymentNameList.get(i)%></div> </div> </div>
		<div class="col-md-12 col-sm-12">				
			<div style="padding: 30px 5px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">$<%=totalProductAmountSt%></div> </div> </div>						
		
		<div class="col-md-12 col-sm-12">
		<%	String regFinTouchesTotalContributedDataSt = (String) regFinTouchesTotalContributedDataList.get(i); String[] regFinTouchesTotalContDataDspSt = regFinTouchesTotalContributedDataSt.split("__"); double originalTotalAmountDb = Double.parseDouble((String) regFinTouchesContributeTotalPriceList.get(i)); String ftButtonStatus = null; double totalContrAmount = 0; String contNoActionDsp = null;
			for(int a=0; a<regFinTouchesTotalContDataDspSt.length; a++) {
				String[] regFinTouchesContributedData = regFinTouchesTotalContDataDspSt[a].split("_,_"); String regFullName = regFinTouchesContributedData[0]; String regDate = regFinTouchesContributedData[1]; String regGivenPrice = regFinTouchesContributedData[2]; String contributedStatusRef = regFinTouchesContributedData[3]; double remAmount = Double.parseDouble(regGivenPrice); String regGivenPriceSt = String.format("%,.2f", remAmount); totalContrAmount = totalContrAmount + remAmount; String contributedFTStatusCh = (String) regAndGuestFTGiftReceivedStatusList.get(i);
		%>
	 	<div class="row">
			<div class="row" align="center"><div style="width: 140px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
		<div class="col-md-12 col-sm-12">				
			<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regFullName%></div> </div> </div> 
		<div class="col-md-12 col-sm-12">				
			<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp concept_board_frame_cl"><%=regDate%></div> </div> </div>
			
		<div class="col-md-12 col-sm-12">
		<% if(("Converted to Store Credit").equals(contributedFTStatusCh) && ("Converted to Store Credit").equals(contributedStatusRef)) { %>										
		<div style="height: 60px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">
		<div style="margin-top: 0px; font: bold 0.97em/1.15em Georgia; white-space: nowrap; letter-spacing: 0px; text-transform: capitalize; color: #a0a0a0;">Store Credit</div>
		<div style="margin-top: 5px; color: #a0a0a0;">$<%=regGivenPriceSt%></div> </div></div>
		<% } else { contNoActionDsp = "No Action"; %>
		<div style="height: 30px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl">$<%=regGivenPriceSt%></div></div>
		<% } %> </div> 
		</div>
							 					
		<% } double remainingAmountDb = originalTotalAmountDb - totalContrAmount; String stillNeedContAmount = String.format("%,.2f", remainingAmountDb); String contributedFTStatus = (String) regAndGuestFTGiftReceivedStatusList.get(i); String fullfillContAmount = String.format("%,.2f", totalContrAmount); %>
		<% if(("Converted to Store Credit").equals(contributedFTStatus)) { %>
		<div class="row" style="width: auto; margin-top: 20px;">						
		<div class="col-md-12 col-sm-12">
			<div align="center">
				<% if(("No Action").equals(contNoActionDsp)) { %>
		<div style="height: 60px;">	<div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl" style="font: 500 1.0em/1.5em Georgia;">
			<a href="regMAFTContributedConToStoreCredit?regConToStoreCreditRef=<%=regFinTouchesContributePaymentIdsList.get(i)%>" class="con_still_date_dsp_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a> </div></div>
		<% } else { %>
		<div style="height: 60px;">	<div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl" style="font: 500 1.0em/1.5em Georgia;">
		<div class="cont_disable_stcre_cl" >Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</div> </div></div>
		<% } %> </div> </div> </div> 
		
		<% } else { %>			
		<div class="row" style="width: auto; margin-top: 20px;">						
		<div class="col-md-12 col-sm-12"> <div align="center">
		<% if(remainingAmountDb > 0) { %>
		<div style="height: 30px;">	<div class="my_acc_contributed_hd_text_dsp" style="position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%);">
		<div align="center">STIL NEED</div> </div> </div>	
		<% } else { %>
		<div style="height: 30px;">	<div class="my_acc_contributed_hd_text_dsp" style="position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%);">
		<div align="center"><img src="resources/images/registry/contributed_tick_mark_img.png" style="position: relative; top: -5px;">FULLFILLED</div> </div> </div>
		<% } %> 
		</div> </div> 
		 
		<div class="col-md-12 col-sm-12"> <div align="center">
		<% if(remainingAmountDb > 0) { %>
		<div style="height: 30px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl" style="color: red;">$<%=stillNeedContAmount%></div></div>
		<% } else { %>
		<div style="height: 30px;"><div class="my_acc_room_fund_bold_text_dsp concept_board_frame_cl" style="color: black;">$<%=fullfillContAmount%></div></div>
		<% } %> </div> </div> </div>
		
			
		
		<div class="row" style="width: auto; margin-top: 20px;">
			
		
		
		<div class="col-md-12 col-sm-12"> <div align="center">
		
		<% if(("No Action").equals(contributedFTStatus)) { if(remainingAmountDb > 0) {  %>									
		<div style="height: 100px;"> <div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl">
		<div style="margin-top: 30px; margin-bottom: 15px;"><button class="reg_cb_disable_subt_Btn">Ship Now</button></div>
		<a href="regMAFTContributedConToStoreCredit?regConToStoreCreditRef=<%=regFinTouchesContributePaymentIdsList.get(i)%>" class="convert_to_store_credit_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a> </div></div>	
		
		<% } else { %>											
		<div style="height: 100px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><form action="regMAFTContributedShopNow"><button class="reg_transfer_now_subt_Btn" onclick="return confirm('Please confirm that you would like us to place the order for this gift at this time.');">Ship Now</button> <input type="hidden" name="regFTContributedShopNowRef" value="<%=regFinTouchesContributePaymentIdsList.get(i)%>"> </form> </div>
		<div><a href="regMAFTContributedConToStoreCredit?regConToStoreCreditRef=<%=regFinTouchesContributePaymentIdsList.get(i)%>" class="convert_to_store_credit_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
		<div class="mytooltip" style="margin-left: 0px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
		<span class="mytext" style="margin-top: -110px;"> You can request to have your gift shipped now or you can convert the gift amount to store credit that can be used on Nook+Cove for any product at any time. </span> </div>
		
		<% } } else if(("Order Processing").equals(contributedFTStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedFTStatus%></div></div>
		<% } else if(("Ordered").equals(contributedFTStatus)) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedFTStatus%></div></div>
		<% } else if((("Tracking").equals(contributedFTStatus))) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=regiContGRTrackingLinksList.get(i)%></div></div>
		<% } else if((("Delivered").equals(contributedFTStatus))) { %>
		<div style="height: 50px;"><div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedFTStatus%></div></div>
		
		<% } else if((("Back Ordered Till").equals(contributedFTStatus))) { %>
		<div style="height: 100px;">  <div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedFTStatus%>&nbsp;<%=regiContGRBOTillDatesList.get(i)%> <br> <br> <a href="regMAFTContributedConToStoreCreditInBOTD?regConToStoreCreditRef=<%=regFinTouchesContributePaymentIdsList.get(i)%>" class="con_still_date_dsp_cl" onclick="return confirm('Please confirm that you would like to convert the total gift amount to store credit at this time.');">Convert&nbsp;&nbsp;To <br>Store&nbsp;&nbsp;Credit</a></div></div>
		<div class="mytooltip" style="margin-left: 0px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
			<span class="mytext" style="margin-top: -145px;"> This product is on back order till the date provided. You can either wait for the product to become available or you can convert the gift amount to store credit at this time to shop for something else. </span></div>
		
		<% } else if((("Converted to Store Credit Due to Out of Stock").equals(contributedFTStatus))) { %>
		<div style="height: 80px;"> <div class="my_acc_guest_rev_link_bold_text_dsp concept_board_frame_cl"><%=contributedFTStatus%></div></div>
		<div class="mytooltip" style="margin-left: 0px; margin-top: 15px; margin-bottom: 15px;"><i style="font-size: 18px; cursor: pointer; " class="fa">&#xf059;</i>
			<span class="mytext" style="margin-top: -155px;"> This product is no longer in stock therefore the gift amount has been converted into store credit. Generally we replace out of stock products with similar products that can be found in our Finishing Touches. </span> </div>
		<%  }  %>	
		</div> </div> </div>
	    <% } %> 
	    </div> </div>				
		<% } %>                
        <% } } } } } } } } } } } } } } } } %>			
		
		</div>
		

<!-- Tips Code Display -->
	           
			<div class="row top_adjustment_70" id="notVisibleTipsDspId" style="display: none; padding-bottom: 50px;">
				<div class="col-md-12 col-sm-12"><div class="service-item"><div class="service-description reg_pro_left_adj_disp">
					<div align="left">							
						<div class="my_acc_tips_box_sh_dsp">
							<div class="my_acc_tips_box_hd_text_dsp">Tips:</div>
							<div class="my_acc_tips_box_sub_text_dsp">1.&nbsp;&nbsp;&nbsp;Make sure your registry is visible to guests by checking your &nbsp;&nbsp;&nbsp;<a href="registryPrivacyInfoChange" class="my_acc_tips_box_sub_text_link_dsp">Privacy Settings</a></div>
							<div class="my_acc_tips_box_sub_text_dsp">2.&nbsp;&nbsp;&nbsp;Make sure you are sharing the correct URL with your guests.</div>
							<div class="my_acc_tips_box_sub_text_dsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Check your registry's &nbsp;&nbsp;&nbsp;<a href="registryURLInfoChange" class="my_acc_tips_box_sub_text_link_dsp">URL</a></div>
						</div>							
				    </div>
				</div></div></div>				  	
			</div>							
						
			
			
			
		</div>
		</div>	        
       
    	<div style="margin-top: -50px;"></div> 		
		</div> </div>		     
		</body>
</html>