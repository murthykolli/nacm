
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<style type="text/css">
	.reg_cb_contributed_image_dsp { height: 100px; object-fit: scale-down; position: relative; object-position: 50% 50%; overflow: auto; overflow-y: hidden; overflow-x: hidden; width: 100%; }
	.reg_cb_contributed_bott_box_htext_dsp { font: normal 1em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; padding: 25px; text-transform: uppercase; }
    .reg_cb_contributed_name_dsp { font: normal 1.0em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; vertical-align: middle; text-transform: uppercase; }
    .first_letter_dsp { font-size: 22px;}
    .regi_guest_fund_rstest_dsp { font: normal 0.9em/1.5em Georgia; color: black; letter-spacing: 1px; text-transform: uppercase; }
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function() {

 	 	var regFTContributeAmount = "<c:out value="${regFTCotributedPrice}"/>";
 	 	if(regFTContributeAmount !== "null") { 
 	 		$("#regiFundAmountId").val(regFTContributeAmount);
 	 	} else {
 	 		$("#regiFundAmountId").val("");
 	 	}
 		 		
 		var priceReg = /^[0-9\.]+$/;
 		$("#contRegistryButtonId").click(function () {
 		    var result = true; 		    
	 		if(priceReg.test($("#regiFundAmountId").val())){ $("#regiFundAmountId").css("border-color","black");
	 		var regiCBCotributedNeedPrice1 = "<c:out value="${regCBCotributedRemainingPrice}"/>";
	 		var regCBCotributedNeedPrice1 = regiCBCotributedNeedPrice1.replace(",","");
	 		var cbCotributedNeedPriceDb = parseFloat(regCBCotributedNeedPrice1);
	 		var cbCotributedPriceDb = parseFloat($("#regiFundAmountId").val());	 		
	 		if(cbCotributedPriceDb > cbCotributedNeedPriceDb) {
	 			alert("Please make sure the amount you wish to gift is equivalent to or less than the remaining balance of funds requested.");
	 			result=false;
	 		}	 		
	 	    } else{ $("#regiFundAmountId").css("border-color","red"); result=false; }
			
	 		return result;
 		});

 	 	$("#regiFundAmountId").keyup(function(){ 	
 	 	if(priceReg.test(this.value)){ $("#regiFundAmountId").css("border-color","black");
 	    } else{ $("#regiFundAmountId").css("border-color","red"); result=false; } 	
 	 	});
 	 	
 	 	$('input#regiFundAmountId').keypress(function(e) { 
 	 		if (this.value.length == 0 && e.which == 48 ){
 	 			return false;
 	 		}
 	 	});
 	 	
 	 	var regStillNeedAmount1 = "<c:out value="${regCBCotributedRemainingPrice}"/>";
 	 	var regiStillNeedAmount = parseInt(regStillNeedAmount1);
 	 	if(regiStillNeedAmount > 0) {
 	 		$("#regStillNeedAmountId").show();
 	 	} else {
 	 		$("#regStillNeedAmountId").hide();
 	 	}
 	 	
 	 	
 	 	var words = $('#cbontributedNewNameTextId').text().split(' ');
 	 	var html = '';
 	 	$.each(words, function() {
 	 	html += '<span class="first_letter_dsp">'+this.substring(0,1)+'</span>'+this.substring(1) + ' ';
 	 	});
 	 	$('#cbontributedNewNameTextId').html(html);
 	 	
 	});
 	
 	function numeralsOnly(evt,id) {
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
        
        
        
<!-- Box display coding -->	        
		    <div class="row">
				
		        <div class="col-md-12 col-sm-12 reg_guest_rbox_bord_dsp" style="margin-left: 15px; margin-right: 15px;">
		        <div align="left">		        
				    <div class="row">						
						<div class="col-md-12 col-sm-12">
							<div class="row" align="center" style="margin-top: 20px;">
							<div><img src="${regFTCotributedProductImage}" class="reg_cb_contributed_image_dsp"></div>
							</div>							
						</div>
						
				        <div class="col-md-12 col-sm-12">
				        <div align="center" style="margin-top: 20px;" id="cbontributedNewNameTextId" class="reg_cb_contributed_name_dsp">${regFTCotributedProductName}</div>			
				        </div>
							        
				        <div class="col-md-12 col-sm-12" style="margin-top: 30px;">				        	
						    <div align="center">
						    	<table> <tbody> <tr>
									<td><img src="resources/images/registry/reg_guest_img/reg_gift_group_img.png" style="position: relative; left: -8px;"></td>	       
						        	<td class="reg_guest_gg_text_dsp" style="position: relative; left: 7px;">THIS IS A GROUP GIFT</td>			
						        </tr> </tbody> </table>		                
					        </div>				        					        	
				        </div>		                
			        </div>
			        
			        
			        <div class="row top_adjustment_60">
						<div class="col-md-12 col-sm-12">
							<div align="center" class="regi_guest_fund_rstest_dsp"><p>CONTRIBUTE ANY AMOUNT TOWARDS THE ${regFTCotributedProductName}:</p></div>
						</div>
						
						<form action="finTouchesContributedProductDataUpdate" method="POST">
						<div align="center" class="col-md-12 col-sm-12" style="margin-top: 10px;" >						
				        <table>
					    <tr>
					    <td><input value="$" readonly class="reg_guest_rsdoller_dsp"></td> 
					    <td><input type="text" name="regFTCotributedPrice" id="regiFundAmountId" maxLength="8" class="reg_guest_rsinput_amount_fld_cl" onkeypress="return numeralsOnly(event,this.id);"></td>
					    </tr>
					    </table>
					    <div class="reg_guest_st_need_amt_text" id="regStillNeedAmountId" style="display: none;">STILL NEEDS: $${regFTCotributedRemainingPrice}</div>
					    </div>
					    	        
				        <div class="col-md-12 col-sm-12">
				        <div class="text-center" style="margin-top: 30px;">
			            	<h4><button class="reg_guest_cont_Butn_dspl" id="contRegistryButtonId">CONTRIBUTE</button></h4>
			          	</div>					        	
				        </div>
				        <input type="hidden" name="regFTCotributedProductSavingId" value="${regFTCotributedProductSavingId}">
				        </form>				        				        	                
			        </div>
			        
			        <div class="row">
						<div class="col-md-12 col-sm-12 reg_guest_rs_bott_box_dsp">
							<div style="min-height: 70px;"></div>
							<!-- <div align="center" class="reg_cb_contributed_bott_box_htext_dsp"><font style="font-size: 21px;">Y</font>OUR CONTRIBUTION WILL GO TOWARDS A BEAUTIFULLY DESIGNED <br>SPACE BY ONE OF NOOK + COVE'S TALENTED DESIGNERS!</div> -->
						</div>				        				        	                
			        </div>
			        
		        </div>			
		        </div>		        
		        		                
	        </div>        			
		   
        		
		</div> </div>		     
		</body>
</html>