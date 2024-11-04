
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<script type="text/javascript">
 	$(document).ready(function() {
 		var regOrderReff1 = "<c:out value="${regiMAOrderReff}"/>"; 		
	    if(regOrderReff1 == "Have Order"){
	    	$("#visibleMyOrderId").show();
	    	$("#notVisibleMyOrderId").hide();
	    } else {
	    	$("#notVisibleMyOrderId").show();
	    	$("#visibleMyOrderId").hide();	    	
	    }	    
		
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
							<div class="top_adjustment_5"><a href="regiGiftsReceivedDsp" class="regi_prof_left_link_text_dspl">GIFTS RECEIVED</a></div>
							<div class="top_adjustment_5"><a href="#" class="regi_prof_left_link_text_hover_dspl">ROOM FUNDS</a></div>
							<div class="top_adjustment_5"><a href="regiCashFundsDsp" class="regi_prof_left_link_text_dspl">CASH FUNDS</a></div>
							<div class="top_adjustment_5"><a href="regiStoreCreditDsp" class="regi_prof_left_link_text_dspl">STORE CREDIT</a></div>
							
	        			</div>
	        		</div>
	        	</div>
	        </div>
	   	</div>
	        
<!-- Left Code End -->
    
	  	<div class="row">
	        <div class="col-md-12 col-sm-12" id="notVisibleMyOrderId" style="display: none;">	        	        	
<!-- No register heading text display -->
				<div class="row">
					<div class="col-md-12 col-sm-12"><div class="service-item"><div class="service-description reg_pro_left_adj_disp">
						<div align="left" style="margin-top: -20px; margin-left: 0px;">        			
							<div class="registry_prof_title"><h2>Room Funds</h2></div>
				        </div>
				  	</div></div></div>
				</div>
<!-- No register text display -->
				<div class="row">
					<div class="col-md-12 col-sm-12"><div class="service-item"><div class="service-description reg_pro_left_adj_disp">
						<div align="left" style="margin-top: -20px; margin-left: 0px;">        			
							<div class="registry_prof_title"><p class="regi_prof_left_sub_nor_text">You have not received any contributions towards any room funds yet.</p></div>
				        </div>
				  	</div></div></div>
				</div>					
		
			</div>
	        			
<!-- Visible My Order display -->
			<div class="col-md-12 col-sm-12" id="visibleMyOrderId" style="display: none; border-left: 1px solid red; margin-left: -1px; padding-bottom: 40px;">
				<div class="row">
					<div class="col-md-12 col-sm-12"><div class="service-item"><div class="service-description reg_pro_left_adj_disp">
						<div align="left" style="margin-top: -20px; margin-left: 0px;">        			
							<div class="registry_prof_title"><h2>Room Funds</h2></div>
				        </div>
				  	</div></div></div>
				</div>

				<div class="row" style="padding: 10px;">
					<div class="col-md-12 col-sm-12" style="margin-top: -20px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">GIFT</div>					   	              
					</div>
					
					<div class="col-md-12 col-sm-12" style="margin-top: 15px;">
						<div align="center" class="my_acc_room_cash_fund_hd_dsp">NAME</div>					               
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
			
			   	       
<!-- Guest Coding Display -->
				 		
	 		<% 	int guestTotalPrice = 0;
	 			String guestRoomFundsPaymentInfo = (String)session.getAttribute("guestRoomFundsPaymentInfoSn");
				if (null != guestRoomFundsPaymentInfo) {					
					String[] guestRoomFundsPaymentSt = guestRoomFundsPaymentInfo.split("_&&_");
					for (int i = 0; i < guestRoomFundsPaymentSt.length; i++) {						
						String[] guestRoomFundsPaymentStList = guestRoomFundsPaymentSt[i].split("_&_");
						String guestFromName = guestRoomFundsPaymentStList[1];
						String guestStDate = guestRoomFundsPaymentStList[2];
						String[] guestRoomPayInfoList = guestRoomFundsPaymentStList[0].split("__");
						for (int l = 0; l < guestRoomPayInfoList.length; l++) {
							String[] guestRoomPayInfoSt = guestRoomPayInfoList[l].split(",_,");
							String guestSpaceImage = guestRoomPayInfoSt[0];
							String guestSpaceName = guestRoomPayInfoSt[1];
							double regRoomPriceDb = Double.parseDouble(guestRoomPayInfoSt[2]);
							String guestSpacePrice = String.format("%.2f", regRoomPriceDb);
							
							if(guestRoomPayInfoSt[2] != null) {
								int guestProdAmount = Integer.parseInt(guestRoomPayInfoSt[2]);
								guestTotalPrice = guestTotalPrice + guestProdAmount;
							}							
			%>
				
				<div class="row">
				<div class="col-md-12 col-sm-12">				
					<div style="height: 130px;"><div style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><img align="middle" src="resources/images/registry/roomandfundimages/<%=guestSpaceImage%>" style="object-fit: scale-down; width: 100px;"></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestSpaceName%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestFromName%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);"><%=guestStDate%></div></div>					              
				</div>
				
				<div class="col-md-12 col-sm-12">				
					<div style="padding: 30px 5px;"><div class="my_acc_room_fund_bold_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=guestSpacePrice%></div></div>					              
				</div>
				
				<div class="row" align="center"><div style="width: 240px; margin-top: 15px; margin-bottom: 15px; border-bottom: 1px solid #999;"></div></div>
				
				<% } } } double regiTotRoomPriceDb = Double.valueOf(guestTotalPrice); String totalAmount = String.format("%.2f", regiTotRoomPriceDb); %>
				
																				
				<div class="col-md-12 col-sm-12">
					<div class="service-item">                        
						<div class="service-description">
					    	<div style="height: 100px;"><div align="center" class="my_acc_room_fund_red_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">TOTAL ROOM <br>FUNDS AVAILABLE</div></div>
					   	</div> <!-- /.service-description -->
					</div> <!-- /.service-item -->               
				</div> <!-- /.col-md-4 -->
				
				<div class="col-md-12 col-sm-12">
					<div class="service-item" style="margin-top: -60px;">                        
						<div class="service-description">
					    	<div style="padding: 30px 5px;"><div align="center" class="my_acc_room_fund_red_price_text_dsp" style="position: relative; float: left; top: 50%; left: 50%; transform: translate(-50%, -50%);">$&nbsp;<%=totalAmount%></div></div>
					   	</div> <!-- /.service-description -->
					</div> <!-- /.service-item -->               
				</div> <!-- /.col-md-2 -->
				
				</div> 
						
			</div>
						
		</div>	        
        
    	<div style="margin-top: -30px;"></div>		
		</div> </div>		     
		</body>
</html>