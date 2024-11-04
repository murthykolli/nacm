<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<html>    
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 
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
					<div align="center" class="heading_sub_text_dsp"><font class="heading_sub_first_text_dsp">T</font>HE REGISTRY RECIPIENT(S) WILL RECEIVE AN EMAIL LETTING THEM KNOW ABOUT YOUR GIFT. <font class="heading_sub_first_text_dsp">Y</font>OU WILL ALSO RECEIVE AN EMAIL SHORTLY WITH A RECEIPT FOR THIS ORDER.</div>    
				</div> <!-- /.col-md-12 -->
			</div>
			
		</div>
		</div>
        
         
        <div class="row">        
        <div class="col-md-12 col-sm-12">
	    
	    	<div class="row top_adjustment_25">
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
			
		<div style="margin-top: 0px;">	
				
<!-- Room Funds Display Code Start -->
		
		<% 	String cartGuestUserRegInfo = (String)session.getAttribute("guestRoomFundsPaymentInfoInSn");		
				if (null != cartGuestUserRegInfo) {
					String[] noOfCartRegInfoList = cartGuestUserRegInfo.split("__");
					for (int i = 0; i < noOfCartRegInfoList.length; i++) {
						String singleRoomDataDsp = noOfCartRegInfoList[i];
						String[] guestCartInfoList = noOfCartRegInfoList[i].split(",_,");
						String spaceImage = guestCartInfoList[0];
						String spaceName = guestCartInfoList[1];
						String spacePrice = guestCartInfoList[2];
						String spaceColName = guestCartInfoList[3];
						String spaceColCount = guestCartInfoList[4];
						double gustRoomFundAmountDb = Double.parseDouble(spacePrice);
						String guestRoomFundAmount = String.format("%,.2f", gustRoomFundAmountDb);
						String updateSelRoomVal = spaceImage + ",_," + spaceName + "_,_" + spaceColName + ",_," + spaceColCount;
						totalProductPrice = totalProductPrice + gustRoomFundAmountDb;						
			%> 

        	<div class="row ">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="resources/images/registry/roomandfundimages/<%=spaceImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=spaceName%></div></div>					    	
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=guestRoomFundAmount%></div></div>			
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } } %>
			
<!-- Cash Funds Display Code Start -->
		
		<% 	String guestCashFundContValue = (String)session.getAttribute("guestCashFundsPaymentInfoInSn");	 		
				if (null != guestCashFundContValue) {
					String[] guestCashFundContValueList = guestCashFundContValue.split("__");
					for (int i = 0; i < guestCashFundContValueList.length; i++) {
						String guestCashFundContValueDsp = guestCashFundContValueList[i];
						String[] guestCashFundContValueComb = guestCashFundContValueList[i].split("_,_");
						String guestCashFundId = guestCashFundContValueComb[0];
						String guestCashFundImage = guestCashFundContValueComb[1];
						String guestCashFundName = guestCashFundContValueComb[2];
						String gustCashFundAmount = guestCashFundContValueComb[3];
						double gustCashFundAmountDb = Double.parseDouble(gustCashFundAmount);
						
						double regCashFundWithHandlingPrice = gustCashFundAmountDb + (gustCashFundAmountDb/100)*2.5;
						String guestCashFundAmount = String.format("%,.2f", regCashFundWithHandlingPrice);
						totalProductPrice = totalProductPrice + regCashFundWithHandlingPrice;
			%> 

        	<div class="row ">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=guestCashFundImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestCashFundName%></div></div>					    	
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=guestCashFundAmount%></div></div>			
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } } %>
			
