
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<style type="text/css">
	.room_fund_guest_image_dsp { height: 100px; object-fit: scale-down; position: relative; object-position: 50% 50%; overflow: auto; overflow-y: hidden; overflow-x: hidden; width: 100%; }
	.room_fund_rs_bott_box_htext_dsp { font: normal 1em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; padding: 25px; text-transform: uppercase; }
    .room_fund_side_hdtext_dsp { font: normal 1.0em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; vertical-align: middle; text-transform: uppercase; }
    .first_letter_dsp { font-size: 22px;}
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function(){
 		
 		var roomFundValue = "<c:out value="${roomFundContributedAmount}"/>";
 	 	$("#regiFundAmountId").val(roomFundValue);
 	 	
 		var priceReg = /^[0-9]+$/;
 		$("#contRegistryButtonId").click(function (){
 		    var result = true; 		    
	 		if(priceReg.test($("#regiFundAmountId").val())){ $("#regiFundAmountId").css("border-color","black");
	 	    } else{ $("#regiFundAmountId").css("border-color","red"); result=false; }
			
	 		return result;
 		});

 	 	$("#regiFundAmountId").keyup(function(){ 	
 	 	if(priceReg.test(this.value)){ $("#regiFundAmountId").css("border-color","black");
 	    } else{ $("#regiFundAmountId").css("border-color","red"); result=false; } 	
 	 	});
 	 	var regStillNeedAmount1 = "<c:out value="${regStillNeedAmount}"/>";
 	 	var regiStillNeedAmount = parseInt(regStillNeedAmount1);
 	 	if(regiStillNeedAmount > 0) {
 	 		$("#regStillNeedAmountId").show();
 	 	} else {
 	 		$("#regStillNeedAmountId").hide();
 	 	}
 	 	
 	 	var words = $('#roomFundNewNameTextId').text().split(' ');
 	 	var html = '';
 	 	$.each(words, function() {
 	 	html += '<span class="first_letter_dsp">'+this.substring(0,1)+'</span>'+this.substring(1) + ' ';
 	 	});
 	 	$('#roomFundNewNameTextId').html(html);
 	 	
 	 	
 	});

 	function numeralsOnly(evt) {
 		evt = (evt) ? evt : event;
 		var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
 		((evt.which) ? evt.which : 0));
 		if (charCode > 31 && (charCode < 48 || charCode > 57)) {
 		return false;
 		}
 		return true;
 	}
    </script>
	</head>
	
		<body>		
		<div id="mainframe" class="section-content">
        <div class="container">
        
        
        
<!-- Box display coding -->	        
		    <div class="row top_adjustment_20">
				<div class="col-md-2 col-sm-2"></div>
		        <div class="col-md-8 col-sm-8 reg_guest_rbox_bord_dsp">
		        <div align="left">		        
				    <div class="row top_adjustment_30">
						
						<div class="col-md-4 col-sm-4">
							<div class="row" align="center" style="margin-top: 0px;">
							<div><img src="resources/images/registry/roomandfundimages/${registrySpaceNameImg}" class="room_fund_guest_image_dsp"></div>
							</div>							
						</div>
												
				        <div class="col-md-4 col-sm-4 reg_guest_rsbox_red_dvd">
				        <div align="center" style="margin-top: 38px;" id="roomFundNewNameTextId" class="room_fund_side_hdtext_dsp">${registrySpaceName}</div>			
				        </div>
				        		        
				        <div class="col-md-2 col-sm-2">
				        	<img src="resources/images/registry/reg_guest_img/reg_gift_group_img.png" style="margin-top: 15px; margin-left: 13px;">				        	
				        </div>
				        <div class="col-md-2 col-sm-2">
				        	<div class="reg_guest_gg_text_dsp">THIS IS A GROUP GIFT</div>				        	
				        </div>		                
			        </div>
			        
			        
			        <div class="row top_adjustment_80">
						<div class="col-md-4 col-sm-4">
							<div align="center" class="reg_guest_fund_rstest_dsp"><p>CONTRIBUTE ANY AMOUNT TOWARDS THE ${registrySpaceName}:</p></div>
						</div>
						
						<form action="registrySpaceInfoAddToCart" method="get">
						<div align="center" class="col-md-4 col-sm-4" >						
				        <table>
					    <tr>
					    <td><input value="$" readonly class="reg_guest_rsdoller_dsp"></td> 
					    <td><input type="text" name="regiFundAmoun" id="regiFundAmountId" maxLength="5" class="reg_guest_rsinput_amount_fld_cl" onkeypress="return numeralsOnly(event);"></td>
					    </tr>
					    </table>
					    <div class="reg_guest_st_need_amt_text" id="regStillNeedAmountId" style="display: none;">STILL NEEDS: $${regStillNeedAmount}</div>
					    </div>
					    	        
				        <div class="col-md-4 col-sm-4">
				        <div class="text-center">
			            	<h4><button class="reg_guest_cont_Butn_dspl" id="contRegistryButtonId">CONTRIBUTE</button></h4>
			          	</div>					        	
				        </div>
				        <input type="hidden" name="registrySpaceName" value="${registrySpaceName}">
				        <input type="hidden" name="registrySpaceColName" value="${registrySpaceColName}">
				        <input type="hidden" name="registrySpaceNameImg" value="${registrySpaceNameImg}">
				        <input type="hidden" name="registrySpaceColCount" value="${registrySpaceColCount}">
				        </form>				        				        	                
			        </div>
			        
			        <div class="row">
						<div class="col-md-12 col-sm-12 reg_guest_rs_bott_box_dsp">
							<div class="col-md-12 col-sm-12 reg_guest_rs_bott_box_dsp">
							<div style="min-height: 70px;"></div>
						</div>
						</div>				        				        	                
			        </div>
			        
		        </div>			
		        </div>		        
		        <div class="col-md-2 col-sm-2"></div>		                
	        </div>        			
		   
        		
		</div> </div>		     
		</body>
</html>