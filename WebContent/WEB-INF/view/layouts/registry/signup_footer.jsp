<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>    
    <head>        
    <meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>	
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico">    
</head>
	<body style="overflow-x: hidden">
		<div class="floating-label-form-group"> </div>
		<div class="site-footer mobile"> <div class="container"> <div class="row"> <div class="col-md-3 col-sm-6 col-xs-12"> <div class="service-item">
    	<div class="service-description"> <div class="footer-box-adj"> <div class="footer-links">        
		<ul> <li> <a href="home">REGISTRY HOME</a> </li>
		<li> <a href="findRegistry">FIND A REGISTRY</a> </li>
		<li> <a href="registryHowItWorks">HOW IT WORKS</a> </li>
		<li> <a href="registryBenefits">REGISTRY BENEFITS</a> </li>
		<li> <a href="lmDesignServices">DESIGN SERVICES</a> </li>
		<li> <a target="_blank" href="https://blog.nookandcove.com">BLOG</a> </li>
		<li> <a href="referralUserLogin">REFERRAL PROGRAM</a> </li> </ul>
		<div style="height: 5px;"></div> </div> </div> </div> </div> </div> 
        <div class="col-md-6 col-sm-6  col-xs-12"> <div class="service-item"> <div class="service-description"> <div class="footer-box-adj">
        <ul class="nc-footer-imgs">
        <li><a href="https://www.facebook.com/nookandcove" target="_blank"><img id="footer-icon-img" src="resources/images/social_media/facebook.png" width="40" height="40" onmouseover="this.src='resources/images/social_media/facebook_mo.png'" onmouseout="this.src='resources/images/social_media/facebook.png'" border="0" alt="facebook"></a></li>
        <li style="margin-left: 6px;"><a href="https://www.instagram.com/nookandcove" target="_blank"><img src="resources/images/social_media/instagram.png" width="40" height="40" onmouseover="this.src='resources/images/social_media/instagram_mo.png'" onmouseout="this.src='resources/images/social_media/instagram.png'" border="0" alt="instagram"></a></li>
        <li style="margin-left: 6px;"><a href="https://twitter.com/nookandcove" target="_blank"><img src="resources/images/social_media/twitter.png" width="40" height="40" onmouseover="this.src='resources/images/social_media/twitter_mo.png'" onmouseout="this.src='resources/images/social_media/twitter.png'" border="0" alt="twitter"></a></li>
        <li style="margin-left: 6px;"><a href="https://www.pinterest.com/nookandcove" target="_blank"><img src="resources/images/social_media/pinterest.png" width="40" height="40" onmouseover="this.src='resources/images/social_media/pinterest_mo.png'" onmouseout="this.src='resources/images/social_media/pinterest.png'" border="0" alt="pinterest"></a></li>
        </ul>
        <div class="footer-links"> <ul class="contact-footer"> <li> <a href="mailto:hello@nookandcove.com">HELLO@NOOKANDCOVE.COM</a> </li>
		<li> <a href="tel:+18885802030">(888) 488-4630</a> </li>
		<li> <a href="registryTerms">TERMS</a> </li>
		<li> <a href="registryPrivacyPolicy">PRIVACY POLICY</a> </li> </ul>
		<div style="height: 25px;"></div> </div> </div> </div> </div> </div> 
        <div class="col-md-3 col-sm-6 col-xs-12"> <div class="service-item"> <div class="service-description">                            
        <table><tr><td> <form action="createRegistry"> <h4><button class="footerSubmitBtn" style="width: 260px; height: 40px;">CREATE A REGISTRY</button></h4> </form> </td></tr>
		<tr><td> <form action="findRegistry"> <h4><button class="footerSubmitBtn" style="width: 260px; height: 40px;">FIND A REGISTRY</button></h4> </form> </td></tr>
		<tr><td align="center"> <a href="home"><img src="resources/images/social_media/registry_small_logo.png" class="ft_logo_adj img-responsive" alt="nookandcove"></a> </td></tr> </table>
		 </div> </div> </div> </div> </div> </div>
    
    	<script>
  		window.addEventListener('load',function(){
    	jQuery('#letsDoThisReffId').click(function(){
      	gtag('event', 'conversion', {'send_to': 'AW-942606255/5vw7CNSPxfACEK-PvMED'}); 
    	});
  		});
		</script>    
   	
    <script>
  window.addEventListener('load', function() {
    if (window.location.href.indexOf('/shopPaymentSuccess') != -1) {
      var totalValue = jQuery('div.service-description:contains("TOTAL PAYMENT")').text().split(':')[1].replace(/[^0-9.]/g, '');
      var ordeID = jQuery('div.service-description:contains("ORDER NUMBER")').text().split(':')[1].trim()
      gtag('event', 'conversion', {
        'send_to': 'AW-942606255/aYP0CK7gl-ADEK-PvMED',
        'value': parseFloat(totalValue),
        'currency': 'USD',
        'transaction_id': ordeID
      });

    }

    if (window.location.pathname.includes("/registrentInfoSaving")) {
      gtag('event', 'conversion', {
        'send_to': 'AW-942606255/kAMVCJ3Dl-ADEK-PvMED'
      });
    }
  });
</script>
	</body>
</html>