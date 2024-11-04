<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="resources/css/file_upload.css" type="text/css">
	<style type="text/css">
	.reg_edit_background_frame { box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.3), 0 2px 5px 0 rgba(0, 0, 0, 0.25); position: relative; background: white; cursor: pointer; }
	.reg_edit_background_frame:hover { box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.4), 0 6px 18px 0 rgba(0, 0, 0, 0.35); }
	.reg_background_image_text1_dsp { font: 1.25em/1.25em Georgia; color: black; letter-spacing: 2px; }
	.reg_background_image_text2_dsp { font: 0.90em/1.25em Georgia; color: black; letter-spacing: 2px; }
	.img-responsive {margin-top: -20px;}
	span { content: "\2191"; } 
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function(){
 		var regBackgroundUploadImage = '<c:out value="${regBackgroundUploadImageInSn}"/>';
 		if(regBackgroundUploadImage !== "") {
 			$("#uploadBGImageDisplayId").css("opacity","0.2");
 	      	$("#uploadBGImageDisplayId").css('box-shadow', '0 5px 10px 0 rgba(0, 0, 0, 0.4), 0 6px 15px 0 rgba(0, 0, 0, 0.35)');
 			$("#uploadImageDisplayId").show();
 			$("#uploadTextDisplayId").hide();
 		} else {
 			var guestBackgroungImage1 = '<c:out value="${guestBackgroungImage}"/>';
 			var guestBackgroungImage1Val = guestBackgroungImage1.split("/");
 			var guestBackgroungImageVal = guestBackgroungImage1Val[2].split(".");
 			$("#"+guestBackgroungImageVal).css("opacity","0.2");
 	      	$("#"+guestBackgroungImageVal).css('box-shadow', '0 5px 10px 0 rgba(0, 0, 0, 0.4), 0 6px 15px 0 rgba(0, 0, 0, 0.35)');
 			$("#uploadTextDisplayId").show();
 			$("#uploadImageDisplayId").hide();
 		}
 		 		 		
 	});

 	function ediBackgroundForGuest(bgImgName) {
 		$(".reg_edit_background_frame").css("opacity","1");
        $(".reg_edit_background_frame").css('box-shadow', '0 2px 2px 0 rgba(0, 0, 0, 0.3), 0 2px 5px 0 rgba(0, 0, 0, 0.25)');
 		document.myDesign.bgImageName.value = bgImgName; 		
	    $("#bgImgFormId").submit();
	}
	</script>
	</head>
	
		<body>		
		<div id="mainframe" class="section-content room-styles">
    <div class="container">

        <div class="reg_background_image_text2_dsp text-center">
            <font class="reg_background_image_text1_dsp">P</font>LEASE&nbsp; <font class="reg_background_image_text1_dsp">S</font>ELECT&nbsp; A&nbsp; <font class="reg_background_image_text1_dsp">B</font>ACKGROUND&nbsp; FOR&nbsp; <font class="reg_background_image_text1_dsp">Y</font>OUR&nbsp; <font class="reg_background_image_text1_dsp">R</font>EGISTRY 
        </div> <!-- /.title-section -->
        
<!-- 1st Row Images Display -->

        <div class="row top_adjustment_40">
	        <div class="col-md-4 col-sm-4">
		        <div id="redBackGroundImageUpload">			
					<div class="reg_edit_background_frame" id="uploadBGImageDisplayId">
						<div id="uploadImageDisplayId" style="display: none;"> 
							<img src="<c:out value='${regBackgroundUploadImageInSn}'/>" width="355" height="82">
						</div>
						<div id="uploadTextDisplayId" style="height: 80px; background-color: #f2f2f2;"> 
							<div align="center">
								<div style="font: 500 1.3em/1.25em Georgia; text-align: center; color: black; position: relative; top: 10px;"> Upload Your Own Photo </div>
								<div style="font: 500 1.05em/1.25em Georgia; text-align: center; color: black; position: relative; top: 10px;"> (Recommended: 1500 x 350 pixels) </div>
							</div>						
						</div>
			    	</div>
				</div>
			</div>            
        
	        <div class="col-md-4 col-sm-4" style="margin-top: 50px;">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image2" onclick="ediBackgroundForGuest('reg_guest_show_image2');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image2.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image3" onclick="ediBackgroundForGuest('reg_guest_show_image3');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image3.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->	                    
        </div> <!-- /.row -->
        
<!-- 2nd Row Images Display -->

        <div class="row">
        	<div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image4" onclick="ediBackgroundForGuest('reg_guest_show_image4');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image4.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	      	
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image5" onclick="ediBackgroundForGuest('reg_guest_show_image5');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image5.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image6" onclick="ediBackgroundForGuest('reg_guest_show_image6');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image6.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->                    
        </div> <!-- /.row -->
        
<!-- 3rd Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image7" onclick="ediBackgroundForGuest('reg_guest_show_image7');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image7.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image8" onclick="ediBackgroundForGuest('reg_guest_show_image8');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image8.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image9" onclick="ediBackgroundForGuest('reg_guest_show_image9');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image9.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
             
