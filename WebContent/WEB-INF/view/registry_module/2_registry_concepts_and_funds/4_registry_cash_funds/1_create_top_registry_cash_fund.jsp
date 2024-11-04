
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="resources/css/file_upload.css" type="text/css">
	    
	<script type="text/javascript">
 	$(document).ready(function(){
 		var cashFundName1 = "<c:out value="${cashFundName}"/>";
 		$("#addRegCFButtonId").click(function () { 		
 	 		var result = true; 	 		
 	 		if(cashFundName1 == "Romantic Dinner" || cashFundName1 == "Wine Tasting") {
	 	 		if($("#cashFundsAmount1Id").val() == "" || $("#cashFundsAmount1Id").val() == 0) {
	 	 			document.regiAddGift.cashFundReqAmount.value = "200";
	 			} else {
	 				document.regiAddGift.cashFundReqAmount.value = $("#cashFundsAmount1Id").val();
	 			}
 	 		} else if(cashFundName1 == "Couples Spa Day" || cashFundName1 == "Sunset Sail") {
	 	 		if($("#cashFundsAmount2Id").val() == "" || $("#cashFundsAmount2Id").val() == 0) {
	 	 			document.regiAddGift.cashFundReqAmount.value = "500";
	 			} else {
	 				document.regiAddGift.cashFundReqAmount.value = $("#cashFundsAmount2Id").val();
	 			}
 	 		} else {
	 	 		if($("#cashFundsAmount3Id").val() == "" || $("#cashFundsAmount3Id").val() == 0) {
	 	 			document.regiAddGift.cashFundReqAmount.value = "2500";
	 			} else {
	 				document.regiAddGift.cashFundReqAmount.value = $("#cashFundsAmount3Id").val();
	 			}
 	 		}
 	 		document.regiAddGift.cashFundReqMessage.value = $("#cashFundsMessageId").val();
 	 		return result;
 		});
 		
 		if(cashFundName1 == "Romantic Dinner" || cashFundName1 == "Wine Tasting") {
			$('#firstFieldsDisplayId').show();
			$('#secondFieldsDisplayId').hide();
			$('#thiredFieldsDisplayId').hide();
		} else if(cashFundName1 == "Couples Spa Day" || cashFundName1 == "Sunset Sail") {
			$('#firstFieldsDisplayId').hide();
			$('#secondFieldsDisplayId').show();
			$('#thiredFieldsDisplayId').hide();
		} else {
			$('#firstFieldsDisplayId').hide();
			$('#secondFieldsDisplayId').hide();
			$('#thiredFieldsDisplayId').show();
		}
 		
 	 	var words = $('#cashFundNameBigId').text().split(' ');
 	 	var html = '';
 	 	$.each(words, function() {
 	 	html += '<span class="cash_fund_big_name">'+this.substring(0,1)+'</span>'+this.substring(1) + ' ';
 	 	});
 	 	$('#cashFundNameBigId').html(html);

 	 	var words = $('#cashFundNameSmlId').text().split(' ');
 	 	var html = '';
 	 	$.each(words, function() {
 	 	html += '<span class="cash_fund_sml_name">'+this.substring(0,1)+'</span>'+this.substring(1) + ' ';
 	 	});
 	 	$('#cashFundNameSmlId').html(html);
 	 	 	 	
 	 	$("#cashFundsMessageId").on("input", function(){
 	        $("#cashFundMessageTextDisplayId").text($(this).val());
 	    });
 	 	
 	 	 
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
    
    function countChar(val) {
    	var len = val.value.length;        
        if (len >= 103) {
          val.value = val.value.substring(0, 100);
        } else {
          $('#decCharNum').text(100 - len);
          $('#incCharNum').text(0 + len);
          $('#rowHideId').hide();
          $('#rowShowId').show();
        }
    };
    
    </script>
    
    <style type="text/css">
    .cash_fund_options_head_text_butt { display: block; margin: 0px auto; vertical-align: middle; background-color: white; color: black; display: inline-block; text-transform: uppercase; padding: 15px; outline: none; border: none; vertical-align: middle; font: normal 1.05em/1.25em Georgia; letter-spacing: 3px; border: 1px solid #999999; width: 230px; text-align: center; box-shadow: 4px 4px 4px #808080; -webkit-box-shadow: 4px 4px 4px #808080; -moz-box-shadow: 4px 4px 4px #808080; }
    .cash_fund_image_dsp { width: 180px; height: 180px; }
    .cash_fund_hdtext_dsp { font: bold 1.0em/1.5em Georgia; color: black; letter-spacing: 3px; text-align: center; vertical-align: middle; text-transform: uppercase; }
    .cash_fund_side_hdtext_dsp { font: normal 1.0em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; vertical-align: middle; white-space: nowrap; text-transform: uppercase; }
    .cash_fund_big_name { font-size: 22px;}
    .cash_fund_sml_name { font-size: 23px;}
    .cash_fund_gs_bott_box_htext_dsp { font: normal 1em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; padding: 25px; text-transform: uppercase; }
    .cash_fund_gs_bott_box_htext_dsp::first-letter { font: normal 1.25em/1.5em Georgia; color: black;  }
    
    .cash_fund_submit_Btn_dsp { display: block; margin: 0px auto; vertical-align: middle; background-color: #ff3b3b; color: white; display: inline-block; text-transform: uppercase; padding: 6px 16px; outline: none; border: none; font: 500 0.95em/1.5em Georgia; letter-spacing: 2px; }
	.cash_fund_submit_Btn_dsp:hover { background-color: #2c2c2c; }
    </style>
    
	</head>
	
		<body>		
		<div id="mainframe" class="section-content">
        <div class="container">
        
 <!-- ADD GIFT CARD CONTENT DISPLAY COADING START -->       
        
       
        <div class="row">
		
 <!-- Left Coding Start -->        
        <div class="col-md-12 col-sm-12" style="margin-top: -10px;">
        	<div align="center">
					<div class="cash_fund_options_head_text_butt">CASH FUND</div>									
			</div>
			
			<div align="center" class="row top_adjustment_35">
			<img class="cash_fund_image_dsp" src="<c:out value='${cashFundsImgPathDsp}'/>">
			</div>
			
			<div align="center" style="margin-top: 30px;" id="cashFundNameBigId" class="cash_fund_hdtext_dsp">${cashFundName}</div>
			
        	<div align="left" style="margin-left: 30px; margin-top: 30px;">		    
		    
		    <div class="reg_cash_fund_sb_text_dsp">REQUESTED AMOUNT:</div>
		    <table style="display: none;" id="firstFieldsDisplayId">
		    <tr>
		    <td><input value="$" readonly style="border: 1px solid black; background: #f2f2f2; font: bold 1.28em/1.25em Georgia; height: 38px; width: 60px; text-align: center; color: black; cursor: none;"></td> <td><input type="text" name="cashFundsAmount" maxLength="5" placeholder="200" onkeypress="return numeralsOnly(event);" id="cashFundsAmount1Id" style="border: 1px solid black; font: normal 1.28em/1.25em Georgia; height: 38px; width: 160px; margin-left: -1px;"></td>
		    </tr>
		    </table>
		    
		    <table style="display: none;" id="secondFieldsDisplayId">
		    <tr>
		    <td><input value="$" readonly style="border: 1px solid black; background: #f2f2f2; font: bold 1.28em/1.25em Georgia; height: 38px; width: 60px; text-align: center; color: black; cursor: none;"></td> <td><input type="text" name="cashFundsAmount" maxLength="5" placeholder="500" onkeypress="return numeralsOnly(event);" id="cashFundsAmount2Id" style="border: 1px solid black; font: normal 1.28em/1.25em Georgia; height: 38px; width: 160px; margin-left: -1px;"></td>
		    </tr>
		    </table>
		    
		    <table style="display: none;" id="thiredFieldsDisplayId">
		    <tr>
		    <td><input value="$" readonly style="border: 1px solid black; background: #f2f2f2; font: bold 1.28em/1.25em Georgia; height: 38px; width: 60px; text-align: center; color: black; cursor: none;"></td> <td><input type="text" name="cashFundsAmount" maxLength="5" placeholder="2500" onkeypress="return numeralsOnly(event);" id="cashFundsAmount3Id" style="border: 1px solid black; font: normal 1.28em/1.25em Georgia; height: 38px; width: 160px; margin-left: -1px;"></td>
		    </tr>
		    </table>
		    
		    <div class="reg_cash_fund_sb_text_dsp">NOTE FOR YOUR GUESTS <font class="reg_cash_fund_opt_text_dsp">(OPTIONAL)</font>:</div>
		    <div><textarea style="border: 1px solid black; font: normal 1.05em/1.25em Georgia; color: black; height: 100px; width: 220px; padding: 10px; letter-spacing: 0px;" maxlength="100" name="cashFundsMessage" id="cashFundsMessageId" onkeyup="countChar(this)" placeholder="TELL YOUR GUESTS WHY YOU WANT THIS ..."></textarea></div>
		    <div id="rowShowId" style="display: none; position: relative; left: -10px;"><div style="padding: 5px 15px;" class="rg_billing_bm_num_text_dis"><font id="incCharNum"></font> / <font id="decCharNum"></font></div></div>
			<div id="rowHideId"><div style="padding: 5px 15px; position: relative; left: -10px;" class="rg_billing_bm_num_text_dis">0/100</div></div>
		    </div>
		        
		      	        
	        <div class="row top_adjustment_50">
				<div class="col-md-12 col-sm-12" align="center">	
					<table> <tbody> <tr>
						<td align="left" style="position: relative; left: -15px;">
						<form action="createCashFunds" method="get">
			                <h4><input class="back_submit_Btn" type="image" title="BACK" src="resources/images/backButton.png" style="position: relative; left: 8px; top: -2px;"></h4>
			            </form>
		            	</td>
				        
				        <td>			        
				        	<form action="regTopCashFundsInfoSaving" name="regiAddGift" method="get">
			            	<h4><button class="cash_fund_submit_Btn_dsp" id="addRegCFButtonId">ADD TO REGISTRY</button></h4>
			            	<input type="hidden" id="cashFundNameId" name="cashFundsName" value="${cashFundName}">
					 		<input type="hidden" id="cashFundReqAmountId" name="cashFundReqAmount">
					 		<input type="hidden" id="cashFundReqMessageId" name="cashFundReqMessage">
					 		<input type="hidden" id="cashFundsImageNameId" name="cashFundsImageName" value="${cashFundsImagePath}">
					 		</form>		          	
			          	</td>
		          	</tr> </tbody> </table>
		     	</div>
	    	</div>
		    	        
	        
          	<div style="height: 20px;"></div>
        </div>
        
        </div>
        
        <div class="row">
        
 <!-- Right Coding Start -->       
        <div class="col-md-12 col-sm-12" style="margin-top: 50px;">        
		    <div align="center">
		    	<table> <tbody> <tr>
					<td><img src="resources/images/registry/reg_guest_img/reg_guest_see_img.png" style="position: relative; left: -15px;"></td>	       
		        	<td class="regi_guest_see_text_dsp" style="margin-left: 10px;">WHAT GUESTS SEE</td>			
		        </tr> </tbody> </table>		                
	        </div>
	        
<!-- Box display coding -->	        
		    <div class="row top_adjustment_20">
				<div class="col-md-1 col-sm-1"></div>
		        <div class="col-md-10 col-sm-10 reg_guest_rbox_bord_dsp" style=" margin-left: 15px; margin-right: 15px;">
		        <div align="left">		        
				    <div class="row top_adjustment_30">
						<div class="col-md-12 col-sm-12">
							<div class="row" align="center" style="margin-top: 0px;">
							<div><img src="<c:out value='${cashFundsImgPathDsp}'/>" height="100" width="100"></div>
							</div>
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
			        
			        
			        <div class="row top_adjustment_50">
						<div class="col-md-12 col-sm-12">
							<div align="center" class="room_fund_guest_fund_rstest_dsp"><p>CONTRIBUTE ANY AMOUNT TOWARDS THIS FUND:</p></div>
						</div>
						
						<div align="center" class="col-md-12 col-sm-12" style="margin-top: 30px;" >						
				        <table>
						    <tr>
							    <td><input value="$" readonly class="reg_guest_rsdoller_dsp"></td> 
							    <td><input value="" readonly name="fundAmount" class="reg_guest_rsinput_amount_fld"></td>
						    </tr>
					    </table>
					   
					    </div>
					    	        
				        <div class="col-md-12 col-sm-12" style="margin-top: 30px;">
					        <div class="text-center">
				            	<h4><button class="reg_add_cont_submit_Btn_dspl" id="contRegistryButtonId">CONTRIBUTE</button></h4>
				          	</div>					        	
				        </div>
				        				        				        	                
			        </div>
			        
			        <div class="row">
						<div class="col-md-12 col-sm-12 reg_guest_rs_bott_box_dsp">
							<div align="center" class="cash_fund_gs_bott_box_htext_dsp" style="min-height: 70px;"><font id="cashFundMessageTextDisplayId"></font></div>
						</div>				        				        	                
			        </div>
			        
		        </div>			
		        </div>		        
		        <div class="col-md-1 col-sm-1"></div>		                
	        </div>
	              
        </div>        
        </div>        
        
		</div></div>
				
		
		</body>
</html>