
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<style type="text/css">
	.regi_cart_doller_edit_dsp { background: white; border: 1px solid white; font: bold 1em/1.25em Georgia; height: 26px; width: 26px; text-align: right; color: black; }
	.reg_cart_price_edit_dsp { background: white; border: 1px solid white; font: bold 1em/1.25em Georgia; height: 26px; width: 90px; margin-left: 0px; color: black; letter-spacing: 1px; text-align: left; padding-left: 5px; }
	.regi_cart_price_save_dsp { background: white; border: 1px solid black; font: bold 1em/1.25em Georgia; height: 26px; width: 90px; margin-left: 0px; color: black; letter-spacing: 1px; text-align: left; padding-left: 5px; }
	.regi_cart_price_con_cur_edit_dsp { background: white; border: 1px solid white; font: bold 1em/1.25em Georgia; height: 26px; width: 26px; margin-left: 0px; color: #595959; letter-spacing: 1px; text-align: center; }
	.regi_cart_price_con_cur_save_dsp { background: white; border: 1px solid black; font: bold 1em/1.25em Georgia; height: 26px; width: 26px; margin-left: 0px; color: black; letter-spacing: 1px; text-align: center; }
	.regi_my_cart_for_guest_ht_dsp { font: bold 1.05em/1.25em Georgia; color: black; display: block; letter-spacing: 2px; min-width: 200px; margin: 0 auto; text-align: left; text-transform: uppercase; }
	
	</style>
		
	<script type="text/javascript">
    window.location.hash=""; window.location.hash="";
    window.onhashchange=function(){window.location.hash="";};    
    window.onload=function(){ window.history.forward(1); };    
    </script>
    
	<script type="text/javascript">
 	 	
/* Concept Boards Contributed Coding */
 
	function cbContributedEditButtonDisplay(count) {
		$("#cbContributedSaveDivDspId"+count).show();
		$("#cbContributedEditDivDspId"+count).hide(); 
		return false;
	}

	function cbContributedSaveButtonDisplay(count, cbContributedPaymentSavingId, cbContributedNeedPrice) {
		var regNewContributedPriceVal = $("#regCBContributedPrice"+count).val();
		
		var regNewContributedPriceValue = 0;
		if(regNewContributedPriceVal !== "") {
			regNewContributedPriceValue = parseFloat(regNewContributedPriceVal);
  		}
		
		var cbContributedNeedPriceValue = parseFloat(cbContributedNeedPrice);
		if(regNewContributedPriceValue > 0) {
			if(regNewContributedPriceValue > cbContributedNeedPriceValue) {
				alert("Please make sure the amount you wish to gift is equivalent or less than the remaining balance of funds( " + cbContributedNeedPriceValue +") requested.");
	 			result=false;
	 		} else {
				var totalContributedInfoValue = cbContributedPaymentSavingId + "__" + regNewContributedPriceVal;
				newAjaxCallForCBContributedInfoUpdate(totalContributedInfoValue);
	 		}			
		} else {
			alert("Please enter valid amount");
			return false;			
		}						
	}

	function newAjaxCallForCBContributedInfoUpdate(totalContributedInfoValue) { 
    	$.ajax({
			type : 'POST',
			url : "jSonAddCartCBContributedValueUpdate?cbContributedInfoValue="+totalContributedInfoValue,
			dataType : 'json',
			async : true,
			cache: false,
			success : function(result) {
				var jsonStrObj=JSON.stringify(result);				
				var data=JSON.parse(jsonStrObj);
				$("#cbContributedDivId").load(location.href + " #cbContributedDivId");				
				$("#totalAmountDisplayDivId").load(location.href + " #totalAmountDisplayDivId");
			}    	
    	}); 
  	}

/* Concept Boards Individual Coding */
	 
  	function cbIndividualEditButtonDisplay(count) {
  		$("#cbIndividualSaveDivDspId"+count).show();
  		$("#cbIndividualEditDivDspId"+count).hide(); 
  		return false;
  	}

  	function cbIndividualSaveButtonDisplay(count, cbIndividualPaymentSavingId, cbIndividualNeedQuantity) {
  		var regNewIndividualPriceVal = $("#regCBIndividualQuantityId"+count).val();  	
  		var regNewIndividualPriceValue = 0;
  		if(regNewIndividualPriceVal !== "") {
  			regNewIndividualPriceValue = parseInt(regNewIndividualPriceVal);
  		}
  		var cbIndividualNeedQuantityValue = parseFloat(cbIndividualNeedQuantity);
  		
  		if(regNewIndividualPriceValue > 0) {
  			if(regNewIndividualPriceValue > cbIndividualNeedQuantityValue) {
	 			alert("Please make sure the quantity that you wish to gift is equivalent to or less than the quantity( " + cbIndividualNeedQuantityValue +") requested.");
	 			result=false;
	 		} else {
	  			var totalIndividualInfoValue = cbIndividualPaymentSavingId + "__" + regNewIndividualPriceVal;
	  	  		newAjaxCallForCBIndividualInfoUpdate(totalIndividualInfoValue);
	 		}
  		} else {
  			alert("Please enter valid quantity");
  	  		return false;  		
  		}
  		 	  	
  	}

  	function newAjaxCallForCBIndividualInfoUpdate(totalIndividualInfoValue) { 
	    	$.ajax({
  	  	type : 'POST',
  	  	url : "jSonAddCartCBIndividualValueUpdate?cbIndividualInfoValue="+totalIndividualInfoValue,
  	  	dataType : 'json',
  	  	async : true,
  	  	cache: false,
  	  	success : function(result) {
  	  		var jsonStrObj=JSON.stringify(result);  	  	
  	  		var data=JSON.parse(jsonStrObj);
  	  		$("#cbIndividualDivId").load(location.href + " #cbIndividualDivId");  	  	
  	  		$("#totalAmountDisplayDivId").load(location.href + " #totalAmountDisplayDivId");
  	  		$("#regCartCountDesktopId").load(location.href + " #regCartCountDesktopId");
			$("#regCartCountMobileId").load(location.href + " #regCartCountMobileId");
  	  	}    	
	    	}); 
	}
  	

	function selectedCBContributedInfoDelete(cbContributedPaymentSavingId) {
		var confMessageVar = confirm("Are you sure you want to delete this?");
		if (confMessageVar == true) { 
			newAjaxCallForCBContributedInfoDelete(cbContributedPaymentSavingId);
		} else { 
			return false;
		}							
	}

	function newAjaxCallForCBContributedInfoDelete(cbContributedPaymentSavingId) {
		$.ajax({
			type : 'POST',
			url : "jSonCBContributedInfoDelete?regCBContributedPaymentSavingId="+cbContributedPaymentSavingId,
			dataType : 'json',
			async : true,
			cache: false,
			success : function(result) {
				var jsonStrObj=JSON.stringify(result);				
				var data=JSON.parse(jsonStrObj);
				var cartCount = data[0].JSonObj;
				if(cartCount > 0) {
					$("#cbContributedDivId").load(location.href + " #cbContributedDivId");				
					$("#totalAmountDisplayDivId").load(location.href + " #totalAmountDisplayDivId");
					$("#regCartCountDesktopId").load(location.href + " #regCartCountDesktopId");
					$("#regCartCountMobileId").load(location.href + " #regCartCountMobileId");
				} else {
					window.location = 'registryOverview';
				}				
			}    	
    	}); 
  	}

	function selectedCBIndividualInfoDelete(cbIndividualPaymentSavingId) {
		var confMessageVar = confirm("Are you sure you want to delete this?");
		if (confMessageVar == true) { 
			newAjaxCallForCBIndividualInfoDelete(cbIndividualPaymentSavingId);
		} else { 
			return false;
		}								
	}

	function newAjaxCallForCBIndividualInfoDelete(cbIndividualPaymentSavingId) { 
    	$.ajax({
			type : 'POST',
			url : "jSonCBIndividualInfoDelete?regCBIndividualPaymentSavingId="+cbIndividualPaymentSavingId,
			dataType : 'json',
			async : true,
			cache: false,
			success : function(result) {
				var jsonStrObj=JSON.stringify(result);				
				var data=JSON.parse(jsonStrObj);
				var cartCount = data[0].JSonObj;
				if(cartCount > 0) {
					$("#cbIndividualDivId").load(location.href + " #cbIndividualDivId");  	  	
		  	  		$("#totalAmountDisplayDivId").load(location.href + " #totalAmountDisplayDivId");
					$("#regCartCountDesktopId").load(location.href + " #regCartCountDesktopId");
					$("#regCartCountMobileId").load(location.href + " #regCartCountMobileId");
				} else {
					window.location = 'registryOverview';
				}				
			}    	
    	}); 
  	}

	/* Finishing Touches Contributed Coding */ 
	function ftContributedEditButtonDisplay(count) { $("#ftContributedSaveDivDspId"+count).show(); $("#ftContributedEditDivDspId"+count).hide(); return false; }
	function ftContributedSaveButtonDisplay(count, ftContributedPaymentSavingId, ftContributedNeedPrice) { var regNewContributedPriceVal = $("#regFTContributedPrice"+count).val(); var regNewContributedPriceValue = 0;
		if(regNewContributedPriceVal !== "") { regNewContributedPriceValue = parseFloat(regNewContributedPriceVal); }		
		var ftContributedNeedPriceValue = parseFloat(ftContributedNeedPrice);
		if(regNewContributedPriceValue > 0) {
			if(regNewContributedPriceValue > ftContributedNeedPriceValue) { alert("Please make sure the amount you wish to gift is equivalent or less than the remaining balance of funds( " + ftContributedNeedPriceValue +") requested."); result=false;
	 		} else { var totalContributedInfoValue = ftContributedPaymentSavingId + "__" + regNewContributedPriceVal; newAjaxCallForFTContributedInfoUpdate(totalContributedInfoValue); }			
		} else { alert("Please enter valid amount"); return false; }						
	}
	function newAjaxCallForFTContributedInfoUpdate(totalContributedInfoValue) { 
    	$.ajax({ type : 'POST', url : "jSonAddCartFTContributedValueUpdate?ftContributedInfoValue="+totalContributedInfoValue, dataType : 'json', async : true, cache: false,
			success : function(result) { var jsonStrObj=JSON.stringify(result); var data=JSON.parse(jsonStrObj); $("#ftContributedDivId").load(location.href + " #ftContributedDivId"); $("#totalAmountDisplayDivId").load(location.href + " #totalAmountDisplayDivId");
			} }); }
/* Finishing Touches Individual Coding */	 
  	function ftIndividualEditButtonDisplay(count) { $("#ftIndividualSaveDivDspId"+count).show(); $("#ftIndividualEditDivDspId"+count).hide(); return false; }
  	function ftIndividualSaveButtonDisplay(count, ftIndividualPaymentSavingId, ftIndividualNeedQuantity) { var regNewIndividualPriceVal = $("#regFTIndividualQuantityId"+count).val(); var regNewIndividualPriceValue = 0;
  		if(regNewIndividualPriceVal !== "") { regNewIndividualPriceValue = parseInt(regNewIndividualPriceVal); }
  		var ftIndividualNeedQuantityValue = parseFloat(ftIndividualNeedQuantity);  		
  		if(regNewIndividualPriceValue > 0) {
  			if(regNewIndividualPriceValue > ftIndividualNeedQuantityValue) { alert("Please make sure the quantity that you wish to gift is equivalent to or less than the quantity( " + ftIndividualNeedQuantityValue +") requested."); result=false;
	 		} else { var totalIndividualInfoValue = ftIndividualPaymentSavingId + "__" + regNewIndividualPriceVal; newAjaxCallForFTIndividualInfoUpdate(totalIndividualInfoValue); }
  		} else { alert("Please enter valid quantity"); return false; }  		 	  	
  	}
  	function newAjaxCallForFTIndividualInfoUpdate(totalIndividualInfoValue) { 
	    $.ajax({ type : 'POST', url : "jSonAddCartFTIndividualValueUpdate?ftIndividualInfoValue="+totalIndividualInfoValue, dataType : 'json', async : true, cache: false,
  	  	success : function(result) { var jsonStrObj=JSON.stringify(result); var data=JSON.parse(jsonStrObj); $("#ftIndividualDivId").load(location.href + " #ftIndividualDivId"); $("#totalAmountDisplayDivId").load(location.href + " #totalAmountDisplayDivId"); $("#regCartCountDesktopId").load(location.href + " #regCartCountDesktopId"); $("#regCartCountMobileId").load(location.href + " #regCartCountMobileId"); }    	
    	}); }
	function selectedFTContributedInfoDelete(ftContributedPaymentSavingId) { var confMessageVar = confirm("Are you sure you want to delete this?");
		if (confMessageVar == true) { newAjaxCallForFTContributedInfoDelete(ftContributedPaymentSavingId); } else { return false; } }
	function newAjaxCallForFTContributedInfoDelete(ftContributedPaymentSavingId) {
		$.ajax({ type : 'POST', url : "jSonFTContributedInfoDelete?regFTContributedPaymentSavingId="+ftContributedPaymentSavingId, dataType : 'json', async : true, cache: false,
			success : function(result) { var jsonStrObj=JSON.stringify(result); var data=JSON.parse(jsonStrObj); var cartCount = data[0].JSonObj;
				if(cartCount > 0) { $("#ftContributedDivId").load(location.href + " #ftContributedDivId"); $("#totalAmountDisplayDivId").load(location.href + " #totalAmountDisplayDivId"); $("#regCartCountDesktopId").load(location.href + " #regCartCountDesktopId"); $("#regCartCountMobileId").load(location.href + " #regCartCountMobileId");
				} else { window.location = 'registryOverview'; } } }); }
	function selectedFTIndividualInfoDelete(ftIndividualPaymentSavingId) { var confMessageVar = confirm("Are you sure you want to delete this?");
		if (confMessageVar == true) { newAjaxCallForFTIndividualInfoDelete(ftIndividualPaymentSavingId); } else { return false; } }
	function newAjaxCallForFTIndividualInfoDelete(ftIndividualPaymentSavingId) { 
    	$.ajax({ type : 'POST', url : "jSonFTIndividualInfoDelete?regFTIndividualPaymentSavingId="+ftIndividualPaymentSavingId, dataType : 'json', async : true, cache: false,
			success : function(result) { var jsonStrObj=JSON.stringify(result); var data=JSON.parse(jsonStrObj); var cartCount = data[0].JSonObj;
				if(cartCount > 0) { $("#ftIndividualDivId").load(location.href + " #ftIndividualDivId"); $("#totalAmountDisplayDivId").load(location.href + " #totalAmountDisplayDivId"); $("#regCartCountDesktopId").load(location.href + " #regCartCountDesktopId"); $("#regCartCountMobileId").load(location.href + " #regCartCountMobileId");
				} else { window.location = 'registryOverview'; }				
			} }); }
 	
	function numeralsOnly(evt) {
	evt = (evt) ? evt : event;
	var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
	((evt.which) ? evt.which : 0));
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
	return false;
	}
	return true;
	}

 	function conBorNumeralsOnly(evt,id) {
   	try{
 	        var charCode = (evt.which) ? evt.which : event.keyCode; 	  
 	        if(charCode==46){
 	            var txt=document.getElementById(id).value;
 	            if(!(txt.indexOf(".") > -1)){   	
 	                return true;
 	            }
 	        }
 	        if (charCode > 31 && (charCode < 48 || charCode > 57) )
 	            return false;
 	        return true;
   	}catch(w){
   		alert(w);
   	}
 	} 
 	 	
    </script>
	</head>
	
  	<body>  	
  	<div id="mainframe" class="section-content">
        <div class="container">
        
        
        <div class="row" style="margin-top: -20px;">
        <div class="col-md-12 col-sm-12">
	        
