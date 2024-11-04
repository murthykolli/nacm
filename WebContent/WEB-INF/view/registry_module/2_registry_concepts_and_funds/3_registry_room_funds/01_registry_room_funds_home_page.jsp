<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="resources/css/file_upload.css" type="text/css">
	<link type="text/css" rel="stylesheet" href="resources/css/0_concepts_rendering_frame_resolution.css" />
	
	<style>
	.reg_image_dsp_center_align_cl1 { height: 220px; width: 219px; }
	.reg_image_top_frame_align_cl1 { height: 220px; width: 220px; }
	
	.reg_bott_small_price_text_dspl1 { font: italic bold 0.95em/1.25em Georgia; color: black; letter-spacing: 0px; text-transform: uppercase; vertical-align: middle; }
	.reg_dynamic_middle_text_disp1 { height: 50px; display: table-cell; vertical-align: top; }
	.reg_mid_text_dsn_cur_frame_dspl1 { min-height: 20px; }
	.reg_message_edit_text_dsp { border: 1px solid white; min-width: 50px; max-width: 1100px; font: italic 0.98em/1.5em Georgia; letter-spacing: 1px; color: black; text-align: left; padding: 5px 2px; white-space: nowrap; }
	
	.reg_con_cur_brd_heading_dsp h4 { font: 500 1.25em/1.25em Georgia; color: black; letter-spacing: 2px; }
	.reg_con_cur_brd_fl_dsp { font: 500 1.4em/1.5em Georgia; color: black; letter-spacing: 2px; text-transform: uppercase; }
	.room_funds_sub_main_txt_dsp { font: 500 1.25em/1.5em Georgia; color: black; letter-spacing: 1px;}
	.room_funds_sub_txt_dsp { font: italic 1.2em/1.5em Georgia; color: black; letter-spacing: 1px;}
		
	.reg_room_fund_bott_name_text_fl { font: normal 1.3em/1.5em Georgia; color: black; letter-spacing: 0px; text-transform: uppercase; white-space: nowrap; }
	.reg_room_fund_bott_name_text_nl { font: normal 1em/1.5em Georgia; color: black; letter-spacing: 0px; text-transform: uppercase; white-space: nowrap; margin-left: -2px; }
	
	.reg_access_frame_text_dsp { font: normal 0.98em/1.25em Georgia; color: #004ca2; letter-spacing: 1px; text-decoration: none; border-bottom: 1px solid #004ca2; padding-bottom: 0px; }
    .reg_access_frame_text_dsp:hover { color: red; text-decoration: none; border-bottom: 1px solid red; padding-bottom: 0px; }
	
		
	.registrant_fas_name_display {font: bold 1.5em/1.25em Georgia; color: black; letter-spacing: 2px; text-transform: capitalize; }
	.registrant_event_date_display {font: bold 0.95em/1.25em Georgia; color: black; letter-spacing: 2px; text-transform: capitalize; white-space: nowrap; }
	.registrant_message_edit_text_dsp { border: 1px solid white; min-width: 50px; font: italic 0.98em/1.5em Georgia; letter-spacing: 1px; color: black; padding: 5px 2px; }
	.registrant_message_save_input_box { border: 1px solid #494949; min-width: 240px; font: 500 0.98em/1.5em Georgia; letter-spacing: 1px; color: black; text-align: left; padding: 5px 2px; }
	.reg_landing_sub_fram_box_dsp { -moz-box-shadow: inset 0 0 1px #4C4646; -webkit-box-shadow: inset 0 0 1px #4C4646; box-shadow: inset 0 0 1px #4C4646; padding: 20px; margin-left: 20px; margin-right: 20px; }
	.regi_sub_lfram_box_dsp_cl { -moz-box-shadow: inset 0 0 1px #4C4646; -webkit-box-shadow: inset 0 0 1px #4C4646; box-shadow: inset 0 0 1px #4C4646; margin-left: 20px; margin-right: 20px; }
	.regi_overview_title_sel h4 { font: 1.02em/1.25em Georgia; color: black; display: block; border-bottom: 1px solid #ff3b3b; padding-bottom: 8px; letter-spacing: 2px; margin-left: 10px; margin-right: 10px; max-width: 200px; margin: 0 auto; }
	
	.regi_mbutt_frame_box_dsp_cl { border: 1px solid #797979; -moz-box-shadow: inset 0 0 6px #1c1c1c; -webkit-box-shadow: inset 0 0 6px #1c1c1c; box-shadow: inset 0 0 6px #1c1c1c; }
	
	.selec_build_registry_sbut_butt { padding: 15px; font: 500 1.02em/1.4em Georgia; letter-spacing: 2px; display: inline-block; text-transform: uppercase; cursor: pointer; outline: none; color: #fff; background-color: #2a445f; border: 1px solid #b1b7bd; border-radius: 2px; -webkit-box-shadow: 3px 4px 7px #696969; -moz-box-shadow: 3px 4px 7px #696969; box-shadow: 3px 4px 7px #696969; display: block; margin: 0px auto; width: 200px; vertical-align: middle; }
	.selec_build_registry_sbut_butt:hover { background-color: #36669b; color: white; }
	.selec_build_registry_sbut_butt:active { background-color: #36669b; -webkit-box-shadow: 3px 4px 7px #696969; -moz-box-shadow: 3px 4px 7px #696969; box-shadow: 3px 4px 7px #696969; transform: translateY(4px); }
	
	.selec_build_registry_mo_sbut_butt { padding: 15px; font: 500 1.02em/1.4em Georgia; letter-spacing: 2px; display: inline-block; text-transform: uppercase; cursor: pointer; outline: none; color: #fff; background-color: #36669b; border: 1px solid #b1b7bd; border-radius: 2px; -webkit-box-shadow: 3px 4px 7px #696969; -moz-box-shadow: 3px 4px 7px #696969; box-shadow: 3px 4px 7px #696969; display: block; margin: 0px auto; width: 200px; vertical-align: middle; }
	.selec_build_registry_mo_sbut_butt:hover { background-color: #36669b; color: white; }
	.selec_build_registry_mo_sbut_butt:active { background-color: #36669b; -webkit-box-shadow: 3px 4px 7px #696969; -moz-box-shadow: 3px 4px 7px #696969; box-shadow: 3px 4px 7px #696969; transform: translateY(4px); }
	
	.regi_funds_bottom_text_frame_cl { border: none; width: 210px; height: 90px; -webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); -moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-left: 0px; border-left: none; border-right: none; border-bottom: none; margin-top: 0px; }
	
	.hiw_link_dsplay { font: 500 0.95em/1.5em Georgia; color: #1a69b3; text-decoration: underline; }
	.hiw_link_dsplay:hover { color: red; text-decoration: underline; }
	</style>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('html, body').animate({scrollTop: $('#room_funds_adj_id').offset().top}, 0);
        
        var selRoomCashFund1 = "<c:out value="${selRoomCashFund}"/>";        
    	if(selRoomCashFund1 == "Selected Room Cash Fund"){ $("#minus_img_info_display_id").show(); $("#plus_img_info_display_id").hide(); }
            	
		$("#saveDataRefId").click(function (){ var result = true; if($("#messageTextInputId").val() === "") { alert("Please enter a message for your guests."); result=false; } return result; });
		$("#editedDataRefId").click(function (){ $("#messageSaveDisplayId").show(); $("#messageEditDisplayId").hide(); });
	
		$("#reg_plus_butt_click_id").click(function (){ $("#minus_img_info_display_id").show(); $("#plus_img_info_display_id").hide(); });
		$("#minus_img_click_id").click(function (){ $("#plus_img_info_display_id").show(); $("#minus_img_info_display_id").hide(); });	
		
		$("#registryRoomFundButtonId").click(function (){ $('html, body').animate({scrollTop: $('#room_funds_adj_id').offset().top}, 0); });
		
		var regBackReffVal1 = "<c:out value="${regBackReffVal}"/>";
		if(regBackReffVal1 == "Reg Back Move"){ $("#minus_img_info_display_id").show(); $("#plus_img_info_display_id").hide(); $("#reg_giftcards_info_id").show(); }
		var guestBackgroungImage1 = "<c:out value="${guestBackgroungImage}"/>";
		
		var regiStatus = "<c:out value="${regStatus}"/>";
		if(regiStatus === "Done") { $("#makeRegistryVisibleId").hide(); $("#registryIsLiveId").show(); } else { $("#makeRegistryVisibleId").show(); $("#registryIsLiveId").hide(); } 
			
	 	});
	
	
		function registryMakeVisibleAccess(liveStatus) {		
				newAjaxCallForRegistryMakeVisibleAccess(liveStatus);					
	 	}
	
		function newAjaxCallForRegistryMakeVisibleAccess(liveStatus) { 
	    	$.ajax({
				type : 'POST',
				url : "jSonRegistryMakeVisibleAccess?liveStatusRef="+liveStatus,
				dataType : 'json',
				async : true,
				cache: false,
				success : function(result) {
					var jsonStrObj=JSON.stringify(result);				
					var data=JSON.parse(jsonStrObj);
					var regiStatus = data[0].JSonObj;
					if(regiStatus === "Done") { $("#makeRegistryVisibleId").hide(); $("#registryIsLiveId").show(); } else { $("#makeRegistryVisibleId").show(); $("#registryIsLiveId").hide(); }				
				}    	
	    	}); 
	  	}
    </script>
    
	</head>
	
		<body>
		<div class="container-fluid" style="margin-top: 75px;">        
        <img src="<c:out value='${guestBackgroungImage}'/>" class="img-responsive" style="position: relative; top:0px; left:0px; width: 100%; height: 100%; z-index:-1;">
        </div>
        
        <div id="mainframe" class="section-content" style="margin-top: 0px;">
        <div class="container">
        	<div class="row">
            	<div class="col-md-12 col-sm-12">   
		        	<div align="center">
						<div id="redUploadImage">			
							<div class="regi_circle_uploaded_image"><div style="font: 1.8em/1.5em Georgia; letter-spacing: 3px; color: black; position: relative; top: 0px; text-align: center;">${regUploadedPhoto}</div></div>
			        	</div>
			        </div>
			  	</div>
			</div>
			
			<div class="row">
            	<div class="col-md-12 col-sm-12">   
		        	<div align="center">
						<div style="margin-left: 0px; margin-top: 25px;" align="center" class="registrant_fas_name_display"><c:out value='${regFirstName}'/></div>
			        </div>
			  	</div>
			</div>
			
			<div class="row">
            	<div class="col-md-12 col-sm-12">   
		        	<div align="center">
						<div style="margin-left: 0px; margin-top: 15px;" align="center" class="registrant_event_date_display"><c:out value='${eventDate}'/></div>
						<div align="center" style="border-bottom: 1px solid black; width: 200px; padding: 5px 30px;"></div>
			        </div>
			  	</div>
			</div>
	        	        
			<div class="row" style="margin-top: 20px;">
            	<div class="col-md-12 col-sm-12">   
		        	<div align="center">
						<div id="messageEditDisplayId">
					        <div align="center"><div class="registrant_message_edit_text_dsp">${registrantMessage}</div></div>
					        <div align="center"><button class="reg_message_small_edit_butt" id="editedDataRefId" style="position: relative; top: 20px; left: 0px;">EDIT</button></div>
				        </div>
				        
				        <form action="saveRegiMessageData?regMesReferance=messageRoomfund" method="POST">
					        <div id="messageSaveDisplayId" style="display: none;">		        
						        <div align="center"><input type="text" id="messageTextInputId" name="messageToGuests" maxlength="100" value="${registrantMessage}" class="registrant_message_save_input_box"></div>
						        <div align="center"><button class="reg_message_small_sub_butt" id="saveDataRefId" style="position: relative; top: 20px; left: 0px;">SAVE</button></div>			        
					        </div>
				        </form>
			        </div>
			  	</div>
			</div>
	         
		 	
			<div class="row">
            	<div class="col-md-12 col-sm-12">   
		        	<div align="center">
						<div style="margin-top: 50px;"> <a href="regEditBackgroundForGuest?regReferance=landingEditBackground" class="reg_access_frame_text_dsp">Edit Background</a> </div>			        
			        	<div style="margin-top: 20px;"> <a href="previewGuestRegistry" class="reg_access_frame_text_dsp">Preview Registry</a> </div>
			        	<div style="margin-top: 20px; display: none;" id="makeRegistryVisibleId"> <a href="#" onclick="return registryMakeVisibleAccess('Live Status On');" class="reg_access_frame_text_dsp">Registry Is Hidden </a> </div>
			        	<div style="margin-top: 20px; display: none;" id="registryIsLiveId"> <a href="#" onclick="return registryMakeVisibleAccess('Live Status Off');" class="reg_access_frame_text_dsp">Registry is Live </a> </div>
			        </div>
			  	</div>
			</div>
		         
		    
 
<!-- ADD GIFT CARD COADING START -->
    
        <div class="row top_adjustment_30" id="plus_img_info_display_id">
        <div class="col-md-1 col-sm-1"></div>		 
        <div class="col-md-10 col-sm-10 reg_landing_sub_fram_box_dsp">
	        <div align="center">
		        <table style="cursor: pointer; width: 170px;" id="reg_plus_butt_click_id"><tr>
			        <td><img src="resources/images/registry/preview_reg_imgs/reg_plus_img.png" width="36" height="34"></td>
			        <td><div class="reg_add_gift_text_dly">&nbsp;&nbsp;ADD GIFTS</div></td>
		        </tr></table>
	        </div>	        
        </div>
        <div class="col-md-1 col-sm-1"></div>       
        </div>
                
 <!-- ADD GIFT CARD CONTENT DISPLAY COADING START -->       
        
        <div class="row top_adjustment_80" style="display: none;" id="minus_img_info_display_id">
		<div class="col-md-12 col-sm-12 regi_sub_lfram_box_dsp_cl" style="padding-bottom: 25px;"> 
        	<div align="right"><img src="resources/images/registry/close_img.png" style="position: relative; top: -10px; left: 30px; cursor: pointer;" id="minus_img_click_id" onmouseover="this.src='resources/images/registry/close_mo_img.png';" onmouseout="this.src='resources/images/registry/close_img.png';"></div>      
	        <div class="row top_adjustment_10" style="padding-left: 10px; padding-right: 10px;">
	        
	        <div class="regi_overview_title_sel text-center" style="margin-bottom: 40px; margin-top: -10px;">
	            <h4><font class="reg_con_cur_brd_fl_dsp">B</font>UILD <font class="reg_con_cur_brd_fl_dsp">Y</font>OUR <font class="reg_con_cur_brd_fl_dsp">R</font>EGISTRY</h4>
	        </div> <!-- /.title-section -->
	              
	        <div class="col-md-12 col-sm-12 regi_mbutt_frame_box_dsp_cl">        
	        	<div class="row top_adjustment_25">	        	
		        	<div class="col-md-4 col-sm-4">
		        		<div align="center">
			        		<form action="designCuratedConceptsBoards">
				        		<button class="selec_build_registry_sbut_butt" id="registryCuratedConButtonId">
				        			<font class="build_reg_but_text_fl_dsp">A</font>DD <br><font class="build_reg_but_text_fl_dsp">F</font>urniture <font class="build_reg_but_text_fl_dsp">&amp; D</font>ecor
				        		</button>
			        		</form>
		        		</div>
		        	</div>
		        </div>
	        	
	        	<div class="row top_adjustment_25">
		        	<div class="col-md-4 col-sm-4">
		        		<div align="center">
			        		<form action="createRoomFunds">
				        		<button class="selec_build_registry_mo_sbut_butt" id="registryCashFundButtonId">
				        			<font class="build_reg_but_text_fl_dsp">C</font>REATE <br><font class="build_reg_but_text_fl_dsp">R</font>OOM <font class="build_reg_but_text_fl_dsp">F</font>UNDS
				        		</button>
			        		</form>
		        		</div>
		        	</div>
	        	</div>	        	
	        	
	        	<div class="row top_adjustment_25" style="padding-bottom: 25px;">
		        	<div class="col-md-4 col-sm-4">
		        		<div align="center">
			        		<form action="createCashFunds">	        		
				        		<button class="selec_build_registry_sbut_butt" id="registryCashFundButtonId">
				        			<font class="build_reg_but_text_fl_dsp">C</font>REATE <br><font class="build_reg_but_text_fl_dsp">C</font>ASH <font class="build_reg_but_text_fl_dsp">F</font>UNDS
				        		</button>
			        		</form>
		        		</div>
		        	</div>
		        		        	
	        	</div>                      
	        </div> 	        
	    	</div>
	    </div>	    
	    </div>
	    
	    
		<div class="row" style="margin-top: 0px;">
           	<div class="col-md-12 col-sm-12">   
		       	<div align="center">
					<img src="resources/images/registry/reg_overview/reg_overview_mid_img.png" class="img-responsive">
		        </div>
		  	</div>
		</div>
		
<!-- Code End -->

        
 <!-- ADD GIFT CARD CONTENT DISPLAY COADING START -->       
        
       <div id="room_funds_adj_id" style="margin-top: -60px;">
			<div style="padding-top: 80px;">
		        <div class="row">
				
			        <div class="reg_con_cur_brd_heading_dsp text-left" style="margin-bottom: 5px; margin-top: 0px; margin-left: 10px; margin-right: 10px;">
			            <h4><font class="reg_con_cur_brd_fl_dsp">R</font>OOM <font class="reg_con_cur_brd_fl_dsp">F</font>UNDS </h4>
			        </div>
			        
			        <div class="room_funds_sub_main_txt_dsp text-left" style=" margin-left: 10px; margin-right: 10px;">
			            Create a room fund for any space that you want to decorate at a later time.&nbsp; <a href="lmDesignServices" class="hiw_link_dsplay">Learn More</a>
			        </div>
			        
			        <div class="room_funds_sub_txt_dsp text-left" style="margin-bottom: 20px; margin-left: 10px; margin-right: 10px;">
			            Note: All Room Funds (funds listed below) will be converted to Nook+Cove credit that can be used on the website at any time.
			        </div>
				
		<!-- Start Room FUnds Images DIsplay Coding Start -->
				
				<div align="center" class="col-md-12 col-sm-12" style="margin-top: 35px;">
						
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('livingRoomFormId');" style=" margin-bottom: 30px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="livingRoomFormId">			
						<div class="row">
							<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/livingroomfund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_nam0e_text_nl"><font class="reg_room_fund_bott_name_text_fl">L</font>IVING <font class="reg_room_fund_bott_name_text_fl">R</font>OOM <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="livingRoom" />
						<input type="hidden" name="nameOfTheRoomFund" value="LIVING ROOM FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="livingroomfund.jpg" />
						</form>						
			   		</div>	   		
						
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('diningRoomFormId');" style=" margin-bottom: 30px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="diningRoomFormId">		
						<div class="row">
							<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/diningroomfund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_name_text_nl"><font class="reg_room_fund_bott_name_text_fl">D</font>INING <font class="reg_room_fund_bott_name_text_fl">R</font>OOM <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="dining_room" />
						<input type="hidden" name="nameOfTheRoomFund" value="DINING ROOM FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="diningroomfund.jpg" />
						</form>					
			   		</div>	   		
						
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('bedRoomFormId');" style=" margin-bottom: 30px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="bedRoomFormId">			
						<div class="row">
							<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/bedroomfund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_name_text_nl"><font class="reg_room_fund_bott_name_text_fl">B</font>EDROOM <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="bedroom" />
						<input type="hidden" name="nameOfTheRoomFund" value="BEDROOM FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="bedroomfund.jpg" />
						</form>					
			   		</div>	   		
						
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('homeOfficeFormId');" style=" margin-bottom: 30px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="homeOfficeFormId">			
						<div class="row">
							<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/homeofficefund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_name_text_nl"><font class="reg_room_fund_bott_name_text_fl">H</font>OME <font class="reg_room_fund_bott_name_text_fl">O</font>FFICE <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="home_office" />
						<input type="hidden" name="nameOfTheRoomFund" value="HOME OFFICE FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="homeofficefund.jpg" />
						</form>					
			   		</div>	   		
						
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('entrywayFormId');" style=" margin-bottom: 50px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="entrywayFormId">			
						<div class="row">
							<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/entrywayfund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_name_text_nl"><font class="reg_room_fund_bott_name_text_fl">E</font>NTRYWAY <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="entryway" />
						<input type="hidden" name="nameOfTheRoomFund" value="ENTRYWAY FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="entrywayfund.jpg" />
						</form>					
			   		</div>	   		
					
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('nurseryFormId');" style=" margin-bottom: 30px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="nurseryFormId">			
						<div class="row">
							<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/nurseryfund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_name_text_nl"><font class="reg_room_fund_bott_name_text_fl">N</font>URSERY <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="nursery" />
						<input type="hidden" name="nameOfTheRoomFund" value="NURSERY FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="nurseryfund.jpg" />
						</form>					
			   		</div>	   		
						
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('kidsBedRoomFormId');" style=" margin-bottom: 30px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="kidsBedRoomFormId">			
						<div class="row">
							<div class="col-md-12 col-smStart Room FUnds Images DIsplay Coding Start-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/kidsbedroomfund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_name_text_nl"><font class="reg_room_fund_bott_name_text_fl">K</font>IDS <font class="reg_room_fund_bott_name_text_fl">B</font>EDROOM <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="kids_bedroom" />
						<input type="hidden" name="nameOfTheRoomFund" value="KIDS BEDROOM FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="kidsbedroomfund.jpg" />
						</form>					
			   		</div>	   		
						
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('outDoorSpaceFormId');" style=" margin-bottom: 30px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="outDoorSpaceFormId">			
						<div class="row">
							<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/outdoorspacefund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_name_text_nl"><font class="reg_room_fund_bott_name_text_fl">O</font>UTDOOR <font class="reg_room_fund_bott_name_text_fl">S</font>PACE <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="outdoor_space" />
						<input type="hidden" name="nameOfTheRoomFund" value="OUTDOOR SPACE FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="outdoorspacefund.jpg" />
						</form>					
			   		</div>	   		
						
					<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('otherDreamSpaceFormId');" style=" margin-bottom: 30px;">
						<form action="registryRoomFundsInfoDisplay" method="post" id="otherDreamSpaceFormId">			
						<div class="row">
							<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
								<img src="resources/images/registry/roomandfundimages/otherdreamspacefund.jpg" width="210" height="210" style="margin-left: -15px;" >
							</div>				
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
								<div class="reg_funds_botsub_middle_text_cl">
									<div class="reg_room_fund_bott_name_text_nl"><font class="reg_room_fund_bott_name_text_fl">C</font>USTOM <font class="reg_room_fund_bott_name_text_fl">D</font>ESIGN <font class="reg_room_fund_bott_name_text_fl">F</font>UND</div>
								</div>							
							</div>				
						</div>
						<input type="hidden" name="regSpaceName" value="other_dream_space" />
						<input type="hidden" name="nameOfTheRoomFund" value="CUSTOM DESIGN FUND" />
						<input type="hidden" name="imageOfTheRoomFund" value="otherdreamspacefund.jpg" />
						</form>				
			   		</div>	   		
				
				</div>
				      
		        </div>
		 	</div>
		</div>
<!-- END CODING -->        
    
		</div></div>
		
		<div id="boxes">
        <div style="width: 500px; height: 400px; display: none; opacity: 0.1; z-index: 10001;" id="mask"></div>
        
        <div align="center" style="padding: 5px; display: none;  min-width: 270px; z-index: 10001; overflow-y: hidden; position:fixed; left: 46%; top: 50%; -ms-transform: translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%); margin-left: 15px; margin-right: 15px;" id="dialog" class="window">
        <div id="popupfoot" class="close"> <a href="#"><img src="resources/images/close.png" style="cursor: pointer; top: 0px; left: -2px;  position: relative;"></a></div>
    
    	<div align="center" style="font: bold 0.9em/1.5em Georgia; letter-spacing: 1px; color: black; margin-top: 20px;">Upload Your Photo</div>
    	
			<div id="lorem" style="padding: 10px; width: 260px; margin-top: 10px; overflow-x: hidden;">		
				<form action="uploadRegistrantProfile?uploadImgReferance=roomFundImageUpload" method="POST" enctype="multipart/form-data">
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
				</form>
			</div>
		
		</div>
		</div>
				  
        
		<script type="text/javascript">
		
			function typeOfRoomFund(roomFundFormId) { 
				$("#"+roomFundFormId).submit();
			}
		</script>
		
		<script type="text/javascript" src="resources/js/file_upload.js"></script>
		</body>
</html>