<!-- Custom Funds Display Code Start -->
		
		<% 	String guestCustomFundContValue = (String)session.getAttribute("guestCustomFundsPaymentInfoInSn");	 		
				if (null != guestCustomFundContValue) {
					String[] guestCustomFundContValueList = guestCustomFundContValue.split("__");
					int count = 0;
					for (int i = 0; i < guestCustomFundContValueList.length; i++) {
						String guestCustomFundContValueDsp = guestCustomFundContValueList[i];
						String[] guestCustomFundContValueComb = guestCustomFundContValueList[i].split("_,_");
						String guestCustomFundId = guestCustomFundContValueComb[0];
						String guestCustomFundImage = guestCustomFundContValueComb[1];
						String guestCustomFundName = guestCustomFundContValueComb[2];
						String gustCustomFundAmount = guestCustomFundContValueComb[3];
						double gustCustomFundAmountDb = Double.parseDouble(gustCustomFundAmount);
						
						double regCustomFundWithHandlingPrice = gustCustomFundAmountDb + (gustCustomFundAmountDb/100)*2.5;
						String guestCustomFundAmount = String.format("%,.2f", regCustomFundWithHandlingPrice);
						totalProductPrice = totalProductPrice + regCustomFundWithHandlingPrice;
			%>

        	<div class="row ">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=guestCustomFundImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestCustomFundName%></div></div>					    	
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=guestCustomFundAmount%></div></div>			
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } } %>
			
<!-- Concept Boards Contributed Code Start -->
		
		<% 	String guestCBContributedCartValue = (String)session.getAttribute("guestCBContributedPaymentInfoInSn");	 		
				if (null != guestCBContributedCartValue) {
					String[] guestCBContributedCartValueList = guestCBContributedCartValue.split("__");
					for (int i = 0; i < guestCBContributedCartValueList.length; i++) {
						String guestCustomFundContValueDsp = guestCBContributedCartValueList[i];
						String[] guestCBContributedCartValueComb = guestCBContributedCartValueList[i].split("_,_");
						String guestCBContributedProductId = guestCBContributedCartValueComb[0];
						String guestCBContributedProductAmount = guestCBContributedCartValueComb[1];
						String guestCBContributedProductName = guestCBContributedCartValueComb[2];
						String guestCBContributedProductImage = guestCBContributedCartValueComb[3];
						
						double guestCBContributedProductAmountDb = Double.parseDouble(guestCBContributedProductAmount);
						String guestCBContributedAmount = String.format("%,.2f", guestCBContributedProductAmountDb);
						totalProductPrice = totalProductPrice + guestCBContributedProductAmountDb;
						
			%> 

        	<div class="row ">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=guestCBContributedProductImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestCBContributedProductName%></div></div>					    	
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=guestCBContributedAmount%></div></div>			
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } } %>
		
					
<!-- Concept Boards Individual Code Start -->
		
		<% 	String guestCBIndividualCartValue = (String)session.getAttribute("guestCBIndividualPaymentInfoInSn");	 		
				if (null != guestCBIndividualCartValue) {
					String[] guestCBIndividualCartValueList = guestCBIndividualCartValue.split("__");
					for (int i = 0; i < guestCBIndividualCartValueList.length; i++) {
						String guestCustomFundContValueDsp = guestCBIndividualCartValueList[i];
						String[] guestCBIndividualCartValueComb = guestCBIndividualCartValueList[i].split("_,_");
						String guestCBIndividualProductId = guestCBIndividualCartValueComb[0];
						String guestCBIndividualProductQuantity = guestCBIndividualCartValueComb[1];
						String guestCBIndividualProductAmount = guestCBIndividualCartValueComb[2];
						String guestCBIndividualProductName = guestCBIndividualCartValueComb[3];
						String guestCBIndividualProductImage = guestCBIndividualCartValueComb[4];			
						
						double guestCBIndividualProductAmountDb = Double.parseDouble(guestCBIndividualProductAmount);						
				    	int regContQuantityInt = Integer.parseInt(guestCBIndividualProductQuantity);
				    	
				    	double combAmountContrDb = guestCBIndividualProductAmountDb * regContQuantityInt;
				    	double regTotalPriceWithTaxValue = combAmountContrDb + (combAmountContrDb/100)*20;
				    	totalProductPrice = totalProductPrice + regTotalPriceWithTaxValue;
						String guestCBIndividualAmount = String.format("%,.2f", regTotalPriceWithTaxValue);
			%>  

        	<div class="row ">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=guestCBIndividualProductImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestCBIndividualProductName%></div></div>					    	
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=guestCBIndividualAmount%></div></div>		
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        
        <% } } %>
		
