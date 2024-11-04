
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="nookandcove">
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon" />
		
	<style type="text/css">
	.regi_my_cart_for_guest_ht_dsp { font: bold 1.0em/1.25em Georgia; color: black; display: block; letter-spacing: 2px; min-width: 260px; margin: 0 auto; text-align: left; text-transform: uppercase; }
	.regi_billing_pay_div_info_txt_frm_dis { width: 260px; margin-top: 0px; border: 1px solid #999; padding: 25px 10px; }
	.reg_shop_cart_rn_editl_text_dsp { font: 0.85em/1.25em Georgia; letter-spacing: 2px; color: black; text-align: left; text-transform: uppercase; vertical-align: middle; margin-top: 10px; text-decoration: underline; outline: none; }
	
	.regi_billing_pay_tb_info_txt_frm_dis { width: 240px; }
	.regi_bill_pay_row_info_txt_dis { border-bottom: 1px solid #292929; font: 0.82em/1.25em Georgia; letter-spacing: 1px; color: black; }
	.regi_gf_pay_tbtext_dsp_dsp { font: bold 1.05em/1.25em Georgia; letter-spacing: 1px; color: black; padding-top: 18px; padding-bottom: 1px; }
	</style>
	
	</head>	
		<body>		
		<div id="mainframe" class="section-content"> <div class="container">        
        <div class="row" style="margin-top: -25px; padding: 6px;">        	
	    <div class="col-md-12 col-sm-12"> <div align="left" class="regi_my_cart_for_guest_ht_dsp">REVIEW &amp; PLACE ORDER:</div> </div>	        
	    <div class="col-md-12 col-sm-12" style="margin-top: 20px;"> <div align="left" class="rg_bill_rs_text_hd_dis">ORDER SUMMARY</div> </div> </div>		
		<form action="shopCheckoutPaymentInfo" method="post">
        <div class="row"> <div class="col-md-12 col-sm-12" style="margin-top: 20px; padding: 10px 20px;"> <div class="service-item"> <div class="service-description">	            	
	    <div align="left"> <div align="left" class="regi_my_cart_for_guest_ht_dsp">BILLING INFO&nbsp;&nbsp;&nbsp;<a href="shopCheckoutBillShippInfo"><font class="reg_shop_cart_rn_editl_text_dsp">EDIT</font></a></div>
	    <table style="margin-top: 20px;"> <tbody>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">${shopBillingFullName}</td> </tr>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">${shopBillingAddress1}&nbsp;${shopBillingAddress2}</td> </tr>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">${shopBillingCity},&nbsp;${shopBillingState}&nbsp;${shopBillingZip}</td> </tr>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">UNITED STATE</td> </tr>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">${shopUserEmail}</td> </tr> </tbody> </table>
		<div align="center" style="border-bottom: 1px solid black; width: 265px; margin-top: 30px; margin-bottom: 30px;"></div>
		<div align="left" class="regi_my_cart_for_guest_ht_dsp">SHIPPING INFO&nbsp;&nbsp;&nbsp;<a href="shopCheckoutBillShippInfo"><font class="reg_shop_cart_rn_editl_text_dsp">EDIT</font></a></div>
	    
	    <table style="margin-top: 20px;"> <tbody>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">${shopShippingFullName}</td> </tr>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">${shopShippingAddress1}&nbsp;${shopShippingAddress2}</td> </tr>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">${shopShippingCity},&nbsp;${shopShippingState}&nbsp;${shopShippingZip}</td> </tr>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">UNITED STATES</td> </tr>
		<tr> <td class="rg_bill_review_pl_ord_text_dis">${shopUserPhNumber}</td> </tr> </tbody> </table> </div> </div> </div> </div>
	     	
	    <div class="col-md-12 col-sm-12" style="margin-top: -20px;"> <div align="left" style="margin-left: 5px;">
	    <div><a href="shopShoppingCartInfoDisplay"><font class="reg_shop_cart_rn_editl_text_dsp">EDIT MY ORDER</font></a></div>
	    <div class="regi_billing_pay_div_info_txt_frm_dis" style="margin-top: 15px;">
		<table class="regi_billing_pay_tb_info_txt_frm_dis" style="margin-top: -15px;">
		<tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;SUBTOTAL:</td> <td class="reg_gpay_pad_botline_dsp" align="right">$${shopCartTotalProductStAmountInSn}&nbsp;</td></tr>
		<tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;5% DISCOUNT:</td> <td class="reg_gpay_pad_botline_dsp" align="right">($${defaultCouponPriceInSn})&nbsp;</td></tr>
		
		<!-- <tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;TAX:</td> <td class="reg_gpay_pad_botline_dsp" align="right">$${shoppingCartStateTaxStAmountInSn}&nbsp;</td></tr>
		<tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;SHIPPING:</td> <td class="reg_gpay_pad_botline_dsp" align="right">$${shoppingCartShippingStAmountInSn}&nbsp;</td></tr> -->
		
		<!-- <tr class="regi_bill_pay_row_info_txt_dis" align="left"><td class="reg_gpay_pad_botline_dsp">&nbsp;HANDLING FEES:</td> <td class="reg_gpay_pad_botline_dsp" align="right">$${shoppingCartHandlingFeeInSn}&nbsp;</td></tr> -->
		<tr><td align="left" class="regi_gf_pay_tbtext_dsp_dsp">&nbsp;TOTAL:</td> <td class="regi_gf_pay_tbtext_dsp_dsp" align="right">$${shopCartTotalPayableStAmountInSn}&nbsp;</td></tr> </table></div> </div> </div>
	     	
	    <div class="col-md-12 col-sm-12"> <div align="center">
	    <div style="margin-top: 25px;"><a href="registryShop"><font class="reg_shop_cart_rn_editl_text_dsp" style="position: relative; top: 10px;">KEEP SHOPPING</font></a></div>
		<div style="margin-top: 30px;"><h4><button class="reg_box_fund__gs_sub_Buttn" id="shopBillingAndShippingInfoButtonId">CONTINUE</button></h4></div>
		<div style="margin-top: 40px;"><img src="resources/images/registry/authorize_net_img.png" width="120" height="100"></div> </div> </div> </div>
        </form>
    	<div style="margin-top: -10px;"></div>	     		
		</div> </div>		     
		</body>
</html>