<!-- Cart Heading -->
	        <div class="row">
	        <div class="col-md-12 col-sm-12">
	        	<div class="regi_my_cart_for_guest_ht_dsp">MY CART</div>
	        </div> <!-- /.col-md-12 -->                        
	        </div> <!-- /.row -->
	       
<!-- Cart Sub Heading -->
	 		<div class="row top_adjustment_20" style="padding: 10px;">
	        	<div class="col-md-12 col-sm-12">
					<div align="center" class="red_my_cart_for_guest_suht_dsp">FUND</div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12" style="margin-top: 20px;">
					<div align="center" class="red_my_cart_for_guest_suht_dsp">NAME</div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12" style="margin-top: 20px;">
					<div align="center" class="red_my_cart_for_guest_suht_dsp">CONTRIBUTION</div>
				</div> <!-- /.col-md-12 -->
				    
			</div> <!-- /.row -->	    
	        			
	        <div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
	       
					
<!-- Concept Boards Contributed Code Start -->
		<div id="cbContributedDivId">		
		<% 
			if (null != session.getAttribute("cbContributedPaymentSavingIdListInSn")) {
			@SuppressWarnings("rawtypes")
	       	ArrayList cbContributedPaymentSavingIdList = (ArrayList) session.getAttribute("cbContributedPaymentSavingIdListInSn");
	       	if (null != cbContributedPaymentSavingIdList && cbContributedPaymentSavingIdList.size() > 0) {
		
		   	if (null != session.getAttribute("cbContributedAddCartImageListInSn")) {
		   	@SuppressWarnings("rawtypes")
           	ArrayList cbContributedAddCartImageList = (ArrayList) session.getAttribute("cbContributedAddCartImageListInSn");
           	if (null != cbContributedAddCartImageList && cbContributedAddCartImageList.size() > 0) {

           	if (null != session.getAttribute("cbContributedAddCartNameListInSn")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList cbContributedAddCartNameList = (ArrayList) session.getAttribute("cbContributedAddCartNameListInSn");
           	if (null != cbContributedAddCartNameList && cbContributedAddCartNameList.size() > 0) { 

           	if (null != session.getAttribute("cbContributedAddCartPriceListInSn")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList cbContributedAddCartPriceList = (ArrayList) session.getAttribute("cbContributedAddCartPriceListInSn");
           	if (null != cbContributedAddCartPriceList && cbContributedAddCartPriceList.size() > 0) { 

            if (null != session.getAttribute("cbContributedNeedPriceListInSn")) {
            @SuppressWarnings("rawtypes")
            ArrayList cbContributedNeedPriceList = (ArrayList) session.getAttribute("cbContributedNeedPriceListInSn");
            if (null != cbContributedNeedPriceList && cbContributedNeedPriceList.size() > 0) { 
   
        %>
                
        <% 	int count = 0; for(int i = 0; i < cbContributedPaymentSavingIdList.size(); i++){ count = count + (i + 1);
	        byte[] cbContributedProductImageByte = (byte[]) cbContributedAddCartImageList.get(i);
	    	String cbContributedProductImage = null;
	    	if(null != cbContributedProductImageByte) {
	    		String cbContributedProductImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(cbContributedProductImageByte);
	    		cbContributedProductImage = "data:image/jpg;base64," +cbContributedProductImageB64;
	    	}
	        String conteConAmountSt = (String) cbContributedAddCartPriceList.get(i);
	    	double regConBoardConPriceDb = Double.parseDouble(conteConAmountSt);
			String regConBoardConPrice = String.format("%.2f", regConBoardConPriceDb);
        %>  

        	<div class="row">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=cbContributedProductImage%>" style="margin-top: 0px; width: 100%; height: 100px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>					   	               
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px;" align="center"><div class="shop_cart_rn_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=cbContributedAddCartNameList.get(i)%></div></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 10px 5px;">						
							<div align="center" class="regi_my_cart_info_frame_dsp">
					    	<div id="cbContributedEditDivDspId<%=count%>">
					    	<table> <tr> <td><input value="$" readonly class="regi_cart_doller_edit_dsp"></td> <td><input type="text" name="productCount" value="<%=regConBoardConPrice%>" class="reg_cart_price_edit_dsp" readonly></td> </tr> </table>
					    	<div align="center" class="top_adjustment_5"><input type="submit" onclick="return cbContributedEditButtonDisplay(<%=count%>);" class="shopp_cart_edit_butt_dsp" value="EDIT"></div>
							</div>
							
							<div style="display: none;" id="cbContributedSaveDivDspId<%=count%>">
							<table> <tr> <td><input value="$" readonly class="regi_cart_doller_edit_dsp"></td> <td><input type="text" id="regCBContributedPrice<%=count%>" name="regCBContributedAmount" value="<%=conteConAmountSt%>" class="regi_cart_price_save_dsp" onkeypress="return conBorNumeralsOnly(event,this.id);"></td> </tr> </table>
							<div align="center" class="top_adjustment_5"><input type="submit" onclick="return cbContributedSaveButtonDisplay(<%=count%>, <%=cbContributedPaymentSavingIdList.get(i)%>, <%=cbContributedNeedPriceList.get(i)%>);" class="shopp_cart_edit_butt_dsp" value="SAVE"> </div>
					    	</div>
					    	
					    	<div align="center" class="top_adjustment_5"><input type='submit' class="shopp_cart_edit_butt_dsp" value="DELETE" onclick="return selectedCBContributedInfoDelete(<%=cbContributedPaymentSavingIdList.get(i)%>);"></div>
					    	</div>
					    </div>
							            
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } %>
        
        <% } } } } } } } } } } %>
		</div>
		