<!-- Concept Boards Individual Code End -->
				
<!-- Finishing Touches Contributed Code Start -->
		
		<% 	String guestFTContributedCartValue = (String)session.getAttribute("guestFTContributedPaymentInfoInSn");	 		
				if (null != guestFTContributedCartValue) {
					String[] guestFTContributedCartValueList = guestFTContributedCartValue.split("__");
					for (int i = 0; i < guestFTContributedCartValueList.length; i++) {
						String guestCustomFundContValueDsp = guestFTContributedCartValueList[i];
						String[] guestFTContributedCartValueComb = guestFTContributedCartValueList[i].split("_,_");
						String guestFTContributedProductId = guestFTContributedCartValueComb[0];
						String guestFTContributedProductAmount = guestFTContributedCartValueComb[1];
						String guestFTContributedProductName = guestFTContributedCartValueComb[2];
						String guestFTContributedProductImage = guestFTContributedCartValueComb[3];
						
						double guestFTContributedProductAmountDb = Double.parseDouble(guestFTContributedProductAmount);
						String guestFTContributedAmount = String.format("%,.2f", guestFTContributedProductAmountDb);
						totalProductPrice = totalProductPrice + guestFTContributedProductAmountDb;
						
			%> 

        	<div class="row ">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=guestFTContributedProductImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestFTContributedProductName%></div></div>					    	
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=guestFTContributedAmount%></div></div>			
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        <% } } %>
							
<!-- Finishing Touches Individual Code Start -->
		
		<% 	String guestFTIndividualCartValue = (String)session.getAttribute("guestFTIndividualPaymentInfoInSn");	 		
				if (null != guestFTIndividualCartValue) {
					String[] guestFTIndividualCartValueList = guestFTIndividualCartValue.split("__");
					for (int i = 0; i < guestFTIndividualCartValueList.length; i++) {
						String guestCustomFundContValueDsp = guestFTIndividualCartValueList[i];
						String[] guestFTIndividualCartValueComb = guestFTIndividualCartValueList[i].split("_,_");
						String guestFTIndividualProductId = guestFTIndividualCartValueComb[0];
						String guestFTIndividualProductQuantity = guestFTIndividualCartValueComb[1];
						String guestFTIndividualProductAmount = guestFTIndividualCartValueComb[2];
						String guestFTIndividualProductName = guestFTIndividualCartValueComb[3];
						String guestFTIndividualProductImage = guestFTIndividualCartValueComb[4];			
						
						double guestFTIndividualProductAmountDb = Double.parseDouble(guestFTIndividualProductAmount);						
				    	int regContQuantityInt = Integer.parseInt(guestFTIndividualProductQuantity);
				    	
				    	double combAmountContrDb = guestFTIndividualProductAmountDb * regContQuantityInt;
				    	double regTotalPriceWithTaxValue = combAmountContrDb + (combAmountContrDb/100)*20;
				    	totalProductPrice = totalProductPrice + regTotalPriceWithTaxValue;
						String guestFTIndividualAmount = String.format("%,.2f", regTotalPriceWithTaxValue);
			%>  

        	<div class="row ">
        		<div class="col-md-12 col-sm-12">
					<div align="center"><img src="<%=guestFTIndividualProductImage%>" style="margin-top: 0px; width: 100%; height: 80px; object-fit: scale-down; position: relative; object-position: 50% 50%;"></div>
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_name_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestFTIndividualProductName%></div></div>					    	
				</div> <!-- /.col-md-12 -->
				
				<div class="col-md-12 col-sm-12">
					<div style="padding: 30px 5px; vertical-align: middle;" align="center"><div class="product_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=guestFTIndividualAmount%></div></div>		
				</div> <!-- /.col-md-12 -->
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
			</div> <!-- /.row -->
        
        <% } } %>
		
		</div>
			
		<% String totalPaybleAmount = String.format("%,.2f", totalProductPrice); %>
<!-- Finishing Touches Individual Code End -->
	
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
            	<form action="home">
            		<h4>
					<button class="reg_home_Butn_dspl" id="createRegistryButtonId">HOME</button>
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