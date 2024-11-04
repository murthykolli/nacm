<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
	<style type="text/css">
	.reg_dsn_curated_cb_rigtext_dspl { font: 0.9em/1.25em Georgia; color: black; display: block; letter-spacing: 2px; margin-left: 0px; text-transform: uppercase; }
	 
	.image_mouse_over_dsp { box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.3), 0 2px 5px 0 rgba(0, 0, 0, 0.25); position: relative; }	
	.image { opacity: 1; width: 100%; height: auto; transition: .5s ease; backface-visibility: hidden; }
	.middle { transition: .5s ease; opacity: 0; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); text-align: center; }
	.image_mouse_over_dsp:hover { box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.4), 0 6px 18px 0 rgba(0, 0, 0, 0.35); cursor: pointer; }
	.image_mouse_over_dsp:hover .middle { opacity: 1; }
	.text { background-color: #36669b; font: 500 0.95em/0.25em Georgia; letter-spacing: 1px; color: white; padding: 14px 24px; cursor: pointer; }
	
	.view_show_image_disply_cl { width: 746px; object-fit: scale-down; position: relative; object-position: 50% 50%; object-position: 0 0; overflow: auto; overflow-y: hidden; overflow-x: hidden; }
	
	.view_product_for_dccb_cl { font: 0.95em/1.25em Georgia; letter-spacing: 1px; color: black; text-transform: uppercase; text-decoration: none; outline: none; }
	.view_product_for_dccb_cl:hover { color: #36669b; text-decoration: none; outline: none; }
	
	.reg_con_cur_bod_submit_Btn { font: 500 0.9em/1.5em Georgia; display: block; margin: 0px auto; vertical-align: middle; background-color: #e7e6e6; color: black; display: inline-block; text-transform: uppercase; padding: 3px 25px; outline: none; border: none; letter-spacing: 2px; cursor: pointer; box-shadow: -2px -2px 3px #bbbbbb; white-space: nowrap; }
	.reg_con_cur_bod_submit_Btn:hover { background-color: #ff3b3b; color: white; cursor: pointer; }
	.reg_con_cur_bod_submit_Btn_flt { font: 500 1.3em/1.5em Georgia; }
	
	.reg_dsn_curated_cb_title_text h4 { font: bold 1em/1.25em Georgia; color: black; display: block; border-bottom: 1px solid #ff3b3b; padding-bottom: 5px; letter-spacing: 2px; width: 205px; }
	.reg_dsn_curated_cb_title_fl { font: bold 1.35em/1.25em Georgia; }
	.reg_dsn_curated_cb_title_ll { font: bold 1.0em/1.25em Georgia; }
	
	.reg_con_bord_top_radio_but_box { background: #e7e6e6; border: 1px solid #e7e6e6; padding: 5px 8px; width: auto; }
	.reg_con_bord_top_txt_fl { font: 1.3em/1.25em Georgia; letter-spacing: 1px; color: black; }
	.reg_con_bord_top_txt_ll { font: 1.05em/1.25em Georgia; letter-spacing: 1px; color: black; }
	.image_disply_proper_cl { width: 100%; height: auto; max-height: 47vh; object-fit: scale-down; position: relative; object-position: 50% 50%; object-position: 0 0; overflow: auto; overflow-y: hidden; overflow-x: hidden; }
	.first_letter_dsp { font-size: 18px;}
	
	.cb_room_selection_text { font: 0.95em/1.6em Georgia; color: black; letter-spacing: 1px; text-transform: uppercase; cursor: pointer; text-decoration: none; outline: none; }
	.cb_room_selection_text:hover { font: 0.95em/1.6em Georgia; color: red; letter-spacing: 1px; text-transform: uppercase; text-decoration: underline; outline: none; }
	.cb_room_selection_text_fl { font: 1.16em/1.6em Georgia; }
	.reg_dsn_con_bord_and_ft_bot_bar { border-bottom: 1px solid black; padding-bottom: 3px; width: auto; margin-left: 6px; width: 125px; margin-top: 6px; margin-bottom: 15px; }
	</style>
	
	
	<script type="text/javascript">
	
	$(document).ready(function () {
		var registrySpaceRoom1 = "<c:out value="${registrySpaceRoom}"/>";
		var registrySpaceRoomVal = registrySpaceRoom1.replace(" ", "_");
		$("#"+registrySpaceRoomVal).css("color","red");
		$("#"+registrySpaceRoomVal).css("text-decoration","underline");
		
	});
	
		
	function typeOfRoom(roomName) { 		
		document.regRoomSelect.registrySpaceRoom.value = roomName;
		$("#roomImgsFormId").submit();
	}
	
	function viewProductsForRegistry(id, count) {
		document.viewProductsFormName.registryViewProducts.value = id;
		document.viewProductsFormName.registryCBRoomCount.value = count;
		$("#viewProductsFormNameId").submit();
	}
	function typeOfFinishingTouches(finishingTouchesName) { document.finishingTouchesFormName.finishingTouchesName.value = finishingTouchesName; $("#finishingTouchesFormId").submit(); }
	</script>
	</head>
	
		<body>		
		
			<div id="mmenu_screen" class="container-fluid main_container" style="margin-top: 100px; margin-bottom: 60px;">

		        <div class="row" style="margin-top: 0px;">
		           	<div class="col-md-12 col-sm-12">
		           		<div class="row">
			           		<div class="col-md-12 col-sm-12">
				           		<div style="padding: 5px;">
			        				<div class="reg_con_bord_top_radio_but_box" style="margin-top: 5px; margin-right: 20px;"><font class="reg_con_bord_top_txt_fl">R</font><font class="reg_con_bord_top_txt_ll">OOMS</font></div>
					        		<div style="padding-left: 8px; margin-top: 15px;">
							        	<div id="Living_Room" class="cb_room_selection_text" onclick="typeOfRoom('Living Room');"><font class="cb_room_selection_text_fl">L</font>iving <font class="cb_room_selection_text_fl">R</font>oom</div>
							        	<div id="Dining_Room" class="cb_room_selection_text" onclick="typeOfRoom('Dining Room');"><font class="cb_room_selection_text_fl">D</font>ining <font class="cb_room_selection_text_fl">R</font>oom</div>
							        	<div id="Bedroom" class="cb_room_selection_text" onclick="typeOfRoom('Bedroom');"><font class="cb_room_selection_text_fl">B</font>edroom</div>
							        	<div id="Home_Office" class="cb_room_selection_text" onclick="typeOfRoom('Home Office');"><font class="cb_room_selection_text_fl">H</font>ome <font class="cb_room_selection_text_fl">O</font>ffice</div>
							        	<div id="Entryway" class="cb_room_selection_text" onclick="typeOfRoom('Entryway');"><font class="cb_room_selection_text_fl">E</font>ntryway</div>
							        	<div id="Nursery" class="cb_room_selection_text" onclick="typeOfRoom('Nursery');"><font class="cb_room_selection_text_fl">N</font>ursery</div>
							        	<div id="Kids_Bedroom" class="cb_room_selection_text" onclick="typeOfRoom('Kids Bedroom');"><font class="cb_room_selection_text_fl">K</font>ids <font class="cb_room_selection_text_fl">B</font>edroom</div>
							        	<div id="Outdoor_Space" class="cb_room_selection_text" onclick="typeOfRoom('Outdoor Space');"><font class="cb_room_selection_text_fl">O</font>utdoor <font class="cb_room_selection_text_fl">S</font>pace</div>
							        								        	
										<div class="reg_dsn_con_bord_and_ft_bot_bar"></div>										
										<div id="Finishing_Touches" class="cb_room_selection_text" onclick="typeOfFinishingTouches('Finishing Touches');"><font class="cb_room_selection_text_fl">F</font>inishing <font class="cb_room_selection_text_fl">T</font>ouches</div>
																		
						        	</div>
					        	</div>
				           	</div>
				           	
				           	 
				           	<div class="col-md-12 col-sm-12">				           		        	
				        	<div class="row" style="margin-top: 20px; padding-bottom: 15px; margin-left: -2px;">
					        	<div class="col-md-12 col-sm-12">
						        	<div align="left" class="reg_dsn_curated_cb_title_text text-left">
							            <h4><font class="reg_dsn_curated_cb_title_fl">C</font><font class="reg_dsn_curated_cb_title_ll">URATED </font> <font class="reg_dsn_curated_cb_title_fl">D</font><font class="reg_dsn_curated_cb_title_ll">ESIGN </font><font class="reg_dsn_curated_cb_title_fl">B</font><font class="reg_dsn_curated_cb_title_ll">OARDS</font></h4>
							        </div>
						        </div>
				        
				        		<div align="left" class="col-md-12 col-sm-12">
						        	<div class="row" style="margin-top: 25px; margin-left: 0px;">
							        	<form action="createRoomFunds">
											<h4><button class="reg_con_cur_bod_submit_Btn" id="addBoardsId"><font class="reg_con_cur_bod_submit_Btn_flt">&nbsp;A</font>DD <font class="reg_con_cur_bod_submit_Btn_flt">R</font>OOM <font class="reg_con_cur_bod_submit_Btn_flt">F</font>UNDS&nbsp;</button></h4>
										</form>
								  	</div>
						        </div>
						        
				        		<div align="left" class="col-md-12 col-sm-12">
						        	<div class="row" style="margin-top: 20px; margin-left: 0px;">
							        	<form action="createCashFunds">
											<h4><button class="reg_con_cur_bod_submit_Btn" id="addBoardsId"><font class="reg_con_cur_bod_submit_Btn_flt">&nbsp;A</font>DD <font class="reg_con_cur_bod_submit_Btn_flt">C</font>ASH <font class="reg_con_cur_bod_submit_Btn_flt">F</font>UNDS&nbsp;&nbsp;</button></h4>
										</form>
								  	</div>
						        </div>
						        
						        
				        		<div align="left" class="col-md-12 col-sm-12">
						        	<div class="row" style="margin-top: 25px; margin-left: 2px;">
							        	<div class="reg_dsn_curated_cb_rigtext_dspl"> ${registrySpaceRoom} </div>
								  	</div>
						        </div>
						        
				        		<div align="left" class="col-md-12 col-sm-12">
						        	<div class="row" style="margin-top: 5px; margin-left: 2px;">
							        	<font style="font: bold 1.15em/0.9em Georgia;">${regTotalResultsCount}</font> <font style="font: 1.25em/1.25em Georgia;">R</font>ESULTS
								  	</div>
						        </div>
						        						        
			        		</div>
			        
						        
					<div style="margin-top: 5px;">		        	
		        			
					<% if (null != session.getAttribute("registryViewDesignsCBIdsListInSn")) {
					   @SuppressWarnings("rawtypes")
				       ArrayList registryViewDesignsCBIdsList = (ArrayList) session.getAttribute("registryViewDesignsCBIdsListInSn");
				       if (null != registryViewDesignsCBIdsList && registryViewDesignsCBIdsList.size() > 0) {
						   
					   if (null != session.getAttribute("registryViewDesignsCBImagesListInSn")) {
					   @SuppressWarnings("rawtypes")
			           ArrayList registryViewDesignsCBImagesList = (ArrayList) session.getAttribute("registryViewDesignsCBImagesListInSn");
					   if (null != registryViewDesignsCBImagesList && registryViewDesignsCBImagesList.size() > 0) {						   
			    	%>
					 
					<div class="row">
					<% 	for(int i=0; i<registryViewDesignsCBIdsList.size(); i++) { int count = (i + 1);
						byte[] conBoardsImagesFromDB = (byte[]) registryViewDesignsCBImagesList.get(i);
			        	String conceptBoardsBigImage = null;
			        	if(null != conBoardsImagesFromDB) {
				        	String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(conBoardsImagesFromDB);
				        	conceptBoardsBigImage = "data:image/jpg;base64," +b64;
			        	}					
					%>
			        	<div class="col-md-12 col-sm-12" id="imageDspId<%=count%>" style="margin-bottom: 30px; padding: 0px 30px;">		        	
				        	<div onclick="viewProductsForRegistry('<%=registryViewDesignsCBIdsList.get(i)%>', '<%=i%>');">
					        	<div class="image_mouse_over_dsp" align="center">
					        	<img src="<%=conceptBoardsBigImage%>" class="image_disply_proper_cl">
					        	
					        	<div class="middle">
			    					<div class="text">VIEW</div>
			  					</div>
			  					</div>
				        	</div>			        	
			        	</div>			        
		 			<% } %>
		 			</div>
		 			
					<% } } } } %>
					</div>
					</div>
				           	
				    </div>
		           	</div> 
		           	  		            
		        </div>
		        
			</div>
        
	        <form action="registryViewAllDesigns" id="roomImgsFormId" name="regRoomSelect" method="POST">
                <input type="hidden" id="registrySpaceRoomId" name="registrySpaceRoom">               
            </form>
            
	        <%-- <form action="registrySelectedStyleAndRoomBothRed" id="styleImgsFormId" name="regStyleSelect" method="POST">
                <input type="hidden" id="registrySpaceRoomId" name="registrySpaceRoom" value="${registrySpaceRoom}">
                <input type="hidden" id="registryStyleNameId" name="registryStyleName">
                <input type="hidden" id="registryPriceId" name="registryPrice" value="${registryPrice}">                 
            </form> --%>
            
	        <%-- <form action="registrySelectedStyleRoomAndPriceRed" id="priceImgsFormId" name="regPriceSelect" method="POST">
                <input type="hidden" id="registrySpaceRoomId" name="registrySpaceRoom" value="${registrySpaceRoom}">
                <input type="hidden" id="registryStyleNameId" name="registryStyleName" value="${registryStyleName}">
                <input type="hidden" id="registryPriceId" name="registryPrice">                 
            </form> --%>            
            
	        <form action="viewDesignSelectedConcepts" id="viewProductsFormNameId" name="viewProductsFormName" method="POST">
                <input type="hidden" id="registryViewProductsId" name="registryViewProducts">
                <input type="hidden" id="registryCBRoomCountId" name="registryCBRoomCount">
                <input type="hidden" id="registrySpaceRoomId" name="registrySpaceRoom" value="${registrySpaceRoom}">
                <%-- <input type="hidden" id="registryStyleNameId" name="registryStyleName" value="${registryStyleName}">
                <input type="hidden" id="registryPriceId" name="registryPrice" value="${registryPrice}"> --%>               
            </form>
                        
	        <%-- <form action="registryUnCheckStyleAndPriceBoxesRed" id="unCheckStyleAndPriceFormId" method="get">
                <input type="hidden" id="registrySpaceRoomId" name="registrySpaceRoom" value="${registrySpaceRoom}">                                
            </form> --%>
            <form action="registrySelectedFinishingTouches" id="finishingTouchesFormId" name="finishingTouchesFormName" method="POST"> <input type="hidden" id="finishingTouchesNameId" name="finishingTouchesName"> <input type="hidden" id="registryCBRoomCountId" name="registryCBRoomCount" value="0"> </form>
            
		</body>
</html>