<!-- Concept Boards Contributed Code End -->
		
					
<!-- Concept Boards Individual Code Start -->
		<div id="cbIndividualDivId">		
		<% 
			if (null != session.getAttribute("cbIndividualPaymentSavingIdListInSn")) {
			@SuppressWarnings("rawtypes")
	       	ArrayList cbIndividualPaymentSavingIdList = (ArrayList) session.getAttribute("cbIndividualPaymentSavingIdListInSn");
	       	if (null != cbIndividualPaymentSavingIdList && cbIndividualPaymentSavingIdList.size() > 0) {
		
		   	if (null != session.getAttribute("cbIndividualAddCartImageListInSn")) {
		   	@SuppressWarnings("rawtypes")
           	ArrayList cbIndividualAddCartImageList = (ArrayList) session.getAttribute("cbIndividualAddCartImageListInSn");
           	if (null != cbIndividualAddCartImageList && cbIndividualAddCartImageList.size() > 0) {

           	if (null != session.getAttribute("cbIndividualAddCartNameListInSn")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList cbIndividualAddCartNameList = (ArrayList) session.getAttribute("cbIndividualAddCartNameListInSn");
           	if (null != cbIndividualAddCartNameList && cbIndividualAddCartNameList.size() > 0) { 

           	if (null != session.getAttribute("cbIndividualAddCartPriceListInSn")) {
    	   	@SuppressWarnings("rawtypes")
           	ArrayList cbIndividualAddCartPriceList = (ArrayList) session.getAttribute("cbIndividualAddCartPriceListInSn");
           	if (null != cbIndividualAddCartPriceList && cbIndividualAddCartPriceList.size() > 0) { 

            if (null != session.getAttribute("cbIndividualAddCartQuantityListInSn")) {
        	@SuppressWarnings("rawtypes")
            ArrayList cbIndividualAddCartQuantityList = (ArrayList) session.getAttribute("cbIndividualAddCartQuantityListInSn");
            if (null != cbIndividualAddCartQuantityList && cbIndividualAddCartQuantityList.size() > 0) { 

            if (null != session.getAttribute("cbIndividualNeedQuantityListInSn")) {
            @SuppressWarnings("rawtypes")
            ArrayList cbIndividualNeedQuantityList = (ArrayList) session.getAttribute("cbIndividualNeedQuantityListInSn");
            if (null != cbIndividualNeedQuantityList && cbIndividualNeedQuantityList.size() > 0) {
   
        %>
                
        <% 	int count = 0; for(int i = 0; i < cbIndividualPaymentSavingIdList.size(); i++){ count = count + (i + 1);
	        byte[] cbIndividualProductImageByte = (byte[]) cbIndividualAddCartImageList.get(i);
	    	String cbIndividualProductImage = null;
	    	if(null != cbIndividualProductImageByte) {
	    		String cbIndividualProductImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(cbIndividualProductImageByte);
	    		cbIndividualProductImage = "data:image/jpg;base64," +cbIndividualProductImageB64;
	    	}
	        String conteConAmountSt = (String) cbIndividualAddCartPriceList.get(i);
	    	double regConBoardConPriceDb = Double.parseDouble(conteConAmountSt);
			String regConBoardConPrice = String.format("%.2f", regConBoardConPriceDb);
        %>  

        	<div class="row">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=cbIndividualProductImage%>" style="margin-top: 0px; width: 100%; height: 100px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px;" align="center"><div class="shop_cart_rn_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=cbIndividualAddCartNameList.get(i)%></div></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 10px 5px;">
													
						<div align="center" class="regi_my_cart_info_frame_dsp">
					    	<div id="cbIndividualEditDivDspId<%=count%>">
					    	<table> <tr> <td><input value="$" readonly class="regi_cart_doller_edit_dsp"></td> <td>&nbsp;<%=regConBoardConPrice%>/</td> <td><input type="text" name="productCount" value="<%=cbIndividualAddCartQuantityList.get(i)%>" class="regi_cart_price_con_cur_edit_dsp" readonly></td> </tr> </table>
					    	<div align="center" class="top_adjustment_5"><input type="submit" onclick="return cbIndividualEditButtonDisplay(<%=count%>);" class="shopp_cart_edit_butt_dsp" value="EDIT"></div>
							</div>
							
							<div style="display: none;" id="cbIndividualSaveDivDspId<%=count%>">
							<table> <tr> <td><input value="$" readonly class="regi_cart_doller_edit_dsp"></td> <td>&nbsp;<%=regConBoardConPrice%><font style="color: white;">/</font></td> <td><input type="text" id="regCBIndividualQuantityId<%=count%>" name="regiConBoardNewQuantity" value="<%=cbIndividualAddCartQuantityList.get(i)%>" class="regi_cart_price_con_cur_save_dsp" onkeypress="return numeralsOnly(event);"></td> </tr> </table>
							<div align="center" class="top_adjustment_5"><input type="submit" maxLength="2" onclick="return cbIndividualSaveButtonDisplay(<%=count%>, <%=cbIndividualPaymentSavingIdList.get(i)%>, <%=cbIndividualNeedQuantityList.get(i)%>);" class="shopp_cart_edit_butt_dsp" value="SAVE"> </div>
					    	</div>
					    	
					    	<div align="center" class="top_adjustment_5"><input type='submit' class="shopp_cart_edit_butt_dsp" value="DELETE" onclick="return selectedCBIndividualInfoDelete(<%=cbIndividualPaymentSavingIdList.get(i)%>);"></div>
					    </div>
										
					</div>					            
				</div> 
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } %>
        
        <% } } } } } } } } } } } } %>
		</div>
		
