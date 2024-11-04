
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
	.regi_gp_tos_pp_total_txt_frame_dsp { width: 260px; padding: 10px; }
	.reg_spcart_pay_est_totl { font: 0.9em/1.25em Georgia; letter-spacing: 1px; color: black; text-align: left; text-transform: uppercase; }
	.reg_pay_price_shp_tol { font: bold 1.0em/1.25em Georgia; letter-spacing: 1px; color: black; text-align: left; text-transform: uppercase; }
	.reg_pay_est_pat_total { background: #e8e8e8; min-height: 60px; height: auto; width: 260px; padding: 25px 10px; }
	.paymnt_prs_tble_adj { width: 260px; }
	.regi_my_cart_for_guest_ht_dsp { font: bold 1.05em/1.25em Georgia; color: black; display: block; letter-spacing: 2px; min-width: 200px; margin: 0 auto; text-align: left; text-transform: uppercase; }
	
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function() { 		
 		var totalFundsAmount1 = '<c:out value="${totalFundsAmountInSn}"/>';
 		var totalPayableAmount1 = '<c:out value="${totalPayableAmountInSn}"/>';
 	    var totFundsAmount = totalFundsAmount1.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
 	    $("#totalFundsAmountId").html(totFundsAmount);
 	   	var totPayableAmount = totalPayableAmount1.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	    $("#totalPayableAmountId").html(totPayableAmount);
	       
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

        $('#payCardNumberId').bind("cut copy paste",function(e) {
            e.preventDefault();
        });
 	});
    </script>
	</head>
	
		<body style="overflow-x: hidden">
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
                                        <option value=''>---Month---</option>
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
                                        <option value=''>----Year----</option>                                        
                                    </select>
                                </div>
                                                                
                                <div align="left">
                                    <div class="sec_rnd_cvv_num_text_dsp">CVV NUMBER:</div>
                                    
                                    <input type="password" name="payCvvNumber" maxlength="4" id="payCvvNumberId"
                                           class="reg_pay_cvv_numb_display">
                                </div>
                            </div>
			        	
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
			        	<tr>
			        		<td class="reg_spcart_pay_est_totl">TOTAL AMOUNT:</td> <td class="reg_pay_price_shp_tol">$${totalPayableAmountSt}&nbsp;</td>
			        	</tr>
			        </table>
			        </div>
			        
			        <div class="regi_gp_tos_pp_total_txt_frame_dsp" style="margin-top: 25px;">
			        	<p class="reg_gp_tos_pp_total_txt_dsp" align="center">BY CLICKING 'SUBMIT ORDER', I CONFIRM THAT <br>I HAVE READ AND AGREED TO NOOK+COVE'S <br><a href="#" class="reg_gp_tos_pp_txt_dsp">TERMS OF SERVICE</a> AND <a href="#" class="reg_gp_tos_pp_txt_dsp">PRIVACY POLICY</a>.</p>
			        </div>
			        
			        <form action="guestCartPaymentPurchaseToGateway" name="myDesign" method="POST">					
			        <div class="top_adjustment_20"><h4><button class="reg_box_fund__gs_sub_Buttn" id="guestPaymentInfoButtId">SUBMIT ORDER</button></h4></div>
			        
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
          
    	<div style="margin-top: -50px;"></div>	
		</div> </div>		     
		</body>
</html>