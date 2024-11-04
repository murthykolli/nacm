
$(document).ready(function(){ 		
 	var textFieldRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 -#/_().&amp;]*$/; 	
 	var emailRegExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.[A-Za-z]{2,}$/;
 	var phoneRegExp = /^\(?(\d{3})\)?[-]?(\d{3})[-]?(\d{4})$/;
 	var passwordRegExp = /^(?=.*[\d!@#$%\^*()_\-+=\[{\]};:|\./])(?=.*[a-z0-9]).{8,30}$/;
 	
 	
 	$("#page1NextPageDispRefId").click(function (){
    	$("#page1DivDisplayRefId").hide();
    	$("#page2DivDisplayRefId").show();    	
	});
	
	$("#page2PreviousPageDispRefId").click(function (){
    	$("#page1DivDisplayRefId").show();
    	$("#page2DivDisplayRefId").hide();    	
	});
	
	$("#page2NextPageDispRefId").click(function (){
		var returnStatus = true;
 	    var next2PageStatus1;
 	    var next2PageStatus2; 	     	    
 		if($("#eventTypeId").val() !== ""){ $("#eventTypeIdLabel").css("color","black"); next2PageStatus1 = "Next1";
 	    } else{ $("#eventTypeIdLabel").css("color","red"); next2PageStatus1 = ""; returnStatus1 = false; }

 		if($("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){
 			var evntDate = $("#eventMonthId").val() + "/" + $("#eventDayId").val() + "/" + $("#eventYearId").val();
 			var fullDate = new Date();
 			var twoDigitMonth = ((fullDate.getMonth().length+1) === 1)? (fullDate.getMonth()+1) :(fullDate.getMonth()+1);		  
 			var currentDate = (twoDigitMonth) + "/" + fullDate.getDate() + "/" + fullDate.getFullYear();
 			$("#eventDateIdLabel").css("color","black");
 			next2PageStatus2 = "Next2";
 			 			
 			if((Date.parse(currentDate)) > (Date.parse(evntDate))){
 			   alert("Please select a future date for your event.");
 			   next2PageStatus2 = "";
 			   returnStatus = false;
 			} 			
 	    } else{ 
 	    	if($("#dateCheckOptionId").prop("checked") == true){
 	    		next2PageStatus2 = "Next2";
 	    		$("#eventDateIdLabel").css("color","black");
 	    		$("#eventMonthId").val(null);
 	 			$("#eventDayId").val(null);
 	 			$("#eventYearId").val(null);
 	 			$("#regDateCheckOptionId").val("Date coming soon");
 	        } else {noOfdaysDisplay(eventMonth1);
 	 	    
 	        	next2PageStatus2 = ""; $("#eventDateIdLabel").css("color","red"); returnStatus = false; 
 	        	}
 	    } 		
 		if((next2PageStatus1 === "Next1") && (next2PageStatus2 === "Next2")) {
 			$("#page2DivDisplayRefId").hide();
 	    	$("#page3DivDisplayRefId").show();
 	    	$("#regEventTypeId").val($("#eventTypeId").val());
 	    	$("#regEventMonthId").val($("#eventMonthId").val());
 			$("#regEventDayId").val($("#eventDayId").val());
 			$("#regEventYearId").val($("#eventYearId").val());
 		}
 		return returnStatus;
	});

	$("#page3PreviousPageDispRefId").click(function (){
    	$("#page2DivDisplayRefId").show();
    	$("#page3DivDisplayRefId").hide();    	
	});

	$("#page3NextPageDispRefId").click(function (){
		var result = true;
		var next3PageStatus1;
 	    var next3PageStatus2;
		if(textFieldRegExp.test($("#regFirstNameId").val())){ next3PageStatus1 = "Next1"; $("#regFirstNameId").css("border-bottom-color","black");
	    } else{ $("#regFirstNameId").css("border-bottom-color","red"); next3PageStatus1 = ""; result=false; }

		if(textFieldRegExp.test($("#regLastNameId").val())){ next3PageStatus2 = "Next2"; $("#regLastNameId").css("border-bottom-color","black");
	    } else{ $("#regLastNameId").css("border-bottom-color","red"); next3PageStatus2 = ""; result=false; }
		
		if((next3PageStatus1 === "Next1") && (next3PageStatus2 === "Next2")) {
			$("#coRegiFirstNameId").val($("#coRegFirstNameId").val());
			$("#coRegiLastNameId").val($("#coRegLastNameId").val());
			
			var firstName = $("#regFirstNameId").val();
 		 	var coFirstName = $("#coRegFirstNameId").val();
 		 	if(firstName != "") {
 		 		var firstNameLC = firstName.toLowerCase();
 		 		$("#yourAddressId").val(firstNameLC);
 		 	}
 		 	
 		 	if(firstName != "" && coFirstName != "") {
 		 		var fullName = firstName + "and" + coFirstName;
 		 		var fullNameLC = fullName.toLowerCase();
 	 	 		$("#yourAddressId").val(fullNameLC);
 		 	}
 		 	$("#regiFirstNameId").val($("#regFirstNameId").val());
 		 	$("#regiLastNameId").val($("#regLastNameId").val());
			$("#page3DivDisplayRefId").hide();
	    	$("#page4DivDisplayRefId").show();
 		}
		return result;		  	
	});

	$("#page4PreviousPageDispRefId").click(function (){
    	$("#page3DivDisplayRefId").show();
    	$("#page4DivDisplayRefId").hide();    	
	});

	$("#page4NextPageDispRefId").click(function (){
		var result = true;
		var next4PageStatus1;
 	    var next4PageStatus2;
 	    var next4PageStatus3;
	    
		if(emailRegExp.test($("#regEmailId").val())){ next4PageStatus1 = "Next1"; $("#regEmailId").css("border-bottom-color","black");
	    } else{ $("#regEmailId").css("border-bottom-color","red"); next4PageStatus1 = ""; result=false; }

		if(passwordRegExp.test($("#createPasswordId").val())){ next4PageStatus2 = "Next2"; $("#createPasswordId").css("border-bottom-color","black");
	    } else{ $("#createPasswordId").css("border-bottom-color","red"); next4PageStatus2 = ""; result=false; }

		if(passwordRegExp.test($("#verifyPasswordId").val())){ next4PageStatus3 = "Next3"; $("#verifyPasswordId").css("border-bottom-color","black");
	    } else{ $("#verifyPasswordId").css("border-bottom-color","red"); next4PageStatus1 = ""; result=false; }
		
		if($("#verifyPasswordId").val() === $("#createPasswordId").val()){ $("#verifyPasswordId").css("border-bottom-color","black");
			if((next4PageStatus1 === "Next1") && (next4PageStatus2 === "Next2") && (next4PageStatus3 === "Next3")) {
				$("#regiEmailId").val($("#regEmailId").val());
				$("#regCreatePasswordId").val($("#createPasswordId").val());
				$("#page4DivDisplayRefId").hide();
		    	$("#page5DivDisplayRefId").show();
	 		}		
		} else{ $("#verifyPasswordId").css("border-bottom-color","red"); alert("Please enter the same Password as above"); result=false; }
		
		return result;
		  	
	});

	$("#page5PreviousPageDispRefId").click(function (){		
    	$("#page4DivDisplayRefId").show();
    	$("#page5DivDisplayRefId").hide();    	
	});
	

	$("#page5NextPageDispRefId").click(function (){		
		$("#page5DivDisplayRefId").hide();
    	$("#page6DivDisplayRefId").show();  	
	});

	$("#page6PreviousPageDispRefId").click(function (){		
    	$("#page5DivDisplayRefId").show();
    	$("#page6DivDisplayRefId").hide();    	
	});
 	
 	
 	$("#eventTypeId").click(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#eventTypeIdLabel").css("color","black");
    } else{ $("#eventTypeIdLabel").css("color","red"); result=false; } 	
 	});
 	
 	$("#eventMonthId").click(function(){ 	
 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#dateCheckOptionId").prop("checked", false); $("#eventDateIdLabel").css("color","black");
    } else{ $("#eventDateIdLabel").css("color","red"); result=false; } 
 	noOfdaysDisplay(this.value);
 	});

 	$("#eventDayId").click(function(){ 	
 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#dateCheckOptionId").prop("checked", false); $("#eventDateIdLabel").css("color","black");
    } else{ $("#eventDateIdLabel").css("color","red"); result=false; } 	
 	});

 	$("#eventYearId").click(function(){ 	
 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#dateCheckOptionId").prop("checked", false); $("#eventDateIdLabel").css("color","black");
    } else{ $("#eventDateIdLabel").css("color","red"); result=false; } 	
 	});
 	
 	$("#regFirstNameId").keyup(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#regFirstNameId").css("border-bottom-color","black");
    } else{ $("#regFirstNameId").css("border-bottom-color","red"); result=false; } 	
 	});

 	$("#regLastNameId").keyup(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#regLastNameId").css("border-bottom-color","black");
    } else{ $("#regLastNameId").css("border-bottom-color","red"); result=false; } 	
 	});

 	$("#regEmailId").keyup(function(){ 	
 	if(emailRegExp.test(this.value)){ $("#regEmailId").css("border-bottom-color","black");
    } else{ $("#regEmailId").css("border-bottom-color","red"); result=false; } 	
 	});

 	$("#createPasswordId").keyup(function(){ 	
 	if(passwordRegExp.test(this.value)){ $("#createPasswordId").css("border-bottom-color","black");
    } else{ $("#createPasswordId").css("border-bottom-color","red"); result=false; } 	
 	});

 	$("#verifyPasswordId").keyup(function(){ 	
 	if($("#verifyPasswordId").val() === $("#createPasswordId").val()){ $("#verifyPasswordId").css("border-bottom-color","black");
    } else{ $("#verifyPasswordId").css("border-bottom-color","red"); result=false; }
 	});
 	
 	$("#createPasswordId").change(function() {
 	if(!(passwordRegExp.test(this.value))){
 	$("#createPasswordId").val("");
 	alert("Password must be a minimum of 8 characters with at least one digit or special character");
 	}
 	});
 			
	$("#letsDoThisReffId").click(function () {				
		var yourAddressVal = $("#yourAddressId").val();
		var socialMediaReff = $("#socialMediaReffId").val();
		$("#regSocialMediaId").val(socialMediaReff);
		var vendorCouponCodeReff = $("#vendorCouponCodeId").val();
		$("#regVendorCouponCodeId").val(vendorCouponCodeReff);
		if(yourAddressVal !== "") {
			$("#regYourAddressId").val(yourAddressVal);
		} else {
			alert("Please enter your address");
			return false;
		}
		
		if($("#checkBoxReffNameId").prop("checked") == false){
			alert("Please accept the terms and privacy policy.");
			return false;
        }		
	});
 	
});


	function checkFirstChar(key, txt) {
	if(key == 32 && txt.value.length<=0) {
	return false;
	}
	else if(txt.value.length>0) {
	if(txt.value.charCodeAt(0) == 32) {
	txt.value=txt.value.substring(1,txt.value.length);
	return true;
	}
	}
	return true;
	}
	
	function numeralsOnly(evt) {
	evt = (evt) ? evt : event;
	var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
	((evt.which) ? evt.which : 0));
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
	return false;
	}
	return true;
	}
	
	function phoneFormat (e,input) {
	evt = e || window.event; /* firefox uses reserved object e for event */
	var pressedkey = evt.which || evt.keyCode;
	var BlockedKeyCodes = new Array(0,8,27,13,9); //8 is backspace key
	var len = BlockedKeyCodes.length;
	var block = false;
	var str = '';
	for (i=0; i<len; i++){
	str=BlockedKeyCodes[i].toString();
	if (str.indexOf(pressedkey) >=0 ) block=true;
	}
	if (block) return true;
	s = input.value;
	if (s.charAt(0) =='+') return false;
	filteredValues = '"`!@#$%^&*()_+|~-=\QWERT YUIOP{}ASDFGHJKL:ZXCVBNM<>?qwertyuiop[]asdfghjkl;zxcvbnm,./\\\'';
	var i;
	var returnString = '';
	for (i = 0; i < s.length; i++) {
	var c = s.charAt(i);
	if ((filteredValues.indexOf(c) == -1) & (returnString.length <  12 )) {
	if (returnString.length==3) returnString +='-';
	if (returnString.length==7) returnString +='-';
	returnString += c;
	}
	}
	input.value = returnString;
	return false;
	}
	 	