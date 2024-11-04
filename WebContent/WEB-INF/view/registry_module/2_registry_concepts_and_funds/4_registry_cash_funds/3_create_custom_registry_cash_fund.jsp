
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="resources/css/file_upload.css" type="text/css">
	<style type="text/css">
	.cash_fund_gs_bott_box_htext_dsp { font: normal 1em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; padding: 25px; text-transform: uppercase; }
    .cash_fund_gs_bott_box_htext_dsp::first-letter { font: normal 1.25em/1.5em Georgia; color: black;  }
	</style>
	    
	<script type="text/javascript">
 	$(document).ready(function(){ 		
		
 		var customFundName1 = "<c:out value="${customFundName}"/>";
 		$("[name=fundName]").val(customFundName1);
 		
 		var cashFundsMessage1 = "<c:out value="${cashFundsMessage}"/>";
 		var cashFundsAmount1 = "<c:out value="${cashFundsAmount}"/>";
 		$("#cashFundsAmountId").val(cashFundsAmount1);
 		$("#cashFundsMessageId").val(cashFundsMessage1);

 		var regCustomFundError1 = "<c:out value="${regCustomFundError}"/>";
 		if(regCustomFundError1 === "Have Custom Name In DB") {
 			alert("A fund with that name already exists. Please rename this fund.");
 		}
 		
 		var textFieldRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 -#/_().&amp;]*$/;
 		$("#addRegCFButtonId").click(function (){
 		var result = true;
 		if($("#fundNameId").val() !== "") { $("#cashFundNameIdLabel").css("color","black");
 		} else { $("#cashFundNameIdLabel").css("color","red"); result=false; }
 			if($("#cashFundsAmountId").val() == "" || $("#cashFundsAmountId").val() == "0") {
	 			document.regiAddGift.cashFundReqAmount.value = "2500";
			} else {
				document.regiAddGift.cashFundReqAmount.value = $("#cashFundsAmountId").val();
			}
 		document.regiAddGift.cashFundReqMessage.value = $("#cashFundsMessageId").val();
	 	document.regiAddGift.customFundName.value = $("#fundNameId").val();
	 	
 		return result;
		});

 	 	$("#fundNameId").keyup(function(){ 	
 	 	if(textFieldRegExp.test(this.value)){ $("#cashFundNameIdLabel").css("color","black");
 	    } else{ $("#cashFundNameIdLabel").css("color","red"); result=false; } 	
 	 	});
 	 	
 	 	var words = $('#cashFundNewNameTextId').text().split(' ');
 	 	var html = '';
 	 	$.each(words, function() {
 	 	html += '<span class="first_letter_dsp">'+this.substring(0,1)+'</span>'+this.substring(1) + ' ';
 	 	});
 	 	$('#cashFundNewNameTextId').html(html);
 	 	
	 	
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
    .cash_fund_hdtext_dsp { font: bold 1.0em/1.5em Georgia; color: black; letter-spacing: 3px; text-align: center; vertical-align: middle; }
    .cash_fund_side_hdtext_dsp { font: normal 1.0em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; vertical-align: middle; text-transform: uppercase; }
    .first_letter_dsp { font-size: 22px;}
    .cf_fl_edit_img_dsp { font-size: 18px;}
    .cash_fund_rs_bott_box_htext_dsp { font: normal 1em/1.5em Georgia; color: black; letter-spacing: 2px; text-align: center; padding: 25px; text-transform: uppercase; }
    
    .cash_fund_submit_Btn_dsp { display: block; margin: 0px auto; vertical-align: middle; background-color: #ff3b3b; color: white; display: inline-block; text-transform: uppercase; padding: 6px 16px; outline: none; border: none; font: 500 0.95em/1.5em Georgia; letter-spacing: 2px; }
	.cash_fund_submit_Btn_dsp:hover { background-color: #2c2c2c; }
	.regi_cash_fund_sb_text_box { border: 1px solid black; height: 40px; width: 220px; padding:7px; }
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
			
			<div id="redUploadImage" style="margin-top: 10px;" align="center" class="reg_cf_edit_img_dsp"><font class="cf_fl_edit_img_dsp">E</font>DIT&nbsp; <font class="cf_fl_edit_img_dsp">I</font>MAGE</div>
					
        	<div align="left" style="margin-left: 30px; margin-top: 30px;">		    
		    			
        	<div class="reg_cash_fund_sb_text_dsp" id="cashFundNameIdLabel">FUND NAME*:</div>
		    <div><input class="regi_cash_fund_sb_text_box" type="text" name="fundName" id="fundNameId" placeholder="CREATE A CUSTOM FUND"></div>
		    	
		    <div class="reg_cash_fund_sb_text_dsp">REQUESTED AMOUNT:</div>
		    <table>
		    <tr>
		    <td><input value="$" readonly style="border: 1px solid black; background: #f2f2f2; font: bold 1.28em/1.25em Georgia; height: 38px; width: 60px; text-align: center; color: black; cursor: none;"></td> <td><input type="text" name="cashFundsAmount" maxLength="5" placeholder="2500" id="cashFundsAmountId" onkeypress="return numeralsOnly(event);" style="border: 1px solid black; font: normal 1.28em/1.25em Georgia; height: 38px; width: 160px; margin-left: -1px;"></td>
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
			                <h4><input class="back_submit_Btn" type="image" title="BACK" src="resources/images/backButton.png" style="position: relative; left: 0px; top: 0px;"></h4>
			            </form>
		            	</td>
				        
				        <td>			        
				        	<form action="regCustomCashFundsInfoSaving" name="regiAddGift" method="POST">
			            	<h4><button class="cash_fund_submit_Btn_dsp" id="addRegCFButtonId">ADD TO REGISTRY</button></h4>
			            	<input type="hidden" id="customFundNameId" name="customFundName">
					 		<input type="hidden" id="cashFundReqAmountId" name="cashFundReqAmount">
					 		<input type="hidden" id="cashFundReqMessageId" name="cashFundReqMessage">
					 		<input type="hidden" id="cashFundsImageNameId" name="cashFundsImageName" value="${cashFundsImagePath}">
					 		<input type="hidden" id="customFundNameId" name="customFundOldName" value="${customFundName}">
					 		
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
				        	<div align="center" style="margin-top: 27px;" id="cashFundNewNameTextId" class="cash_fund_side_hdtext_dsp">${customFundName}</div>			
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
		
		<div id="boxes">
        <div style="width: 500px; height: 400px; display: none; opacity: 0.1; z-index: 10001;" id="mask"></div>
        
        <div align="center" style="padding: 5px; display: none;  min-width: 270px; z-index: 10001; overflow-y: hidden; position:fixed; left: 46%; top: 50%; -ms-transform: translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%); margin-left: 15px; margin-right: 15px;" id="dialog" class="window">
        <div id="popupfoot" class="close"> <a href="#"><img src="resources/images/close.png" style="cursor: pointer; top: 0px; left: -2px;  position: relative;"></a></div>
    
    	<div align="center" style="font: bold 0.9em/1.5em Georgia; letter-spacing: 1px; color: black; margin-top: 20px;">Upload Your Photo</div>
    	
			<div id="lorem" style="padding: 10px; width: 260px; margin-top: 10px; overflow-x: hidden;">		
				<form action="uploadCustomCashFundImage" method="POST" enctype="multipart/form-data">
					<table style="font: normal 0.82em/1.5em Georgia; letter-spacing: 0px; color: black;">
					<tbody><tr><td><input type="file" onchange="readURL(event)" name="regPhotoUpload" id="fileUpload" title="Click here to browse your photo." style="background-color:white;"></td></tr>
					<tr style="height: 12px;"><td></td></tr>
					<tr><td><font>You can upload a JPG, JPEG, <br>BMP, HEIC, HEIF, <br>GIF, or PNG file.</font></td></tr>
					<tr style="height: 12px;"><td></td></tr>
					<tr><td>This image can be seen by any <br>guest on our website viewing or <br>searching for your registry.</td></tr>
					<tr style="height: 12px;"><td></td></tr>
					<tr><td><input type="checkbox" name="accept" id="accept"> <div style="margin-left: 30px; margin-top:-20px">I own the image I am <br>uploading and confirm <br>that this image <br>compiles with the <br>NOOK + COVE Upload <br>Terms of Use.</div></td></tr>
					<tr style="height: 20px;"><td></td></tr>
					<tr><td><button class="uploaded_submit_Btn_for_regi" id="photoUploadBut">UPLOAD</button></td></tr>
					<tr style="height: 10px;"><td></td></tr>
					</tbody></table>
					<input type="hidden" id="customFundNameId" name="customFundOldName" value="${customFundName}">
				</form>
			</div>
		
		</div>
		</div>
				
		
		<script type="text/javascript" src="resources/js/file_upload.js"></script>
		
		</body>
</html>