
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<script type="text/javascript">
 	$(document).ready(function() {
 		
 		var textFieldRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 -#/_().&amp;]*$/;		

	 	$("#eventInfoChangesButtId").click(function (){
	    var result = true;    
		if($("#eventTypeId").val() !== ""){ $("#eventTypeIdLabel").css("color","black");
	    } else{ $("#eventTypeIdLabel").css("color","red"); result=false; }

		if($("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){
			var evntDate = $("#eventMonthId").val() + "/" + $("#eventDayId").val() + "/" + $("#eventYearId").val();
			var fullDate = new Date();
			var twoDigitMonth = ((fullDate.getMonth().length+1) === 1)? (fullDate.getMonth()+1) :(fullDate.getMonth()+1);		  
			var currentDate = (twoDigitMonth) + "/" + fullDate.getDate() + "/" + fullDate.getFullYear();
			$("#eventDateIdLabel").css("color","#5c5c5c");
			
			if((Date.parse(currentDate)) > (Date.parse(evntDate))){
			    alert("Please select a future date for your event.");
			    result=false;
			}	
			
	    } else{ $("#eventDateIdLabel").css("color","red"); result=false; }
		
		/* if($("#eventStateId").val() !== ""){ $("#eventStateIdLabel").css("color","black");
	    } else{ $("#eventStateIdLabel").css("color","red"); result=false; } */
						
		return result;
		});		

	 	$("#eventTypeId").change(function(){ 	
	 	if(textFieldRegExp.test(this.value)){ $("#eventTypeIdLabel").css("color","black");
	    } else{ $("#eventTypeIdLabel").css("color","red"); result=false; } 	
	 	});
	 	
	 	/* $("#eventStateId").change(function(){ 	
	 	if(textFieldRegExp.test(this.value)){ $("#eventStateIdLabel").css("color","black");
	 	} else{ $("#eventStateIdLabel").css("color","red"); result=false; } 	
	 	}); */
	 	
	 	$("#eventMonthId").change(function(){ 	
	 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#eventDateIdLabel").css("color","black");	 	
	 	} else{ $("#eventDateIdLabel").css("color","red"); result=false; }
	 	noOfdaysDisplay(this.value);
	 	});

	 	$("#eventDayId").change(function(){ 	
	 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#eventDateIdLabel").css("color","black");
	    } else{ $("#eventDateIdLabel").css("color","red"); result=false; } 	
	 	});

	 	$("#eventYearId").change(function(){ 	
	 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#eventDateIdLabel").css("color","black");
	    } else{ $("#eventDateIdLabel").css("color","red"); result=false; } 	
	 	});
	 	
	 		    
	    var eventsType = "<c:out value="${eventType}"/>";
		/* var eventsState = "<c:out value="${eventState}"/>"; */
		var eventsDate = "<c:out value="${eventDay}"/>";
		var eventDate = eventsDate.split("/");
		
		$("[name=eventType]").val(eventsType);
		/* $("[name=eventState]").val(eventsState); */
		
		$("[name=eventMonth]").val(eventDate[0]);
		noOfdaysDisplay(eventDate[0]);
		$("[name=eventDay]").val(eventDate[1]);		
		
	    var regSuccSave1 = "<c:out value="${regSuccSave}"/>";
	    if(regSuccSave1 == "Event Info Saved") {
	    	alert("Your Changes Have Been Saved")
	    }
	    
	    var ddlYears = $("#eventYearId");        
        var currentYear = (new Date()).getFullYear(); 
        for (var i = currentYear; i <= currentYear+50; i++) {
            var option = $("<option />");
            option.html(i);
            option.val(i);
            ddlYears.append(option);
        }
        $("[name=eventYear]").val(eventDate[2]);
        
               
		
 	});
	
	function noOfdaysDisplay(month) {
		$('#eventDayId')[0].options.length = 0;
		var currentYearName = (new Date()).getFullYear();
	 	var getDaysInMonth = new Date(currentYearName, $("#eventMonthId").val(), 0).getDate();       	
	   	var noOfDaysDsp = $("#eventDayId");
	   	noOfDaysDsp.append("<option value=''>--Day--</option>");
	   	for (var i = 1; i <= getDaysInMonth; i++) {
	        var option = $("<option />");
	        option.html(i);
	        option.val(i);
	        noOfDaysDsp.append(option);            
	    }
	}
    </script>
    
	</head>
	
		<body>
				
		<div id="mainframe" class="section-content">
        <div class="container">
      
      	<div class="row">
	        <div class="col-md-12 col-sm-12">
	        	<div class="service-item">                        
	            	<div class="service-description">
	        			<div align="left" style="margin-top: -20px; margin-left: 10px;">        			
							<div class="registry_prof_my_acc_title"><h2>MY ACCOUNT</h2></div>
	        			</div>
	        		</div>
	        	</div>
	        </div>
    	</div>    	
    
