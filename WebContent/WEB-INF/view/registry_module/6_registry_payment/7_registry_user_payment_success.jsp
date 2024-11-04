<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<html>    
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    
	<script type="text/javascript">
	history.pushState(null, null, location.href);
    history.back();
    history.forward();
    window.onpopstate = function () { history.go(1); };
	</script>
    
    <style>
    .succ_total_amount_bold_text_dsp { font: bold 1.5em/1.5em Georgia; letter-spacing: 1px; color: black; text-align: center; text-transform: uppercase; vertical-align: middle; }
    .succ_total_amount_nor_text_dsp { font: 1.1em/1.5em Georgia; letter-spacing: 1px; color: black; text-align: right; text-transform: uppercase; vertical-align: middle; }
    .product_name_text_dsp { font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: center; text-transform: uppercase; vertical-align: middle; }
    .product_price_text_dsp { font: bold 1.25em/1.5em Georgia; letter-spacing: 1px; color: black; text-align: center; text-transform: uppercase; vertical-align: middle; }
    .succ_payment_div_bar { border-bottom: 1px solid #1c1c1c; padding: 25px 5px; }
    .product_sub_name_text_dsp { font: 1.06em/1.25em Georgia; letter-spacing: 2px; color: black; text-transform: uppercase; vertical-align: middle; padding: 10px; padding-bottom: 10px; }
    
    .order_number_text_dsp { font: bold 1.0em/1.25em Georgia; letter-spacing: 1px; color: black; text-transform: uppercase; vertical-align: middle; padding: 10px; padding-bottom: 5px; }
    .order_number_first_text_dsp { font: bold 1.25em/1.25em Georgia; letter-spacing: 2px; color: black; }
    
    .heading_sub_text_dsp { font: 1.0em/1.25em Georgia; letter-spacing: 1px; color: black; text-transform: uppercase; vertical-align: middle; padding: 10px; padding-bottom: 10px; }
    .heading_sub_first_text_dsp { font: 1.3em/1.25em Georgia; letter-spacing: 1px; color: black; }
    
    .main_heading_text_dsp { font: bold 1.05em/1.25em Georgia; letter-spacing: 2px; color: black; text-transform: uppercase; vertical-align: middle; padding: 10px; padding-bottom: 10px; }
    .main_heading_first_text_dsp { font: bold 1.2em/1.25em Georgia; letter-spacing: 2px; color: black; }
    
    .sub_total_text_dsp { font: bold 1.1em/1.5em Georgia; letter-spacing: 2px; color: black; text-transform: uppercase; vertical-align: middle; }
    
    .reg_home_Butn_dspl { display: block; margin: 0px auto; vertical-align: middle; background-color: #ff3b3b; color: white; display: inline-block; padding: 5px 30px; outline: none; border: none; font: 500 1.3em/1.5em Georgia; letter-spacing: 2px; margin-left: 0px; }
	.reg_home_Butn_dspl:hover { background-color: #2c2c2c; }
    </style>
    
    	
	<script type="text/javascript">
 	$(document).ready(function() {
 		    
	    var paymentOrderNumber1 = '<c:out value="${paymentOrderNumber}"/>';
	    if(paymentOrderNumber1 !== "") {
	    	$("#orderNumberDisplayId").show();
	    } else {
	    	$("#orderNumberDisplayId").hide();
	    }
	});
 	
    </script>	
	</head>
	
		<body>		
		<div id="mainframe" class="section-content">
        <div class="container">
        
        
        <div class="row">
        <div class="col-md-12 col-sm-12">	    
	    
	    	<div class="row" style="margin-top: -25px;">
				<div class="col-md-12 col-sm-12">
					<div align="center" class="main_heading_text_dsp"><font class="main_heading_first_text_dsp">T</font>HANK YOU FOR YOUR ORDER</div>    
				</div> <!-- /.col-md-12 -->
			</div>
			
	    	<div class="row" style="margin-top: 15px;">
				<div class="col-md-12 col-sm-12">
					<div align="center" class="heading_sub_text_dsp"><font class="heading_sub_first_text_dsp">Y</font>OU WILL RECEIVE AN EMAIL SHORTLY WITH A RECEIPT FOR THIS ORDER.</div>    
				</div> <!-- /.col-md-12 -->
			</div>
			
		</div>
		</div>
        
        
        <div class="row">        
        <div class="col-md-12 col-sm-12">
	    
	    	<div class="row top_adjustment_25" style="display: none;" id="orderNumberDisplayId">
				<div class="col-md-12 col-sm-12">
					<div align="center" class="order_number_text_dsp"><font class="order_number_first_text_dsp">O</font>RDER <font class="order_number_first_text_dsp">N</font>UMBER:</div>
					<div align="center" class="order_number_text_dsp" style="margin-top: 10px;">${paymentOrderNumber}</div>    
				</div> <!-- /.col-md-12 -->
			</div>
			
			<div class="row top_adjustment_30">
				<div class="col-md-12 col-sm-12">
					<div align="left" class="product_sub_name_text_dsp" style="margin-left: 7px;">ORDER DETAILS</div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 5px; margin-bottom: 15px; border-bottom: 1px solid #1c1c1c;"></div></div>
				
			</div>
			
			<% double totalProductPrice = 0; %>
					
<!-- Concept Boards Contributed Code Start -->
		
		<div style="margin-top: 0px;">	
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
	    	totalProductPrice = totalProductPrice + regConBoardConPriceDb;
			String regConBoardConPrice = String.format("%,.2f", regConBoardConPriceDb);
        %>  

        	<div class="row ">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=cbContributedProductImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=cbContributedAddCartNameList.get(i)%></div></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=regConBoardConPrice%></div></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } %>
        
        <% } } } } } } } } %>
		