<!-- 4th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image10" onclick="ediBackgroundForGuest('reg_guest_show_image10');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image10.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image11" onclick="ediBackgroundForGuest('reg_guest_show_image11');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image11.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image12" onclick="ediBackgroundForGuest('reg_guest_show_image12');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image12.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 5th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image13" onclick="ediBackgroundForGuest('reg_guest_show_image13');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image13.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image14" onclick="ediBackgroundForGuest('reg_guest_show_image14');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image14.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image15" onclick="ediBackgroundForGuest('reg_guest_show_image15');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image15.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 6th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image16" onclick="ediBackgroundForGuest('reg_guest_show_image16');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image16.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image17" onclick="ediBackgroundForGuest('reg_guest_show_image17');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image17.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image18" onclick="ediBackgroundForGuest('reg_guest_show_image18');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image18.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 7th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image19" onclick="ediBackgroundForGuest('reg_guest_show_image19');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image19.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image20" onclick="ediBackgroundForGuest('reg_guest_show_image20');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image20.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image21" onclick="ediBackgroundForGuest('reg_guest_show_image21');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image21.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 8th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image22" onclick="ediBackgroundForGuest('reg_guest_show_image22');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image22.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image23" onclick="ediBackgroundForGuest('reg_guest_show_image23');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image23.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image24" onclick="ediBackgroundForGuest('reg_guest_show_image24');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image24.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 9th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image25" onclick="ediBackgroundForGuest('reg_guest_show_image25');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image25.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image26" onclick="ediBackgroundForGuest('reg_guest_show_image26');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image26.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image27" onclick="ediBackgroundForGuest('reg_guest_show_image27');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image27.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 10th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image28" onclick="ediBackgroundForGuest('reg_guest_show_image28');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image28.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image29" onclick="ediBackgroundForGuest('reg_guest_show_image29');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image29.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image30" onclick="ediBackgroundForGuest('reg_guest_show_image30');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image30.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 11th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image31" onclick="ediBackgroundForGuest('reg_guest_show_image31');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image31.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image32" onclick="ediBackgroundForGuest('reg_guest_show_image32');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image32.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image33" onclick="ediBackgroundForGuest('reg_guest_show_image33');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image33.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 12th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image34" onclick="ediBackgroundForGuest('reg_guest_show_image34');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image34.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image35" onclick="ediBackgroundForGuest('reg_guest_show_image35');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image35.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image36" onclick="ediBackgroundForGuest('reg_guest_show_image36');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image36.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 13th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image37" onclick="ediBackgroundForGuest('reg_guest_show_image37');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image37.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image38" onclick="ediBackgroundForGuest('reg_guest_show_image38');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image38.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image39" onclick="ediBackgroundForGuest('reg_guest_show_image39');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image39.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 14th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image40" onclick="ediBackgroundForGuest('reg_guest_show_image40');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image40.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image41" onclick="ediBackgroundForGuest('reg_guest_show_image41');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image41.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image42" onclick="ediBackgroundForGuest('reg_guest_show_image42');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image42.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 15th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image43" onclick="ediBackgroundForGuest('reg_guest_show_image43');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image43.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image44" onclick="ediBackgroundForGuest('reg_guest_show_image44');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image44.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image45" onclick="ediBackgroundForGuest('reg_guest_show_image45');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image45.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
                 
<!-- 16th Row Images Display -->

        <div class="row">        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image46" onclick="ediBackgroundForGuest('reg_guest_show_image46');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image46.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->            
        
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image47" onclick="ediBackgroundForGuest('reg_guest_show_image47');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image47.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->
	        <div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image48" onclick="ediBackgroundForGuest('reg_guest_show_image48');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image48.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 --> 	                    
        </div> <!-- /.row -->
        
        <div class="row" style="margin-top: 0px;">
        	<div class="col-md-4 col-sm-4">
	            <div class="service-item">
	                <div class="service-description">
	                    <div class="reg_edit_background_frame" id="reg_guest_show_image1" onclick="ediBackgroundForGuest('reg_guest_show_image1');">
	                    <img src="outsideImages/backgroundImages/reg_guest_show_image1.png" class="img-responsive" width="355" height="82"></div>
		      		</div> <!-- /.service-description -->
	            </div> <!-- /.service-item -->
	      	</div> <!-- /.col-md-4 -->			
		</div>
        
        
        <div class="form-nav" style="margin: 5px auto;">            
            <form action="regEditBackgroundImageSave" id="bgImgFormId" name="myDesign" method="get">
                <input type="hidden" id="bgImageNameId" name="bgImageName">
                <input type="hidden" id="regiReferanceId" name="regiReferance" value="${regiReferance}">                 
            </form>
        </div>
        
    </div> <!-- /.container -->
</div> <!-- /.Main Frame -->
		  
        <div id="boxes">
        <div style="width: 500px; height: 400px; display: none; opacity: 0.1; z-index: 10001;" id="mask"></div>
        
        <div align="center" style="padding: 5px; display: none;  min-width: 270px; z-index: 10001; overflow-y: hidden; position:fixed; left: 46%; top: 50%; -ms-transform: translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%); margin-left: 15px; margin-right: 15px;" id="dialog" class="window">
        <div id="popupfoot" class="close"> <a href="#"><img src="resources/images/close.png" style="cursor: pointer; top: 0px; left: -2px;  position: relative;"></a></div>
    
    	<div align="center" style="font: bold 0.9em/1.5em Georgia; letter-spacing: 1px; color: black; margin-top: 20px;">Upload Your Photo</div>
    	
			<div id="lorem" style="padding: 10px; width: 260px; margin-top: 10px; overflow-x: hidden;">		
				<form action="registrantBackgroundImageUpload" method="POST" enctype="multipart/form-data">
					<table style="font: normal 0.82em/1.5em Georgia; letter-spacing: 0px; color: black;">
					<tbody><tr><td><input type="file" onchange="readURL(event)" name="regBackgroundUploadImage" id="fileUpload" title="Click here to browse your photo." style="background-color:white;"></td></tr>
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
				</form>
			</div>
		
		</div>
		</div>			
		
		<script type="text/javascript" src="resources/js/file_upload.js"></script>
		</body>
</html>