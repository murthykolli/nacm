
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="resources/js/reg_guest_billing_validation.js" ></script>
	
	<style type="text/css">
	.regi_billing_inp_box_dsp { border: 1px solid black; background: white; width: 260px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.regi_billing_ib_state_dsp { background: white; border: 1px solid black; width: 260px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.regi_shpp_inp_box_state { background: white; border: 1px solid black; width: 260px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.regi_billing_ib_zip_dsp { border: 1px solid black; background: white; width: 260px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.regi_billing_ib_country_dsp { border: 1px solid black; background: white; width: 260px; height: 30px; font: bold 0.96em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.regi_shpp_inp_box_zip { border: 1px solid black; background: white; width: 260px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.regi_shpp_inp_box_country_dsp { border: 1px solid black; background: white; width: 260px; height: 30px; font: bold 0.96em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.regi_billing_textf_dis { font: 0.9em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; text-transform: uppercase; margin-top: 0px; padding-bottom: 5px; padding-left: 5px; padding-top: 15px; }
	.regi_shop_text_dsp { font: 0.95em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; text-transform: uppercase; margin-top: 0px; padding-bottom: 5px; padding-left: 5px; padding-top: 15px; }
	.reg_billing_check_with_sa_text { font: 0.95em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; text-transform: uppercase; margin-top: 0px; }
	.reg_billing_check_with_sa_frame_adj { position: relative; top: 0px; left: 10px; }
	.reg_shop_cart_rn_editl_text_dsp { font: 0.85em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; text-transform: uppercase; vertical-align: middle; margin-top: 10px; text-decoration: underline; outline: none; }
	.regi_billing_pay_div_info_txt_frm_dis { width: 260px; margin-top: 0px; border: 1px solid #999; padding: 25px 10px; }
	.regi_shpp_inp_box_dsp { border: 1px solid black; background: white; width: 260px; height: 30px; font: 1em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; margin-top: 0px; }
	.regi_billing_pay_tb_info_txt_frm_dis { width: 240px; }
	.regi_bill_pay_row_info_txt_dis { border-bottom: 1px solid #292929; font: 0.82em/1.25em Georgia; letter-spacing: 1px; color: black; }
	.regi_gf_pay_tbtext_dsp_dsp { font: bold 1.05em/1.25em Georgia; letter-spacing: 1px; color: black; padding-top: 18px; padding-bottom: 1px; }
	.regi_my_cart_for_guest_ht_dsp { font: bold 1.05em/1.25em Georgia; color: black; display: block; letter-spacing: 2px; min-width: 200px; margin: 0 auto; text-align: left; text-transform: uppercase; }
	.regi_billing_tbl_fld_disp { width: 260px; margin-top: 0px; }
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function() { 		
	    var billNameOnCard1 = "<c:out value="${billNameOnCard}"/>";
	    var billAddress10 = "<c:out value="${billAddress1}"/>";
	    var billAddress20 = "<c:out value="${billAddress2}"/>";
	    var billCity1 = "<c:out value="${billCity}"/>";
	    var billState1 = "<c:out value="${billState}"/>";
	    var billZip1 = "<c:out value="${billZip}"/>";
	    var billCountry1 = "<c:out value="${billCountry}"/>";
	    var guestEmail1 = "<c:out value="${guestEmail}"/>";
	    var guestPhNumber1 = "<c:out value="${guestPhNumber}"/>";
	    
 	 	if(billNameOnCard1 != "") {
 	 		$("[name=billNameOnCard]").val(billNameOnCard1);
 	 		$("[name=billAddress1]").val(billAddress10);
 	 		$("[name=billAddress2]").val(billAddress20);
 	 		$("[name=billCity]").val(billCity1);
 	 		$("[name=billState]").val(billState1);
 	 		$("[name=billZip]").val(billZip1);
 	 		$("[name=billCountry]").val(billCountry1);
 	 		$("[name=guestEmail]").val(guestEmail1);
 	 		$("[name=guestPhNumber]").val(guestPhNumber1);
 	 	}
 	 	

 	    var shipFullName1 = '<c:out value="${shipFullName}"/>';
 	    var shipAddress01 = '<c:out value="${shipAddress1}"/>';
 	    var shipAddress02 = '<c:out value="${shipAddress2}"/>';
 	    var shipCity1 = '<c:out value="${shipCity}"/>';
 	    var shipState1 = '<c:out value="${shipState}"/>';
 	    var shipZip1 = '<c:out value="${shipZip}"/>';    
 	    var shipPhNumber1 = '<c:out value="${shipPhNumber}"/>';
 	   	var checkBoxStatus1 = '<c:out value="${checkBoxStatus}"/>';
 	    
 	    $("[name=shipFullName]").val(shipFullName1);
 	    $("[name=shipAddress1]").val(shipAddress01);
 	    $("[name=shipAddress2]").val(shipAddress02);
 	    $("[name=shipCity]").val(shipCity1);
 	    $("[name=shipState]").val(shipState1);
 	    $("[name=shipZip]").val(shipZip1);    
 	    $("[name=shipPhNumber]").val(shipPhNumber1);
 	   	if(checkBoxStatus1 === "on"){$("#chkCopyBill").attr("checked",true);}
 	});
    </script>
 	
	</head>
	
		<body>		
		<div id="mainframe" class="section-content">
        <div class="container">
        
        <div class="row" style="margin-top: -30px; padding: 6px;">
        	
	        <div class="col-md-12 col-sm-12">
	        	<div align="left" class="regi_my_cart_for_guest_ht_dsp">BILLING INFO</div>
	        </div> <!-- /.col-md-12 -->
	        
	        <div class="col-md-12 col-sm-12" style="margin-top: 20px;">	        	
	            <div align="left" class="rg_bill_rs_text_hd_dis">ORDER SUMMARY</div>
	        </div> <!-- /.col-md-12 -->
	                              
	        </div> <!-- /.row -->
	        
        <form action="registrantBillingInfoSaving" method="post">
        <div class="row top_adjustment_10">
        	<div class="col-md-12 col-sm-12">
<!-- Billing Address -->
	        <div class="row" style="margin-top: 0px; padding: 6px;">
		        <div class="col-md-12 col-sm-12">
		        	<div class="service-item">                        
		            	<div class="service-description">	            	
		        			<div align="left">
		        			
			        			<table class="regi_billing_tbl_fld_disp">
						        	
						        	<tr>
						        		<td class="regi_billing_textf_dis">FULL NAME*:</td>
						        	</tr>
						        	<tr>
						        		<td><input type="text" name="billNameOnCard" id="billNameOnCardId" class="regi_billing_inp_box_dsp"></td>
						        	</tr>
						        	
						        	<tr>
						        		<td class="regi_billing_textf_dis">ADDRESS 1*:</td>
						        	</tr>
						        	<tr>
						        		<td><input type="text" name="billAddress1" id="billAddress1Id" class="regi_billing_inp_box_dsp"></td>
						        	</tr>
						        	
						        	<tr>
						        		<td class="regi_billing_textf_dis">ADDRESS 2:</td>
						        	</tr>
						        	<tr>
						        		<td><input type="text" name="billAddress2" id="billAddress2Id" class="regi_billing_inp_box_dsp"></td>
						        	</tr>
						        	
						        	<tr>
						        		<td class="regi_billing_textf_dis">CITY*:</td>
						        	</tr>
						        	<tr>
						        		<td><input type="text" name="billCity" id="billCityId" class="regi_billing_inp_box_dsp"></td>
						        	</tr>
						        	
						        	<tr>
						        		<td class="regi_billing_textf_dis">STATE*:</td> 
						        	</tr>
						        	<tr>
						        		<td><select name="billState" id="billStateId" class="regi_billing_ib_state_dsp"> <option value="">------State Name------</option><option value="Alabama">Alabama</option><option value="Alaska">Alaska</option><option value="Arizona">Arizona</option><option value="Arkansas">Arkansas</option><option value="California">California</option><option value="Colorado">Colorado</option><option value="Connecticut">Connecticut</option><option value="Delaware">Delaware</option><option value="District of Columbia">District of Columbia</option><option value="Florida">Florida</option><option value="Georgia">Georgia</option><option value="Hawaii">Hawaii</option><option value="Idaho">Idaho</option><option value="Illinois">Illinois</option><option value="Indiana">Indiana</option><option value="Iowa">Iowa</option><option value="Kansas">Kansas</option><option value="Kentucky">Kentucky</option><option value="Louisiana">Louisiana</option><option value="Maine">Maine</option><option value="Maryland">Maryland</option><option value="Massachusetts">Massachusetts</option><option value="Michigan">Michigan</option><option value="Minnesota">Minnesota</option><option value="Mississippi">Mississippi</option><option value="Missouri">Missouri</option><option value="Montana">Montana</option><option value="Nebraska">Nebraska</option><option value="Nevada">Nevada</option><option value="New Hampshire">New Hampshire</option><option value="New Jersey">New Jersey</option><option value="New Mexico">New Mexico</option><option value="New York">New York</option><option value="North Carolina">North Carolina</option><option value="North Dakota">North Dakota</option><option value="Ohio">Ohio</option><option value="Oklahoma">Oklahoma</option><option value="Oregon">Oregon</option><option value="Pennsylvania">Pennsylvania</option><option value="Rhode Island">Rhode Island</option><option value="South Carolina">South Carolina</option><option value="South Dakota">South Dakota</option><option value="Tennessee">Tennessee</option><option value="Texas">Texas</option><option value="Utah">Utah</option><option value="Vermont">Vermont</option><option value="Virginia">Virginia</option><option value="Washington">Washington</option><option value="West Virginia">West Virginia</option><option value="Wisconsin">Wisconsin</option><option value="Wyoming">Wyoming</option></select></td>
						        	</tr>
						        	
						        	
						        	<tr>
						        		<td class="regi_billing_textf_dis">ZIP*:</td>
						        	</tr>
						        	<tr>
						        		<td><input type="text" name="billZip" maxLength="5" id="billZipId" class="regi_billing_ib_zip_dsp" onkeypress="return numeralsOnly(event);"></td>
						        	</tr>
						        	
						        	<tr>
						        		<td class="regi_billing_textf_dis">COUNTRY:</td>
						        	</tr>
						        	<tr>
						        		<td><input type="text" name="billCountry" id="billCountryId" value="UNITED STATES" class="regi_billing_ib_country_dsp"></td>
						        	</tr>
						        	
						        	<tr>
						        		<td class="regi_billing_textf_dis">PHONE NUMBER*:</td>
						        	</tr>
						        	<tr>
						        		<td><input type="text" name="guestPhNumber" maxLength="12" id="billPhNumberId" class="regi_billing_inp_box_dsp" onchange="return phoneFormat (event,billPhNumberId);" onkeydown="return numeralsOnly(event);" onkeyup="return phoneFormat (event,billPhNumberId)" onkeypress="return numeralsOnly(event);"></td>
						        	</tr>
						        	
					        	</table>
					        	    			
							</div>						
		        		</div>	        		
		        	</div>
		    	</div>
	        </div>
	        	
<!-- Shipping Address -->

			<div class="row" style="margin-top: -20px; padding: 6px;">
				<div class="col-md-12 col-sm-12">
		        	<div align="left" class="regi_my_cart_for_guest_ht_dsp">SHIPPING INFO</div>
		        </div> <!-- /.col-md-12 -->
			</div>
		        
	        <div class="row" style=" padding: 6px;">
		        <div class="col-md-12 col-sm-12">
		        	<div class="service-item">                        
		            	<div class="service-description">
					        <div align="left">
					        <table style="margin-top: 20px;">
					        	<tr>
					        		<td class="reg_billing_check_with_sa_text"><input type="checkbox" name="checkbox" id="chkCopyBill"><font class="reg_billing_check_with_sa_frame_adj">Billing Address is same as Shipping Address</font></td>
					        	</tr>
					        </table>	
					        	
					        <table style="margin-top: 20px;">
					        						        	
					        	<tr>
					        		<td class="regi_shop_text_dsp">FULL NAME*:</td>
					        	</tr>
					        	<tr>
					        		<td><input type="text" name="shipFullName" id="shipFullNameId" class="regi_shpp_inp_box_dsp"></td>
					        	</tr>
					        	
					        	<tr>
					        		<td class="regi_shop_text_dsp">ADDRESS 1*:</td>
					        	</tr>
					        	<tr>
					        		<td><input type="text" name="shipAddress1" id="shipAddress1Id" class="regi_shpp_inp_box_dsp"></td>
					        	</tr>
					        	
					        	<tr>
					        		<td class="regi_shop_text_dsp">ADDRESS 2:</td>
					        	</tr>
					        	<tr>
					        		<td><input type="text" name="shipAddress2" id="shipAddress2Id" class="regi_shpp_inp_box_dsp"></td>
					        	</tr>
					        	
					        	<tr>
					        		<td class="regi_shop_text_dsp">CITY*:</td>
					        	</tr>
					        	<tr>
					        		<td><input type="text" name="shipCity" id="shipCityId" class="regi_shpp_inp_box_dsp"></td>
					        	</tr>
					        	
					        	<tr>
					        		<td class="regi_shop_text_dsp">STATE*:</td>
					        	</tr>
					        	<tr>
					        		<td><select name="shipState" id="shipStateId" class="regi_shpp_inp_box_state"> <option value="">------State Name------</option><option value="Alabama">Alabama</option><option value="Alaska">Alaska</option><option value="Arizona">Arizona</option><option value="Arkansas">Arkansas</option><option value="California">California</option><option value="Colorado">Colorado</option><option value="Connecticut">Connecticut</option><option value="Delaware">Delaware</option><option value="District of Columbia">District of Columbia</option><option value="Florida">Florida</option><option value="Georgia">Georgia</option><option value="Hawaii">Hawaii</option><option value="Idaho">Idaho</option><option value="Illinois">Illinois</option><option value="Indiana">Indiana</option><option value="Iowa">Iowa</option><option value="Kansas">Kansas</option><option value="Kentucky">Kentucky</option><option value="Louisiana">Louisiana</option><option value="Maine">Maine</option><option value="Maryland">Maryland</option><option value="Massachusetts">Massachusetts</option><option value="Michigan">Michigan</option><option value="Minnesota">Minnesota</option><option value="Mississippi">Mississippi</option><option value="Missouri">Missouri</option><option value="Montana">Montana</option><option value="Nebraska">Nebraska</option><option value="Nevada">Nevada</option><option value="New Hampshire">New Hampshire</option><option value="New Jersey">New Jersey</option><option value="New Mexico">New Mexico</option><option value="New York">New York</option><option value="North Carolina">North Carolina</option><option value="North Dakota">North Dakota</option><option value="Ohio">Ohio</option><option value="Oklahoma">Oklahoma</option><option value="Oregon">Oregon</option><option value="Pennsylvania">Pennsylvania</option><option value="Rhode Island">Rhode Island</option><option value="South Carolina">South Carolina</option><option value="South Dakota">South Dakota</option><option value="Tennessee">Tennessee</option><option value="Texas">Texas</option><option value="Utah">Utah</option><option value="Vermont">Vermont</option><option value="Virginia">Virginia</option><option value="Washington">Washington</option><option value="West Virginia">West Virginia</option><option value="Wisconsin">Wisconsin</option><option value="Wyoming">Wyoming</option></select></td>
					        	</tr>
					        	
					        	<tr>
					        		<td class="regi_shop_text_dsp">ZIP*:</td>
					        	</tr>
					        	<tr>
					        		<td><input type="text" name="shipZip" maxLength="5" id="shipZipId" class="regi_shpp_inp_box_zip" onkeypress="return numeralsOnly(event);"></td>
					        	</tr>
					        	
					        	<tr>
					        		<td class="regi_shop_text_dsp">COUNTRY:</td>
					        	</tr>
					        	<tr>
					        		<td><input type="text" name="shipCountry" id="shipCountryId" value="UNITED STATES" class="regi_shpp_inp_box_country_dsp"></td>
					        	</tr>
					        	
					        	<tr>
					        		<td class="regi_shop_text_dsp">PHONE NUMBER*:</td>
					        	</tr>
					        	<tr>
					        		<td><input type="text" name="shipPhNumber" maxLength="12" id="shipPhNumberId" class="regi_shpp_inp_box_dsp" onchange="return phoneFormat (event,shipPhNumberId);" onkeydown="return numeralsOnly(event);" onkeyup="return phoneFormat (event,shipPhNumberId)" onkeypress="return numeralsOnly(event);"></td>
					        	</tr>
					        </table>
					        </div>
					        
		         	   </div> <!-- /.service-description -->
		            </div> <!-- /.service-item -->               
		        </div> <!-- /.col-md-12 -->
        	</div>
	        	
	     	</div>
	     	
	     	<div class="col-md-12 col-sm-12" style="margin-top: 0px; padding: 6px;">
	        	<div align="left" style="margin-left: 15px;">
	        		<div><a href="registrantShoppingCartDisplay"><font class="reg_shop_cart_rn_editl_text_dsp">EDIT MY ORDER</font></a></div>
	        		<div class="regi_billing_pay_div_info_txt_frm_dis" style="margin-top: 15px;">
				    <table class="regi_billing_pay_tb_info_txt_frm_dis" style="margin-top: -15px;">
				    	<tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;SUBTOTAL:</td> <td class="reg_gpay_pad_botline_dsp" align="right">$${shoppingCartSubTotalAmountInSn}&nbsp;</td></tr>
				    	<tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;5% DISCOUNT:</td> <td class="reg_gpay_pad_botline_dsp" align="right">($${defaultCouponPriceInSn})&nbsp;</td></tr>
					   	
					   	<!-- <tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;TAX:</td> <td class="reg_gpay_pad_botline_dsp" align="right">$${shoppingCartStateTaxFeeInSn}&nbsp;</td></tr>
					   	<tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;SHIPPING:</td> <td class="reg_gpay_pad_botline_dsp" align="right">$${shoppingCartShippingFeeInSn}&nbsp;</td></tr> -->
					   	
					   	<!-- <tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;HANDLING FEES:</td> <td class="reg_gpay_pad_botline_dsp" align="right">$${shoppingCartHandlingFeeInSn}&nbsp;</td></tr> -->
					   	<tr><td align="left" class="regi_gf_pay_tbtext_dsp_dsp">&nbsp;TOTAL:</td> <td class="regi_gf_pay_tbtext_dsp_dsp" align="right">$${shoppingCartTotalAmountInSn}&nbsp;</td></tr>
				    </table></div>
				    
	        	</div>
	     	</div>
	     	
	     	<div class="col-md-12 col-sm-12" style="margin-top: 10px; padding: 6px;">
	        	<div align="center">
	        		<div><a href="registrantShoppingCartDisplay"><font class="reg_shop_cart_rn_editl_text_dsp">EDIT MY ORDER</font></a></div>
	        			        			
	        		<div style="margin-top: 15px;"><a href="registryOverview"><font class="reg_shop_cart_rn_editl_text_dsp" style="position: relative; top: 10px;">KEEP SHOPPING</font></a></div>
					<div style="margin-top: 30px;"><h4><button class="reg_box_fund__gs_sub_Buttn" id="regiBillAndShipInfoButtonId">REVIEW ORDER</button></h4></div>
					    	
					<div style="margin-top: 40px;"><img src="resources/images/registry/authorize_net_img.png" width="120" height="100"></div>					    	
	        			
	        	</div>
	     	</div>
	     	      
        </div>
        </form>        			
		   
        <div style="margin-top: -20px;"></div>		
		</div> </div>		     
		</body>
</html>