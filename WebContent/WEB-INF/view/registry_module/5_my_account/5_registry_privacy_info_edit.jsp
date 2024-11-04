
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="resources/css/file_upload.css" type="text/css">
	
	<style type="text/css">
	.reg_popup_privacy_save_subt_Btn { display: block; margin: 0px auto; vertical-align: middle; background-color: #ff3b3b; color: white; display: inline-block; text-transform: uppercase; padding: 6px 8px; outline: none; border: none; font: 500 0.7em/1.5em Georgia; letter-spacing: 2px; width: 200px; margin-bottom: 20px; }
	.reg_popup_privacy_save_subt_Btn:hover { background-color: #2c2c2c; }
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function() {
 		var regStatus1 = "<c:out value="${regStatus}"/>";		
	    if(regStatus1 == "Done"){
	    	$("#visibleImagesDispId").show();
	    	$("#notVisibleImagesDispId").hide();
	    } else {
	    	$("#notVisibleImagesDispId").show();
	    	$("#visibleImagesDispId").hide();	    	
	    }	    
	    
	    var regSuccSave1 = "<c:out value="${regSuccSave}"/>";
	    if(regSuccSave1 == "Visible To Guest" && regStatus1 == "Done") {
			$('#mask').css({'width': $(window).width(),'height': $(document).height()});	
			$('#mask').fadeIn(100);	
			$('#mask').fadeTo("fast",0.8);
			$('#dialog').fadeIn(500);
			$('.window .close').click(function (e) {
			e.preventDefault();
			$('#mask, .window').hide();
			});
			status = "Done";
	    }
		
 	});
    </script>
    
    <script>
	function myFunction() {
	 	var copyText = document.getElementById("myInput");
	  	copyText.select();
	  	document.execCommand("copy");
	  	return false;
	}
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
							<div class="top_adjustment_5"><a href="#" class="regi_prof_left_link_text_hover_dspl">PRIVACY</a></div>
							
							<div class="regi_prof_left_hd_text_dspl top_adjustment_20"><h3>GIFT TRACKER</h3></div>
							<div class="top_adjustment_5"><a href="regiShippingInfoDsp" class="regi_prof_left_link_text_dspl">SHIPPING INFO</a></div>
							<div class="top_adjustment_5"><a href="regiMyOrderDsp" class="regi_prof_left_link_text_dspl">MY ORDERS</a></div>
							<div class="top_adjustment_5"><a href="regiGiftsReceivedDsp" class="regi_prof_left_link_text_dspl">GIFTS RECEIVED</a></div>
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
	        	<div class="service-item">                        
	            	<div class="service-description">	        			
	        			
	        		<div class="row">
				        <div class="col-md-12 col-sm-12">
				        	<div class="service-item">                        
				            	<div class="service-description reg_pro_left_adj_disp">
				        			<div align="left" style="margin-top: -20px;">        			
										<div class="registry_prof_title"><h2>Privacy Settings</h2></div>
				        			</div>
				        		</div>
				        	</div>
				        </div>
			    	</div>
			    	
	        		<form action="registrantURLInfoUpdate" method="post">			        
			        <div class="row">
				        <div class="col-md-12 col-sm-12">
				        	<div class="service-item">                        
				            	<div class="service-description reg_pro_left_adj_disp">
									<div align="left" style="margin-top: -20px;">
																	
									<div class="regi_prof_left_sub_hd_text top_adjustment_10"><h4>Visibility:</h4></div>
									
									<div class="row top_adjustment_20" id="notVisibleImagesDispId" style="display: none;">
									<div class="col-md-12 col-sm-12">
										<div class="regi_prof_left_sub_nor_text top_adjustment_5"><a href="regGiveVisibleToGuest"><img src="resources/images/registry/visible_butt/reg_visible_red.png" style="margin-left: -5px;"></a></div>
									</div>
									
									<div class="col-md-12 col-sm-12" style="margin-top: 10px;">
										<div class="regi_prof_left_sub_hd_text"><h4>Your Registry is <font color="red">Not</font> Visible</h4></div>
										<div class="regi_prof_left_sub_nor_text top_adjustment_5">Guests cannot visit or shop your registry.</div>
									</div>
									</div>
									
									<div class="row top_adjustment_20" id="visibleImagesDispId" style="display: none;">
									<div class="col-md-12 col-sm-12">
										<div class="regi_prof_left_sub_nor_text top_adjustment_5"><a href="regNotGiveVisibleToGuest"><img src="resources/images/registry/visible_butt/reg_visible_green.png" style="margin-left: -5px;"></a></div>
									</div>
									
									<div class="col-md-12 col-sm-12" style="margin-top: 10px;">
										<div class="regi_prof_left_sub_hd_text"><h4>Your Registry is Visible</h4></div>
										<div class="regi_prof_left_sub_nor_text top_adjustment_5">Guests can visit and shop your registry.</div>
									</div>
									</div>
																		
									</div>			        			
				        		</div>
				        	</div>
				        </div>
			        
			        </div>
			        </form>
	        			
	        		</div>
	        	</div>
	        </div>
    	</div>
    	
    	<div style="margin-top: -100px;"></div>		
		</div> </div>
		
		<div id="boxes">
        <div style="width: 400px; height: 602px; display: none; opacity: 0.1; z-index: 10001;" id="mask"></div>
        
        <div align="center" style="padding: 20px; display: none;  width: 270px; z-index: 10001; overflow-y: hidden; position:fixed; left: 50%; top: 50%; -ms-transform: translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%);" id="dialog" class="window">
    	<div id="popupfoot" class="close"> <a href="#"><img src="resources/images/close.png" style="cursor: pointer; top: -10px; left: 0px;  position: relative;"></a></div>
        
		<div align="center" style="font: bold 0.85em/1.5em Georgia; margin-top: 35px; letter-spacing: 2px; color: black;">YOU'RE LIVE!</div>
		<div align="center" style="font: normal 0.70em/1.5em Georgia; margin-top: 20px; letter-spacing: 1px; color: black;">GUESTS CAN NOW SEE AND SHOP YOUR REGISTRY.</div>
		
		<div align="center" style=" margin-top: 20px;">
		<table><tr>
		<td style="font: normal 0.70em/1.5em Georgia; letter-spacing: 1px; color: black;">https://www.nookandcove.com/registry/<font style="font-weight: bold;">${regAddress}</font></td>
		
		</tr></table></div>
		
		<div align="center" style="margin-top: 50px; margin-bottom: 30px;"><table>
		<tr><td><a href="previewGuestRegistry"><button class="reg_popup_privacy_save_subt_Btn" id="urlInfoChangesButtId">VIEW YOUR REGISTRY</button></a></td></tr>
	    <tr><td><a href="registryOverview"><button class="reg_popup_privacy_save_subt_Btn" id="urlInfoChangesButtId">ADD MORE GIFTS</button></a></td></tr></table></div>
		
		</div>
		</div>		
		
		     
		</body>
</html>