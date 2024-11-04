
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="resources/js/reg_guest_billing_validation.js" ></script>
	
	<style type="text/css">
	.regi_shpp_inp_box_dsp { background: white; border: 1px solid black; width: 255px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.reg_pay_exp_month_display { background: white; border: 1px solid black; width: 255px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; top: 0px; position: relative; }
	.reg_pay_exp_year_display { background: white; border: 1px solid black; width: 255px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; top: 0px; position: relative; }
	.reg_pay_cvv_numb_display { background: white; border: 1px solid black; width: 255px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; top: 0px; position: relative; }
	.reg_pack_pay_promo_gift_inpt_box { background: white; border: 1px solid black; width: 255px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; margin-left: 0px; }
	.reg_payment_apply_sub_Btn { display: block; margin: 0px 0 0 auto; vertical-align: middle; background-color: #ff3b3b; color: white; display: inline-block; text-transform: uppercase; outline: none; border: none; width: 220px; font: 500 0.9em/1.25em Georgia; letter-spacing: 2px; height: 34px; }
	.reg_payment_apply_sub_Btn:hover { background-color: #2c2c2c; }
	.reg_pay_est_pat_total { background: #e8e8e8; min-height: 60px; height: auto; width: 260px; padding: 25px 10px; }
	.regi_gp_tos_pp_total_txt_frame_dsp { width: 260px; padding: 10px; }
	.reg_spcart_pay_est_totl { font: 0.9em/1.25em Georgia; letter-spacing: 1px; color: black; text-align: left; text-transform: uppercase; }
	.reg_pay_price_shp_tol { font: bold 1.0em/1.25em Georgia; letter-spacing: 1px; color: black; text-align: left; text-transform: uppercase; }
	.paymnt_prs_tble_adj { width: 260px; }
	.regi_my_cart_for_guest_ht_dsp { font: bold 1.05em/1.25em Georgia; color: black; display: block; letter-spacing: 2px; min-width: 200px; margin: 0 auto; text-align: left; text-transform: uppercase; }
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function() {
 			     
	    var payCardNumber1 = '<c:out value="${payCardNumber}"/>';
	    var payExpMonth1 = '<c:out value="${payExpMonth}"/>';
	    var payExpYear1 = '<c:out value="${payExpYear}"/>';    
	    var nameOnCard1 = '<c:out value="${nameOnCard}"/>';
	    var payCvvNumber1 = '<c:out value="${payCvvNumber}"/>';
	    
	    var ddlYears = $("#payExpYearId");        
        var currentYear = (new Date()).getFullYear(); 
        for (var i = currentYear; i <= currentYear+50; i++) {
            var option = $("<option />");
            option.html(i);
            option.val(i);
            ddlYears.append(option);
        }

	    $("[name=payCardNumber]").val(payCardNumber1);
	    $("[name=payExpMonth]").val(payExpMonth1);
	    $("[name=payExpYear]").val(payExpYear1);    
	    $("[name=nameOnCard]").val(nameOnCard1);
	    $("[name=payCvvNumber]").val(payCvvNumber1);
	    	    
	    var giftCardStatus1 = '<c:out value="${giftCardStatus}"/>';
	    if(giftCardStatus1 !== "") {
	    	$("#giftCardStatusId").show();
	    } else {
	    	$("#giftCardStatusId").hide();
	    }
	    
// Package Payment Gift Card validation

        $("#regiPayGiftCardButtId").click(function (){
        	var result = true;
            var giftCodeValue = $("#regGiftCardCouponCodeId").val();          
          	if(giftCodeValue === ""){ 
          		alert("PLEASE ENTER YOUR GIFT CARD CODE IF YOU HAVE ONE.");
          	  	result=false; 
          	} else {      	  	
       	    	$("[name=payCardNumber]").val($("#payCardNumberId").val());
       	        $("[name=payExpMonth]").val($("#payExpMonthId").val());
       	        $("[name=payExpYear]").val($("#payExpYearId").val());
       	        $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
       	        $("[name=nameOnCard]").val($("#nameOnCardId").val());           	            
        	}          	  	
            return result;
            });
            
        $('#payCardNumberId').bind("cut copy paste",function(e) {
            e.preventDefault();
        });
 	});
 	
    </script>
	</head>
	
		<body>		
		<div id="mainframe" class="section-content">
        <div class="container">
        
        <div class="row" style="margin-top: -30px; padding: 10px;">
        	<div class="col-md-12 col-sm-12">
	        	<div align="left" class="regi_my_cart_for_guest_ht_dsp">PAYMENT INFO:</div>
	        </div> <!-- /.col-md-12 -->	                              
	 	</div> <!-- /.row -->
	 	
        <div class="row" style="margin-top: 0px; padding: 10px;">
        	<div class="col-md-12 col-sm-12">
        	<div class="service-item">                        
            	<div class="service-description">
            	            	            	
			        <div align="left">
			        <img src="resources/images/registry/credit_cards_image.png" class="img-responsive" style="margin-top: 0px;">
			        <div class="shpp_tbl_fld_disp" style="margin-top: 20px;">	
			        
			        	<c:if test="${not empty paymentValStatus}"> <tr><td align="left"><img src="resources/images/warning.gif" style="position: absolute;"> <font style="color: red; font: 1.1em/1.25em Georgia; letter-spacing: 2px;"> &nbsp;&nbsp;&nbsp;&nbsp; ${paymentReturnStatus}</font></td></tr> </c:if>
			        			        				        	
			        	<div align="left">
                                    <div class="shoop_text_dsp">NAME ON CARD:</div>
                                    <input type="text" name="nameOnCard" id="nameOnCardId" maxlength="50" class="regi_shpp_inp_box_dsp">
                                </div>
                                <div align="left">
                                    <div class="shoop_text_dsp">CARD NUMBER:</div>
                                    <input type="text" name="payCardNumber" maxlength="16" id="payCardNumberId"
                                           class="regi_shpp_inp_box_dsp" onkeypress="return numeralsOnly(event);"
                                           onchange="return getCreditCardType();">
                                </div>
                            </div>
			        				        	
			        	
                            <div align="left">
                                <div align="left">

                                    <div class="sec_rnd_exp_month_text_dsp">EXP MONTH:</div>
                                    <select name="payExpMonth" id="payExpMonthId" class="reg_pay_exp_month_display">
                                        <option value=''>------------Month------------</option>
                                        <option value='01'>January</option>
                                        <option value='02'>February</option>
                                        <option value='03'>March</option>
                                        <option value='04'>April</option>
                                        <option value='05'>May</option>
                                        <option value='06'>June</option>
                                        <option value='07'>July</option>
                                        <option value='08'>August</option>
                                        <option value='09'>September</option>
                                        <option value='10'>October</option>
                                        <option value='11'>November</option>
                                        <option value='12'>December</option>
                                    </select>
                                </div>
                                
                                <div align="left">
                                    <div class="sec_rnd_exp_year_text_dsp">EXP YEAR:</div>
                                    <select name="payExpYear" id="payExpYearId" class="reg_pay_exp_year_display">
                                        <option value=''>------------Year------------</option>                                        
                                    </select>
                                </div>
                                
                                <div align="left">
                                    <div class="sec_rnd_cvv_num_text_dsp">CVV NUMBER:</div>
                                    
                                    <input type="password" name="payCvvNumber" maxlength="4" id="payCvvNumberId"
                                           class="reg_pay_cvv_numb_display">
                                </div>
                            </div>
                            
                            <form action="registrantGiftCardPaymentInfo" method="POST">
                                <div class="sec_rn_gift_code_frm" style="margin-top: 40px;">
                                    <div class="promo-code">
                                        <div class="sr_pay_promo_text_dsp">GIFT CARD / PROMO CODE:</div>
                                        <input type="text" name="regGiftCardCouponCode" id="regGiftCardCouponCodeId" maxlength="8" class="reg_pack_pay_promo_gift_inpt_box">
                                    </div>
                                    <div align="left" style="margin-top: 20px;"><button class="reg_payment_apply_sub_Btn" id="regiPayGiftCardButtId">APPLY&nbsp; CODE</button></div>
                                    <div id="giftCardStatusId" style="display: none;">
                                        <div class="pay_promo_error_text" align="left" style="margin-top: 7px;"><p>THE CODE YOU ENTERED IS NOT VALID OR HAS
                                            ALREADY BEEN USED</p></div>
                                        <div></div>

                                    </div>
                                    <input type="hidden" name="payCardNumber"/>
							        <input type="hidden" name="payExpMonth"/>
							        <input type="hidden" name="payExpYear"/>
							        <input type="hidden" name="payCvvNumber"/>
							        <input type="hidden" name="nameOnCard"/>
                                </div>
                            </form>
			        	
                            </div>                          	
			        			        
         	   </div> <!-- /.service-description -->
            </div> <!-- /.service-item -->               
        </div> <!-- /.col-md-12 -->
        
        
	     	
	     	<div class="col-md-12 col-sm-12">
        	<div class="service-item">                        
            	<div class="service-description">
            	
            	<div align="left" style="padding-top: 0px;">
			        
			        <div class="reg_pay_est_pat_total">
			        	        
			        <table class="paymnt_prs_tble_adj">		        				        				        	
			        <tr> <td class="reg_spcart_pay_est_totl">TOTAL AMOUNT:</td> <td class="reg_pay_price_shp_tol">$${shoppingCartTotalAmountInSn}&nbsp;</td> </tr>
			        </table>
			        </div>
			        
			        <div class="regi_gp_tos_pp_total_txt_frame_dsp" style="margin-top: 25px;">
			        	<p class="reg_gp_tos_pp_total_txt_dsp" align="center">BY CLICKING 'SUBMIT ORDER', I CONFIRM THAT I HAVE READ AND AGREED TO NOOK+COVE'S <br><a href="registryTerms" class="reg_gp_tos_pp_txt_dsp">TERMS OF SERVICE</a> AND <a href="registryPrivacyPolicy" class="reg_gp_tos_pp_txt_dsp">PRIVACY POLICY</a>.</p>
			        </div>
			        
			        <form action="registrantCartPaymentPurchaseToGateway" name="myDesign" method="POST">					
			        <div align="center" class="top_adjustment_20"><h4><button class="reg_box_fund__gs_sub_Buttn" id="guestPaymentInfoButtId">SUBMIT ORDER</button></h4></div>
			        
			        <input type="hidden" name="payCardNumber"/>
			        <input type="hidden" name="payExpMonth"/>
			        <input type="hidden" name="payExpYear"/>
			        <input type="hidden" name="payCvvNumber"/>
			        <input type="hidden" name="nameOnCard"/>			        
			        			        		        
			        </form>
			        
			 	</div>
            	           	
			       
         	   </div> <!-- /.service-description -->
            </div> <!-- /.service-item -->               
        </div> <!-- /.col-md-12 -->
	             
        </div>
         
    	<div style="margin-top: -60px;"></div>		
		</div> </div>		     
		</body>
</html>