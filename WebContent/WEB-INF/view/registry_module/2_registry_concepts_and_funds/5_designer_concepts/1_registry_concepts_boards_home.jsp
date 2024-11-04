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
	
	<style type="text/css">
	
	.reg_bott_name_text_fl_dspl { font: normal 1.2em/1.5em Georgia; color: black; letter-spacing: 2px; text-transform: uppercase; }
	.reg_bott_name_text_nl_dspl { font: normal 1.05em/1.5em Georgia; color: black; letter-spacing: 2px; text-transform: uppercase; }
	
	.reg_con_cur_brd_heading_dsp h4 { font: 500 1.25em/1.25em Georgia; color: black; letter-spacing: 2px; }
	.reg_con_cur_brd_fl_dsp { font: 500 1.4em/1.5em Georgia; color: black; letter-spacing: 2px; text-transform: uppercase; }
	.dsn_con_cur_sub_txt_dsp { font: 500 1.25em/1.5em Georgia; color: black; letter-spacing: 1px; }
	.reg_message_edit_text_dsp { border: 1px solid white; min-width: 50px; max-width: 1100px; font: italic 0.98em/1.5em Georgia; letter-spacing: 1px; color: black; text-align: left; padding: 5px 2px; white-space: nowrap; }
	
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
	
	</style>
	
	<script type="text/javascript">
 	$(document).ready(function(){
 		$('html, body').animate({scrollTop: $('#concept_boards_adj_id').offset().top}, 0);
 		
        var desnCurConBoards1 = "<c:out value="${desnCurConBoards}"/>";
    	if(desnCurConBoards1 == "Design Curated Con Boards"){ $("#minus_img_info_display_id").show(); $("#plus_img_info_display_id").hide(); }
        
    	$("#saveDataRefId").click(function (){ var result = true; if($("#messageTextInputId").val() === "") { alert("Please enter a message for your guests."); result=false; } return result; });
    	$("#editedDataRefId").click(function (){ $("#messageSaveDisplayId").show(); $("#messageEditDisplayId").hide(); });

    	$("#reg_plus_butt_click_id").click(function (){ $("#minus_img_info_display_id").show(); $("#plus_img_info_display_id").hide(); });
    	$("#minus_img_click_id").click(function (){ $("#plus_img_info_display_id").show(); $("#minus_img_info_display_id").hide(); });
    	
    	$("#registryCuratedConButtonId").click(function (){ $('html, body').animate({scrollTop: $('#concept_boards_adj_id').offset().top}, 0); });

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
				        
				        <form action="saveRegiMessageData?regMesReferance=messageLanding" method="POST">
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
				        		<button class="selec_build_registry_mo_sbut_butt" id="registryCuratedConButtonId">
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
				        		<button class="selec_build_registry_sbut_butt" id="registryCashFundButtonId">
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
		
        
 <!-- DESIGNER CURATED CONCEPT BOARDS COADING START -->       
        <div id="concept_boards_adj_id" style="margin-top: -60px;">
			<div style="padding-top: 80px;">      	        
		        <div class="row">        
		        <div class="reg_con_cur_brd_heading_dsp text-left" style="margin-bottom: 5px; margin-top: 0px; margin-left: 10px; margin-right: 10px;">
		            <h4><font class="reg_con_cur_brd_fl_dsp">C</font>URATED <font class="reg_con_cur_brd_fl_dsp">D</font>ESIGN <font class="reg_con_cur_brd_fl_dsp">B</font>OARDS</h4>
		        </div>
		        
		        <div class="dsn_con_cur_sub_txt_dsp text-left" style=" margin-left: 10px; margin-right: 10px;">
		            Browse by rooms and add furniture and decor pieces from professionally curated design boards.
		        </div>
		        
		        <div class="dsn_con_cur_sub_txt_dsp text-left" style=" margin-left: 10px; margin-right: 10px;">
		            You decide when gifts ships!
		        </div>
		        
		<!-- DESIGNER CURATED CONCEPT BOARDS COADING Bottom Images --> 
		       
		       <div class="row">
		       <div align="center" class="col-md-12 col-sm-12" style="margin-top: 35px;">
					        
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('Living Room');" style=" margin-bottom: 30px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/living_room_cdb.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">L</font>IVING <font class="reg_bott_name_text_fl_dspl">R</font>OOM</div>
									</div>							
								</div>				
							</div>					
			   			</div>	   			
			   		
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('Dining Room');" style=" margin-bottom: 30px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/dining_room_cdb.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">D</font>INING <font class="reg_bott_name_text_fl_dspl">R</font>OOM</div>
									</div>							
								</div>				
							</div>					
			   			</div>
			   		
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('Bedroom');" style=" margin-bottom: 30px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/bedroom_cdb.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">B</font>EDROOM</div>
									</div>							
								</div>				
							</div>					
			   			</div>
			   		
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('Home Office');" style=" margin-bottom: 50px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/home_office_cdb.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">H</font>OME <font class="reg_bott_name_text_fl_dspl">O</font>FFICE</div>
									</div>							
								</div>				
							</div>					
			   			</div>
			   				
					
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('Entryway');" style=" margin-bottom: 30px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/entryway_cdb.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">E</font>NTRYWAY</div>
									</div>							
								</div>				
							</div>					
			   			</div>
			   		
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('Nursery');" style=" margin-bottom: 30px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/nursery_cdb.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">N</font>URSERY</div>
									</div>							
								</div>				
							</div>					
			   			</div>
			   		
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('Kids Bedroom');" style=" margin-bottom: 30px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/kids_bedroom_cdb.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">K</font>IDS <font class="reg_bott_name_text_fl_dspl">B</font>EDROOM</div>
									</div>							
								</div>				
							</div>					
			   			</div>
			   		
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfRoomFund('Outdoor Space');" style=" margin-bottom: 30px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/outdoor_space_cdb.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">O</font>UTDOOR <font class="reg_bott_name_text_fl_dspl">S</font>PACE</div>
									</div>							
								</div>				
							</div>					
			   			</div>
			   			
						<div class="reg_image_and_text_frame_dsp_cl" onclick="typeOfFinishingTouches('Finishing Touches');" style=" margin-bottom: 30px;">			
							<div class="row">
								<div class="col-md-12 col-sm-12 reg_funds_topimage_frame_cl" align="center">
									<img src="resources/images/curated_design_boards_images/finishing_touches.png" width="210" height="210" style="margin-left: -15px;" >
								</div>				
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 regi_funds_bottom_text_frame_cl">
									<div class="reg_funds_botsub_middle_text_cl">
										<div class="reg_bott_name_text_nl_dspl"><font class="reg_bott_name_text_fl_dspl">F</font>INISHING <font class="reg_bott_name_text_fl_dspl">T</font>OUCHES</div>
									</div>							
								</div>				
							</div>					
			   			</div>
			   		
		        
		        </div>
		        <div class="col-md-2 col-sm-2"></div>        
		        </div>
		                
		        
		        </div>
        
        	</div>
        </div>
        
       
		</div></div>
		
		<div id="boxes">
        <div style="width: 500px; height: 400px; display: none; opacity: 0.1; z-index: 10001;" id="mask"></div>
        
        <div align="center" style="padding: 5px; display: none;  min-width: 270px; z-index: 10001; overflow-y: hidden; position:fixed; left: 46%; top: 50%; -ms-transform: translate(-50%,-50%); -moz-transform:translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); transform: translate(-50%,-50%); margin-left: 15px; margin-right: 15px;" id="dialog" class="window">
        <div id="popupfoot" class="close"> <a href="#"><img src="resources/images/close.png" style="cursor: pointer; top: 0px; left: -2px;  position: relative;"></a></div>
    
    	<div align="center" style="font: bold 0.9em/1.5em Georgia; letter-spacing: 1px; color: black; margin-top: 20px;">Upload Your Photo</div>
    	
			<div id="lorem" style="padding: 10px; width: 260px; margin-top: 10px; overflow-x: hidden;">		
				<form action="uploadRegistrantProfile?uploadImgReferance=conceptBoardsImageUpload" method="POST" enctype="multipart/form-data">
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
		
			function typeOfRoomFund(roomFundName) { document.regRoomFundsSelect.registrySpaceRoom.value = roomFundName; $("#roomFundsFormId").submit(); }
			function typeOfFinishingTouches(finishingTouchesName) { document.finishingTouchesFormName.finishingTouchesName.value = finishingTouchesName; $("#finishingTouchesFormId").submit(); }
		</script>
		
		<!-- <form action="regCuratedSelectedRoom" id="roomFundsFormId" name="regRoomFundsSelect" method="GET"> -->
		<form action="registryViewAllDesigns" id="roomFundsFormId" name="regRoomFundsSelect" method="POST"> <input type="hidden" id="registrySpaceRoomId" name="registrySpaceRoom"> <input type="hidden" id="registryCBRoomCountId" name="registryCBRoomCount" value="0"> </form>
		<form action="registrySelectedFinishingTouches" id="finishingTouchesFormId" name="finishingTouchesFormName" method="POST"> <input type="hidden" id="finishingTouchesNameId" name="finishingTouchesName"> <input type="hidden" id="registryCBRoomCountId" name="registryCBRoomCount" value="0"> </form>
      	
		<script type="text/javascript" src="resources/js/file_upload.js"></script>
		</body>
</html>
