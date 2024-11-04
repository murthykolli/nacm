<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> 
<![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="en"> 
<![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
    <meta name="author" content="nookandcove">
    <meta http-equiv="refresh" content="<%= session.getMaxInactiveInterval()%>;url=registrantSessionTimeOut" />
    <meta name="google-site-verification" content="_sQVDlCJ6aFkqAoNhHqtnJvUQ1Z5M6PkJJly8qe4ZyQ" />
    
    <!-- CSS Bootstrap & Custom -->
    <link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="resources/css/main_css/nookandcove-main.css">
    <link rel="stylesheet" href="resources/css/main_css/font-awesome.min.css">
        
    <!-- Favicons -->
    <link rel="shortcut icon" href="resources/images/ico/favicon.ico" type="image/x-icon" />
    
    <!-- JavaScripts -->
    <script src="resources/js/main_js/jquery-1.10.2.min.js"></script>
    <!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
        </div>
    <![endif]-->    
    
    <!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-NTF9B88');</script>
	<!-- End Google Tag Manager -->
	
    <script type="text/javascript">
    $(document).ready(function(){
    var totalRegCartItemsCount = "<c:out value="${regTotalCartItems}"/>";
    
        if(totalRegCartItemsCount > 0){
        	$("#regCartValueDisp").show();
        	$("#mobCartValueDisp").show();
        } else {
        	$("#regCartValueDisp").hide();
        	$("#mobCartValueDisp").hide();
        }
    });
    </script>
        
	<style type="text/css">
	@font-face { font-family: 'Allura-Regular'; src: url('resources/sitefonts/Allura-Regular.ttf') format('truetype'); }
	@font-face { font-family: 'CochocibScriptLatinPro'; src: url('resources/sitefonts/CochocibScriptLatinPro.otf') format('truetype'); }
	.reg_logo_text_font { font: bold 0.9em CochocibScriptLatinPro; color: black;letter-spacing: 0px; text-transform: capitalize; left: 40px; top: -15px; position: relative; white-space: nowrap; }
	.reg_home_logo_text_disply { font: 1.3em Allura-Regular; text-align: center; letter-spacing: 0px; color: black; text-transform: capitalize; margin-left: -16px; }
	.dropdown_sub_menu { position: absolute; top: 90%; left: -10%; z-index: 1000; display: none; float: left; min-width: 200px; height: 70px; padding: 5px 0px; margin: 2px 0px 0; list-style: none; background-color: white; -webkit-box-shadow: 0px 1px 1px #999; -moz-box-shadow: 0px 1px 1px #999; box-shadow: 0px 1px 1px #999; }
	.dropdown_sub_menu>li>a { display: block; padding: 3px 5px; clear: both; text-align: left; line-height: 2; white-space: nowrap; text-decoration: none; }
	li:hover .dropdown_sub_menu{ display: block; }
	.regMobNameDisplay { margin-left: 20px; color: black; font: bold 1em/1.25em Georgia; letter-spacing: 1px;}
	.responsive-menu .menu ul li a { color: black; padding: 10px 20px; display: block; -webkit-border-radius: 0; border-radius: 0; }
	
	#roundShapsOutDspId { position: relative; top: -37px; left: -5px; width: 40px; color: black; text-align: center; margin: 0 auto; display: inline-block; z-index: 1000; }
	</style>
	
	<!-- Global site tag (gtag.js) - Google Ads: 942606255 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-942606255"></script>
	<script>
  	window.dataLayer = window.dataLayer || [];
  	function gtag(){dataLayer.push(arguments);}
  	gtag('js', new Date());
  	gtag('config', 'AW-942606255');
	</script>
	
</head>

<body style="overflow-x: hidden">

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NTF9B88"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div id="home">
        <div class="site-header">
            <div class="top-header" >                
            </div> <!-- /.top-header -->
            <div class="main-header">
                <div class="container">
	                <div class="row">
	                        <div class="col-md-7 col-sm-7 col-xs-7">
	                            <div class="logo">
	                                <h1><a href="home" title="Nook and Cove Registry">
	                                <img src="resources/images/mobile_logo.png" alt="nookandcove registry" class="img-responsive" style="margin-top: -5px;"> <font class="reg_logo_text_font">Shop &amp; Registry</font> </a></h1>
	                            </div> <!-- /.logo -->
	                        </div> <!-- /.col-md-7 -->
	                        
	                        <div class="col-md-3 col-sm-3 col-xs-3">
		                        <div align="right" style="margin-left: 30px; margin-top: 10px;"><a href="registrantShoppingCartDisplay"><img src="resources/images/payment_mob_cart_img.png" alt="shoppingcart"> <font id="roundShapsOutDspId"><span id="regCartValueDisp" style="display: none;"><font id="regCartCountDesktopId">${regTotalCartItems}</font></span></font></a></div>
	                        </div>	                        	                        
	                    </div>
                    
                    <div class="responsive-menu text-right visible-xs visible-sm">
                        <a href="#" class="toggle-menu fa fa-bars"></a>
                        <div class="menu">
                            <ul>
                            <li style="height: 30px;"></li>
                            	<li>
								<a href="registrantShoppingCartDisplay"><img src="resources/images/payment_cart_img.jpg" alt="shoppingcart"> <font id="roundShapId"><span id="mobCartValueDisp" style="display: none;"><font id="regCartCountMobileId">${regTotalCartItems}</font></span></font></a>
								</li>
								                            	 
                            	<li><a href="registryOverview">MY REGISTRY</a></li>
                                <li><a href="registryMyAccount">MY ACCOUNT</a></li>
                                <li class="current"> <a href="#">LEARN MORE</a></li>
				          			<li><a href="registryHowItWorks" style="margin-left: 20px;">HOW IT WORKS</a></li>
			            			<li><a href="registryBenefits" style="margin-left: 20px;">REGISTRY BENEFITS</a></li>
			            			<li><a href="lmDesignServices" style="margin-left: 20px;">DESIGN SERVICES</a></li>
                                
                            	<li><font class="regMobNameDisplay" id="regFullNameDis">${regFirstNames}</font></li>
                                <li><a href="regLogOut">SIGN OUT</a></li>
                                <li style="height: 30px;"></li>
                           </ul>
                        </div> <!-- /.menu -->
                    </div> <!-- /.responsive-menu -->
                </div> <!-- /.container -->
            </div> <!-- /.header -->
        </div> <!-- /.site-header -->
    </div> <!-- /#home -->
	
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="resources/js/main_js/plugins.js"></script>
    <script src="resources/js/main_js/custom.js"></script>
     			
</body>
</html>