<!-- Concept Boards Individual Code End -->
		
	<!-- Finishing Touches Contributed Code Start -->
		<div id="ftContributedDivId">		
		<% 
			if (null != session.getAttribute("ftContributedPaymentSavingIdListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftContributedPaymentSavingIdList = (ArrayList) session.getAttribute("ftContributedPaymentSavingIdListInSn"); if (null != ftContributedPaymentSavingIdList && ftContributedPaymentSavingIdList.size() > 0) {		
		   	if (null != session.getAttribute("ftContributedAddCartImageListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftContributedAddCartImageList = (ArrayList) session.getAttribute("ftContributedAddCartImageListInSn"); if (null != ftContributedAddCartImageList && ftContributedAddCartImageList.size() > 0) {
           	if (null != session.getAttribute("ftContributedAddCartNameListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftContributedAddCartNameList = (ArrayList) session.getAttribute("ftContributedAddCartNameListInSn"); if (null != ftContributedAddCartNameList && ftContributedAddCartNameList.size() > 0) {
           	if (null != session.getAttribute("ftContributedAddCartPriceListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftContributedAddCartPriceList = (ArrayList) session.getAttribute("ftContributedAddCartPriceListInSn"); if (null != ftContributedAddCartPriceList && ftContributedAddCartPriceList.size() > 0) { 
            if (null != session.getAttribute("ftContributedNeedPriceListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftContributedNeedPriceList = (ArrayList) session.getAttribute("ftContributedNeedPriceListInSn"); if (null != ftContributedNeedPriceList && ftContributedNeedPriceList.size() > 0) {
        %>                
        <% 	int count = 0; for(int i = 0; i < ftContributedPaymentSavingIdList.size(); i++){ count = count + (i + 1); byte[] ftContributedProductImageByte = (byte[]) ftContributedAddCartImageList.get(i); String ftContributedProductImage = null;
	    	if(null != ftContributedProductImageByte) {
	    		String ftContributedProductImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(ftContributedProductImageByte); ftContributedProductImage = "data:image/jpg;base64," +ftContributedProductImageB64;
	    	}
	        String conteConAmountSt = (String) ftContributedAddCartPriceList.get(i); double regConBoardConPriceDb = Double.parseDouble(conteConAmountSt); String regConBoardConPrice = String.format("%.2f", regConBoardConPriceDb);
        %>  
		<div class="row"> <div class="col-md-12 col-sm-12"> 
		<div align="center"><img src="<%=ftContributedProductImage%>" style="margin-top: 0px; width: 100%; height: 100px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div> </div>  
		<div class="col-md-12 col-sm-12"> 
		<div style="padding: 30px 5px;" align="center"><div class="shop_cart_rn_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=ftContributedAddCartNameList.get(i)%></div></div> </div>  
		
		<div class="col-md-12 col-sm-12"> <div style="padding: 10px 5px;">
		<div align="center" class="regi_my_cart_info_frame_dsp">
		<div id="ftContributedEditDivDspId<%=count%>">
		<table> <tr> <td><input value="$" readonly class="regi_cart_doller_edit_dsp"></td> <td><input type="text" name="productCount" value="<%=regConBoardConPrice%>" class="reg_cart_price_edit_dsp" readonly></td> </tr> </table>
		<div align="center" class="top_adjustment_5"><input type="submit" onclick="return ftContributedEditButtonDisplay(<%=count%>);" class="shopp_cart_edit_butt_dsp" value="EDIT"></div> </div>
		<div style="display: none;" id="ftContributedSaveDivDspId<%=count%>">
		<table> <tr> <td><input value="$" readonly class="regi_cart_doller_edit_dsp"></td> <td><input type="text" id="regFTContributedPrice<%=count%>" name="regFTContributedAmount" value="<%=conteConAmountSt%>" class="regi_cart_price_save_dsp" onkeypress="return conBorNumeralsOnly(event,this.id);"></td> </tr> </table>
		<div align="center" class="top_adjustment_5"><input type="submit" onclick="return ftContributedSaveButtonDisplay(<%=count%>, <%=ftContributedPaymentSavingIdList.get(i)%>, <%=ftContributedNeedPriceList.get(i)%>);" class="shopp_cart_edit_butt_dsp" value="SAVE"> </div> </div>
		<div align="center" class="top_adjustment_5"><input type='submit' class="shopp_cart_edit_butt_dsp" value="DELETE" onclick="return selectedFTContributedInfoDelete(<%=ftContributedPaymentSavingIdList.get(i)%>);"></div> </div>
		</div> </div> 
		<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
		</div> 
        <% } %>        
        <% } } } } } } } } } } %>
		</div>		
