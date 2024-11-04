
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  
	<script type="text/javascript">
 	$(document).ready(function(){ 		
 		var guestSpaceName1 = "<c:out value="${guestSpaceName}"/>";
 		var coRegLastName1 = "<c:out value="${coRegLastName}"/>";
 		if(guestSpaceName1 != "" && coRegLastName1 != "") {
 			$("#designQuantityId").val(coRegLastName1);
 			$("#stillNeedsQuantityId").html(coRegLastName1);
 		} else {
 			$("#designQuantityId").val(guestSpaceName1);
 			$("#stillNeedsQuantityId").html(guestSpaceName1);
 		}
 		
 		$("#designQuantityId").keyup(function(){
 			var inputCount = "";
 			var guestSpaceCount = parseInt(guestSpaceName1);
 			if(this.value != "" && this.value != 0) {
 				inputCount = parseInt(this.value);
 			}
 			if(inputCount < guestSpaceCount) {
 				$("#designQuantityId").val(inputCount);
 			} else {
 				$("#designQuantityId").val(guestSpaceCount);
 			}
 	 	 });

 		$("#contGuestRegButtonId").click(function (){
 		    var result = true;
 		    var quaVal = $("#designQuantityId").val();
 		  	if(quaVal == ""){ 
	 			alert("Please enter quantoty");
	 			result=false;
	 	    } 
	 		return result;
 		});
 		
 	});
 	</script>
	</head>
	
		<body>		
		<div id="mainframe" class="section-content">
        <div class="container">
           
<!-- Heading text coding -->	        
		    <div class="row">
				<div class="col-md-2 col-sm-2"></div>
		        <div class="col-md-8 col-sm-8" style="border: 1px solid black; padding: 20px;">
		        <div align="left">
		        
		        	<!-- Heading text coding -->		        
				    <div class="row top_adjustment_10">
						<div align="center" class="col-md-4 col-sm-4">							
						</div>
				        <div class="col-md-8 col-sm-8">
				        <div align="center" style="font: normal 1.15em/1.5em Georgia; color: black; letter-spacing: 3px;">ACCESSORIES PACKAGE</div>			
				        </div>
				 	</div>
				 	
		        	<!-- Box display coding -->		        
				    <div class="row top_adjustment_30">
						<div align="center" class="col-md-4 col-sm-4">
							<img src="resources/images/registry/reg_guest_img/accessories_pack_img.png">
						</div>
				        <div class="col-md-8 col-sm-8" style="border-left: 1px solid red; padding-left: 30px; padding-right: 30px;">
				        <form action="accPackageInfoAddToCart">
				        <table>
				        <tr>
				        	<td class="regi_frdp_rs_sm_text_dsp">PRICE:</td> <td class="regi_frdp_big_text_dsp">&nbsp;&nbsp;$85</td>
				        </tr>
				        </table>
				        
				        <table class="top_adjustment_30">
				        <tr>
				        	<td class="regi_frdp_rs_sm_text_dsp">QUANTITY:</td> <td class="regi_frdp_rs_sm_text_dsp"><input type="text" name="accDesignQuantity" maxlength="1" id="designQuantityId" style="border: 1px solid gray; color: black; font: bold 1.2em/1.25em Georgia; padding: 7px 50px; margin-left: 21px; width: 130px;"></td>
				        </tr>
				        <tr style="height: 10px;"><td></td><td></td>
				        <tr>
				        	<td class="regi_frdp_rs_sm_text_dsp">&nbsp;</td> <td><font style="margin-left: 30px; font: normal 0.85em/1.25em Georgia; color: black; letter-spacing: 1px;">STILL NEEDS : <font size="4" id="stillNeedsQuantityId"></font></font></td>
				        </tr>
				        </table>
				        
				        <div align="center" style="margin-top: 30px;">				        
				        <h4><button class="reg_guest_cont_Butn_dspl" id="contGuestRegButtonId" style="width: 460px;">ADD TO CART</button></h4>
				        </div>
				        </form>
				        
				        <div class="regi_frdp_hd_text_rs_dsp" style="padding-top: 15px;">DESCRIPTION:</div>
				        <div class="regi_frdp_bsml_text_rs_dsp">
				        <p>With our Accessories Package, clients can spruce up an existing space to achieve a professionally designed look. Our professional designers curate custom concepts based on the clients needs, style and budget. The Nook+Cove design experience is unique, fun and doesn't break the bank, all from the convenience of your home.</p>
				        </div>			
				        
				        <div class="regi_frdp_hd_text_rs_dsp">DETAILS:</div>
				        <div class="regi_frdp_bsml_text_rs_dsp">
				        <p>Registry recipient receives the following design services with this package:</p>
				        </div>
				        
				        <div class="regi_frdp_bsml_text_rs_dsp">
				        <ul style="list-style-type: disc; padding-left: 35px;">		
				        <li><p>A professional designer that will work closely with them to bring their dream space to life</p></li>
				        <li style="margin-top: 15px;"><p>Two personally curated concepts based on their needs, style and budget</p></li>
				        <li style="margin-top: 15px;"><p>Complimentary shopping service that streamlines the shipping and ordering process making it hassle free.</p></li>
				        <li style="margin-top: 15px;"><p>Multiple revisions throughout the process</p></li>
				        </ul>
				        </div>
				        <div style="height: 20px;"></div>
				        			
				        </div>
				        
				 	</div>
				</div>
				</div>
				
				<div class="col-md-2 col-sm-2"></div>
			</div>
			  
		</div> </div>		     
		</body>
</html>