<!-- Left Code Start -->
      	<div class="row">
	        <div class="col-md-12 col-sm-12">
	        	<div class="service-item">                        
	            	<div class="service-description">
	        			<div align="left" style="margin-top: -20px; margin-left: 10px;">        			
							<div class="regi_prof_left_hd_text_dspl"><h3>ACCOUNT DETAILS</h3></div>
							<div class="top_adjustment_5"><a href="registryMyAccount" class="regi_prof_left_link_text_dspl">CONTACT INFO</a></div>
							<div class="top_adjustment_5"><a href="registryPasswordChange" class="regi_prof_left_link_text_dspl">CHANGE PASSWORD</a></div>
							
							<div class="regi_prof_left_hd_text_dspl top_adjustment_20"><h3>EVENT DETAILS</h3></div>
							<div class="top_adjustment_5"><a href="#" class="regi_prof_left_link_text_hover_dspl">EVENT INFO</a></div>
							
							<div class="regi_prof_left_hd_text_dspl top_adjustment_20"><h3>REGISTRY SETTINGS</h3></div>
							<div class="top_adjustment_5"><a href="registryURLInfoChange" class="regi_prof_left_link_text_dspl">URL</a></div>
							<div class="top_adjustment_5"><a href="registryPrivacyInfoChange" class="regi_prof_left_link_text_dspl">PRIVACY</a></div>
							
							<div class="regi_prof_left_hd_text_dspl top_adjustment_20"><h3>GIFT TRACKER</h3></div>
							<div class="top_adjustment_5"><a href="regiShippingInfoDsp" class="regi_prof_left_link_text_dspl">SHIPPING INFO</a></div>
							<div class="top_adjustment_5"><a href="regiMyOrderDsp" class="regi_prof_left_link_text_dspl">MY ORDERS</a></div>
							<div class="top_adjustment_5"><a href="regiGiftsReceivedDsp" class="regi_prof_left_link_text_dspl">GIFTS RECEIVED</a></div>
							<div class="top_adjustment_5"><a href="regiRoomFundsDsp" class="regi_prof_left_link_text_dspl">ROOM FUNDS</a></div>
							<div class="top_adjustment_5"><a href="regiCashFundsDsp" class="regi_prof_left_link_text_dspl">CASH FUNDS</a></div>
							<div class="top_adjustment_5"><a href="regiStoreCreditDsp" class="regi_prof_left_link_text_dspl">STORE CREDIT</a></div>
							
	        			</div>
	        		</div>
	        	</div>
	        </div>
	   	</div>
	        