<!-- Finishing Touches Contributed Code End --> 
<!-- Finishing Touches Individual Code Start -->
		<div id="ftIndividualDivId">		
		<% 
			if (null != session.getAttribute("ftIndividualPaymentSavingIdListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftIndividualPaymentSavingIdList = (ArrayList) session.getAttribute("ftIndividualPaymentSavingIdListInSn"); if (null != ftIndividualPaymentSavingIdList && ftIndividualPaymentSavingIdList.size() > 0) {		
		   	if (null != session.getAttribute("ftIndividualAddCartImageListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftIndividualAddCartImageList = (ArrayList) session.getAttribute("ftIndividualAddCartImageListInSn"); if (null != ftIndividualAddCartImageList && ftIndividualAddCartImageList.size() > 0) {
           	if (null != session.getAttribute("ftIndividualAddCartNameListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftIndividualAddCartNameList = (ArrayList) session.getAttribute("ftIndividualAddCartNameListInSn"); if (null != ftIndividualAddCartNameList && ftIndividualAddCartNameList.size() > 0) {
           	if (null != session.getAttribute("ftIndividualAddCartPriceListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftIndividualAddCartPriceList = (ArrayList) session.getAttribute("ftIndividualAddCartPriceListInSn"); if (null != ftIndividualAddCartPriceList && ftIndividualAddCartPriceList.size() > 0) {
            if (null != session.getAttribute("ftIndividualAddCartQuantityListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftIndividualAddCartQuantityList = (ArrayList) session.getAttribute("ftIndividualAddCartQuantityListInSn"); if (null != ftIndividualAddCartQuantityList && ftIndividualAddCartQuantityList.size() > 0) {
            if (null != session.getAttribute("ftIndividualNeedQuantityListInSn")) { @SuppressWarnings("rawtypes") ArrayList ftIndividualNeedQuantityList = (ArrayList) session.getAttribute("ftIndividualNeedQuantityListInSn"); if (null != ftIndividualNeedQuantityList && ftIndividualNeedQuantityList.size() > 0) {   
        %>
        <% 	int count = 0; for(int i = 0; i < ftIndividualPaymentSavingIdList.size(); i++){ count = count + (i + 1);
	        byte[] ftIndividualProductImageByte = (byte[]) ftIndividualAddCartImageList.get(i); String ftIndividualProductImage = null;
	    	if(null != ftIndividualProductImageByte) {
	    		String ftIndividualProductImageB64 = javax.xml.bind.DatatypeConverter.printBase64Binary(ftIndividualProductImageByte); ftIndividualProductImage = "data:image/jpg;base64," +ftIndividualProductImageB64;
	    	}
	        String conteConAmountSt = (String) ftIndividualAddCartPriceList.get(i); double regConBoardConPriceDb = Double.parseDouble(conteConAmountSt); String regConBoardConPrice = String.format("%.2f", regConBoardConPriceDb);
        %>  
		<div class="row"> <div class="col-md-12 col-sm-12">
		<div align="center"><img src="<%=ftIndividualProductImage%>" style="margin-top: 0px; width: 100%; height: 100px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div> </div> 
		<div class="col-md-12 col-sm-12">
		<div style="padding: 30px 5px;" align="center"><div class="shop_cart_rn_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=ftIndividualAddCartNameList.get(i)%></div></div> </div>  
		<div class="col-md-12 col-sm-12"> <div style="padding: 10px 5px;">
		<div align="center" class="regi_my_cart_info_frame_dsp">
		<div id="ftIndividualEditDivDspId<%=count%>">
		<table> <tr> <td><input value="$" readonly class="regi_cart_doller_edit_dsp"></td> <td>&nbsp;<%=regConBoardConPrice%>/</td> <td><input type="text" name="productCount" value="<%=ftIndividualAddCartQuantityList.get(i)%>" class="regi_cart_price_con_cur_edit_dsp" readonly></td> </tr> </table>
		<div align="center" class="top_adjustment_5"><input type="submit" onclick="return ftIndividualEditButtonDisplay(<%=count%>);" class="shopp_cart_edit_butt_dsp" value="EDIT"></div> </div>
		<div style="display: none;" id="ftIndividualSaveDivDspId<%=count%>">
		<table> <tr> <td><input value="$" readonly class="regi_cart_doller_edit_dsp"></td> <td>&nbsp;<%=regConBoardConPrice%><font style="color: white;">/</font></td> <td><input type="text" id="regFTIndividualQuantityId<%=count%>" name="regiConBoardNewQuantity" value="<%=ftIndividualAddCartQuantityList.get(i)%>" class="regi_cart_price_con_cur_save_dsp" onkeypress="return numeralsOnly(event);"></td> </tr> </table>
		<div align="center" class="top_adjustment_5"><input type="submit" maxLength="2" onclick="return ftIndividualSaveButtonDisplay(<%=count%>, <%=ftIndividualPaymentSavingIdList.get(i)%>, <%=ftIndividualNeedQuantityList.get(i)%>);" class="shopp_cart_edit_butt_dsp" value="SAVE"> </div> </div>
		<div align="center" class="top_adjustment_5"><input type='submit' class="shopp_cart_edit_butt_dsp" value="DELETE" onclick="return selectedFTIndividualInfoDelete(<%=ftIndividualPaymentSavingIdList.get(i)%>);"></div> </div> </div> </div>  
		<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
		</div> 
        <% } %>
        <% } } } } } } } } } } } } %>
		</div>		
