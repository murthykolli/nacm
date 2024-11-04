
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<style type="text/css">
	.reg_pay_est_pat_total { background: #e8e8e8; min-height: 60px; height: auto; width: 260px; padding: 25px 15px; }
	.regi_gp_tos_pp_total_txt_frame_dsp { width: 260px; padding: 10px; }
	.reg_spcart_pay_est_totl { font: 0.9em/2.5em Georgia; letter-spacing: 1px; color: black; text-align: left; text-transform: uppercase; }
	.reg_pay_price_shp_tol { font: bold 1.0em/2.5em Georgia; letter-spacing: 1px; color: black; text-align: left; text-transform: uppercase; }
	.reg_paymnt_prs_tbl_adj { width: 240px; }
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
	 		 		    
        <div class="row" style="padding: 10px;">
        	
	        <div class="col-md-12 col-sm-12">
        	<div class="service-item">                        
            	<div class="service-description">
			        <div align="left" style="margin-top: 25px;">
			        		
                            <!-- <form action="registrantGiftCardPaymentInfo">
                                <div class="sec_rn_gift_code_frm">
                                    <div class="promo-code">
                                        <div class="sr_pay_promo_text_dsp">GIFT CARD:</div>
                                        <input type="text" name="regGiftCardCouponCode" id="regGiftCardCouponCodeId" maxlength="8" class="pack_pay_promo_and_gift_inpt_box">
                                    </div>
                                    <button class="payment_apply_sub_Btn" id="regiPayGiftCardButtId">APPLY&nbsp; CODE</button>
                                    <div id="giftCardStatusId" style="display: none;">
                                        <div class="pay_promo_error_text"><p>THE CODE YOU ENTERED IS NOT VALID OR HAS
                                            ALREADY BEEN USED</p></div>
                                        <div></div>

                                    </div>
                                    <input type="hidden" name="payCardNumber"/>
							        <input type="hidden" name="payExpMonth"/>
							        <input type="hidden" name="payExpYear"/>
							        <input type="hidden" name="payCvvNumber"/>
							        <input type="hidden" name="nameOnCard"/>
                                </div>
                            </form> -->
			        	
                            </div>                          	
			        			        
         	   </div> <!-- /.service-description -->
            </div> <!-- /.service-item -->               
        </div> <!-- /.col-md-12 -->
        
        
	     	
	     	<div class="col-md-12 col-sm-12">
        	
            	<div align="left" style="margin-top: -30px;">
			        
			        <div class="reg_pay_est_pat_total">
			        
			        <table class="reg_paymnt_prs_tbl_adj">
			        <tr style="height: 15px; width: 240px;"><td></td><td></td></tr>
			       	<tr> <td align="left" class="reg_spcart_pay_est_totl">TOTAL:</td> <td align="right" class="reg_pay_price_shp_tol">$${shoppingCartTotalAmountInSn}&nbsp;</td> </tr>
                    <tr> <td align="left" class="reg_spcart_pay_est_totl">GIFT CARD:</td> <td align="right" class="reg_pay_price_shp_tol">$${giftCardPrice}&nbsp;</td> </tr>
                    
                   <tr style="height: 10px; width: 240px;"><td></td><td></td></tr>
                   <tr style="background: black; height: 1px; width: 240px; position: relative;"><td></td><td></td></tr>
                   <tr style="height: 10px; width: 240px;"><td></td><td></td></tr>
                                                                           
                    <tr> <td align="left" class="reg_spcart_pay_est_totl">TOTAL AMOUNT:</td> <td align="right" class="reg_pay_price_shp_tol">$${totalPaybleAmount}&nbsp;</td> </tr>		        	
			        </table>
			        
			        </div>
			        
			        <div class="regi_gp_tos_pp_total_txt_frame_dsp" style="margin-top: 25px;">
			        	<p class="reg_gp_tos_pp_total_txt_dsp">BY CLICKING 'SUBMIT ORDER', I CONFIRM THAT <br>I HAVE READ AND AGREED TO NOOK+COVE'S <br><a href="registryTerms" class="reg_gp_tos_pp_txt_dsp">TERMS OF SERVICE</a> AND <a href="registryPrivacyPolicy" class="reg_gp_tos_pp_txt_dsp">PRIVACY POLICY</a>.</p>
			        </div>
			        			        
			        <form action="registrantGiftCardZeroPaymentPurchaseToGateway" name="myDesign" method="POST">					
			        <div align="center" class="top_adjustment_20"><h4><button class="reg_box_fund__gs_sub_Buttn" id="guestPaymentInfoButtId">SUBMIT ORDER</button></h4></div>
			        
			        <input type="hidden" name="payCardNumber"/>
			        <input type="hidden" name="payExpMonth"/>
			        <input type="hidden" name="payExpYear"/>
			        <input type="hidden" name="payCvvNumber"/>
			        <input type="hidden" name="nameOnCard"/>			        
			        <input type="hidden" name="giftCardPrice" value="${giftCardPrice}"/>
			        <input type="hidden" name="totalPaybleAmount" value="${shoppingCartTotalAmountStInSn}"/>
			        <input type="hidden" name="regGiftCardCouponCode" value="${regGiftCardCouponCode}"/>			        
			        </form>
			        
			        </div>
            	       
        </div> <!-- /.col-md-12 -->
	     	       
        </div>
         
          
    	<div style="margin-top: 0px;"></div>		
		</div> </div>		     
		</body>
</html>