<!-- Left Code End -->

	            
	  	<div class="row">
	        <div class="col-md-12 col-sm-12">
	        	<div class="service-item">                        
	            	<div class="service-description">	        			
	        			
	        		<div class="row">
				        <div class="col-md-12 col-sm-12">
				        	<div class="service-item">                        
				            	<div class="service-description reg_pro_left_adj_disp">
				        			<div align="left" style="margin-top: -20px;">        			
										<div class="registry_prof_title"><h2>Event Info</h2></div>
				        			</div>
				        		</div>
				        	</div>
				        </div>
			    	</div>
			    	
			    	
	        		<form action="registrantEventInfoUpdate" method="post">			        
			        <div class="row">
				        <div class="col-md-12 col-sm-12">
				        	<div class="service-item">                        
				            	<div class="service-description reg_pro_left_adj_disp">
									<div align="left" style="margin-top: -20px;">
									<table><tbody>
									<tr><td class="create_regy_text_dsp">EVENT TYPE: <font id="eventTypeIdLabel" class="reqird_regy_text_dsp">required</font></td></tr>
									
									<tr><td><select id="eventTypeId" name="eventType" class="cret_regy_select_box"> 
									<option value=''>----------Select Event Type----------</option>	
								    <option value='Wedding'>Wedding</option> <option value='CommitmentCeremony'>Commitment Ceremony</option> <option value='Anniversary'>Anniversary</option> <option value='Housewarming'>Housewarming</option> <option value='Birthday'>Birthday</option> <option value='BridalShower'>Bridal Shower</option> <option value='BabyShower'>Baby Shower</option> <option value='Celebration'>Celebration</option>   
									</select></td></tr>
									
									<!-- <tr style="height: 5px;"><td></td></tr>
									<tr><td class="create_regy_text_dsp">STATE: <font id="eventStateIdLabel" class="reqird_regy_text_dsp">required</font></td></tr>
									<tr><td class="create_regy_text_dsp">			
									<select id="eventStateId" name="eventState" class="cret_regy_select_box"> <option value="">----------------State Name------------------</option><option value="Alabama">Alabama</option><option value="Alaska">Alaska</option><option value="Arizona">Arizona</option><option value="Arkansas">Arkansas</option><option value="California">California</option><option value="Colorado">Colorado</option><option value="Connecticut">Connecticut</option><option value="Delaware">Delaware</option><option value="District of Columbia">District of Columbia</option><option value="Florida">Florida</option><option value="Georgia">Georgia</option><option value="Hawaii">Hawaii</option><option value="Idaho">Idaho</option><option value="Illinois">Illinois</option><option value="Indiana">Indiana</option><option value="Iowa">Iowa</option><option value="Kansas">Kansas</option><option value="Kentucky">Kentucky</option><option value="Louisiana">Louisiana</option><option value="Maine">Maine</option><option value="Maryland">Maryland</option><option value="Massachusetts">Massachusetts</option><option value="Michigan">Michigan</option><option value="Minnesota">Minnesota</option><option value="Mississippi">Mississippi</option><option value="Missouri">Missouri</option><option value="Montana">Montana</option><option value="Nebraska">Nebraska</option><option value="Nevada">Nevada</option><option value="New Hampshire">New Hampshire</option><option value="New Jersey">New Jersey</option><option value="New Mexico">New Mexico</option><option value="New York">New York</option><option value="North Carolina">North Carolina</option><option value="North Dakota">North Dakota</option><option value="Ohio">Ohio</option><option value="Oklahoma">Oklahoma</option><option value="Oregon">Oregon</option><option value="Pennsylvania">Pennsylvania</option><option value="Rhode Island">Rhode Island</option><option value="South Carolina">South Carolina</option><option value="South Dakota">South Dakota</option><option value="Tennessee">Tennessee</option><option value="Texas">Texas</option><option value="Utah">Utah</option><option value="Vermont">Vermont</option><option value="Virginia">Virginia</option><option value="Washington">Washington</option><option value="West Virginia">West Virginia</option><option value="Wisconsin">Wisconsin</option><option value="Wyoming">Wyoming</option></select>			
									</td></tr> -->
									</tbody></table>
									
									<table><tbody>
					            	<tr><td class="create_regy_text_dsp">EVENT DATE: <font id="eventDateIdLabel" class="reqird_regy_text_dsp">required</font></td></tr>
					            	</tbody></table>
									<table><tbody>
									<tr>
									<td><select id="eventMonthId" name="eventMonth" class="cret_regy_select_sub_box1"> 
								    <option value=''>---Month---</option>
								    <option value='1'>January</option>
								    <option value='2'>February</option>
								    <option value='3'>March</option>
								    <option value='4'>April</option>
								    <option value='5'>May</option>
								    <option value='6'>June</option>
								    <option value='7'>July</option>
								    <option value='8'>August</option>
								    <option value='9'>September</option>
								    <option value='10'>October</option>
								    <option value='11'>November</option>
								    <option value='12'>December</option>
									</select></td>
											
									<td><select id="eventDayId" name="eventDay" class="cret_regy_select_sub_box2"> 
								    <option value=''>--Day--</option>
								    </select></td>
									
									<td><select id="eventYearId" name="eventYear" class="cret_regy_select_sub_box3">
									<option value=''>---Year---</option>
									</select></td></tr>
																
									</tbody></table>
									
									
									<table>
									<tr style="height: 25px;"><td></td></tr>
	                                <tr><td><h4><button class="reg_profile_save_subt_Btn" id="eventInfoChangesButtId">SAVE CHANGES</button></h4></td></tr>
	
	                            	</table>									
									</div>			        			
				        		</div>
				        	</div>
				        </div>
			        
			        </div>
			        </form>
	        		

	        		</div>
	        	</div>
	        </div>
    	</div>
    	
    	<div style="margin-top: -100px;"></div>		
		</div> </div>		     
		</body>
</html>