<!-- Finishing Touches Individual Code End -->
	
<!-- Cart Total Value Code -->

	 		<div class="row top_adjustment_30">
	        	<div class="col-md-7 col-sm-7">					            
				</div> <!-- /.col-md-7 -->
				
				<div class="col-md-5 col-sm-5">
					<div class="service-item">                        
						<div align="right" class="service-description" style="background: #e7e6e6; padding: 20px; border: 1px solid #dddbdb;">
					    	<table style="position: relative; left: -30px;"><tr><td><font class="red_my_cart_gst_val_dsp">&nbsp;SUBTOTAL:&nbsp;</font></td> <td><font class="regi_my_cart_info_frame_dsp"><font id="totalAmountDisplayDivId">$&nbsp;${shoppingCartTotalAmountInSn}</font></font></td></tr></table>					    	
					   	</div> <!-- /.service-description -->
					</div> <!-- /.service-item -->               
				</div> <!-- /.col-md-5 -->									        
			</div> <!-- /.row -->
			      
<!-- Cart Submit Button Code -->
			
	 		<div class="row">
	        	<div align="center" class="col-md-12 col-sm-12">
	        	<img src="resources/images/registry/authorize_net_img.png" class="img-responsive" width="120" height="100">					            
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12 top_adjustment_30">
					<div class="service-item">                        
						<div align="center" class="service-description">
					    	<table style="width: 260px;">
					    		<tr align="center"><td><a href="registryOverview"><font class="shop_cart_rn_editl_text_dsp">KEEP SHOPPING</font></a></td></tr>
					    		<tr align="center" style="height: 20px;"><td></td></tr>
					    		<tr align="center"><td><form action="registrantFundsCheckOutContact" method="get"><h4><button class="reg_box_fund__gs_sub_Buttn" id="shippingId">CHECKOUT NOW</button></h4></form></td></tr>
					    	</table>					    	
					   	</div> <!-- /.service-description -->
					</div> <!-- /.service-item -->               
				</div> <!-- /.col-md-12 -->									        
			</div> <!-- /.row -->

       	</div>
       	
		</div>
			
		</div> </div>
		<script type="text/javascript" src="resources/js/json-minified.js"></script>		     
		</body>
</html>