<!-- Concept Boards Contributed Code End -->
		
					
<!-- Concept Boards Individual Code Start -->
		
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
	    	int regContQuantityInt = (Integer) cbIndividualAddCartQuantityList.get(i);
	    	double combAmountContrDb = regConBoardConPriceDb * regContQuantityInt;
	    	double regTotalPriceWithTaxValue = combAmountContrDb + (combAmountContrDb/100)*20;
	    	totalProductPrice = totalProductPrice + regTotalPriceWithTaxValue;
			String regConBoardConPrice = String.format("%,.2f", regTotalPriceWithTaxValue);
        %>  

        	<div class="row succ_payment_div_bar">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=cbIndividualProductImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=cbIndividualAddCartNameList.get(i)%></div></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=regConBoardConPrice%></div></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } %>
        
        <% } } } } } } } } } } %>
		
		</div>
			
		<% String totalPaybleAmount = String.format("%,.2f", totalProductPrice); %>
<!-- Concept Boards Individual Code End -->
		
		
<!-- Cart Total Value Code -->

	 		<div class="row"style="margin-top: 35px;">	        	
				<div class="col-md-12 col-sm-12">
					<div style="padding: 10px 5px; vertical-align: middle;" align="center"><div class="sub_total_text_dsp" style="position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%);">SUBTOTAL:</div></div>    
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 10px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=totalPaybleAmount%></div></div>    
				</div> <!-- /.col-md-12 -->									        
			</div> <!-- /.row -->
			
			
			   
        <div class="row top_adjustment_40">
       
        <div class="col-md-12 col-sm-12">
        	<div align="center">
            	<form action="registryOverview">
            		<h4>
					<button class="reg_home_Butn_dspl" id="createRegistryButtonId">Back to Registry</button>
					</h4>
				</form>         	   
            </div>               
        </div> <!-- /.col-md-12 -->
        
        </div> <!-- /.row -->
		
		</div>
		
		</div>
				
        				          
        </div> <!-- /.container -->
        </div> <!-- /.Main Frame -->
        
		</body>
</html>