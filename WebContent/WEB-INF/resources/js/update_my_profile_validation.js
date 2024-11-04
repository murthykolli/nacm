
$(document).ready(function(){ 		
 	var textFieldRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 -#/_().&amp;]*$/; 	
 	var emailRegExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.[A-Za-z]{2,}$/;
 	var phoneRegExp = /^\(?(\d{3})\)?[-]?(\d{3})[-]?(\d{4})$/;
 	var passwordRegExp = /^(?=.*[\d!@#$%\^*()_\-+=\[{\]};:|\./])(?=.*[a-z0-9]).{8,30}$/;
 	var addrReg = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.&;,-]*$/;
 	var zipReg = /^[0-9]+$/;
 	
 	$("#contSaveButtonId").click(function (){
    var result = true;	
	if(textFieldRegExp.test($("#regFirstNameId").val())){ $("#regFirstNameId").css("border-color","gray");
    } else{ $("#regFirstNameId").css("border-color","red"); result=false; }

	if(textFieldRegExp.test($("#regLastNameId").val())){ $("#regLastNameId").css("border-color","gray");
    } else{ $("#regLastNameId").css("border-color","red"); result=false; }

	if(emailRegExp.test($("#regEmailId").val())){ $("#regEmailId").css("border-color","gray");
    } else{ $("#regEmailId").css("border-color","red"); result=false; }

	if(phoneRegExp.test($("#regPhoneNoId").val())){ $("#regPhoneNoId").css("border-color","gray");
    } else{ $("#regPhoneNoId").css("border-color","red"); result=false; }
			
	return result;
	});
 	
	
 	$("#eventSaveButtonId").click(function (){
    var result = true;    
	if($("#eventTypeId").val() !== ""){ $("#eventTypeIdLabel").css("color","black");
    } else{ $("#eventTypeIdLabel").css("color","red"); result=false; }

	if($("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#eventDateIdLabel").css("color","black");
    } else{ $("#eventDateIdLabel").css("color","red"); result=false; }
	
	if(textFieldRegExp.test($("#eventStateId").val())){ $("#stateNameId").css("border-color","gray");
    } else{ $("#stateNameId").css("border-color","red"); result=false; }
					
	return result;
	});
 	

 	$("#shippingSaveButtonId").click(function (){
    var result = true; 
    
	if(addrReg.test($("#addressLine1Id").val())){ $("#addressLine1LabelId").css("color","black");
    } else{ $("#addressLine1LabelId").css("color","red"); result=false; }

	if(addrReg.test($("#addressLine2Id").val())){ $("#addressLine2LabelId").css("color","black");
    } else{ $("#addressLine2LabelId").css("color","red"); result=false; }

	if(textFieldRegExp.test($("#cityId").val())){ $("#cityLabelId").css("color","black");
    } else{ $("#cityLabelId").css("color","red"); result=false; }

	if(textFieldRegExp.test($("#stateId").val())){ $("#stateLabelId").css("color","black");
    } else{ $("#stateLabelId").css("color","red"); result=false; }

	if(zipReg.test($("#zipCodeId").val())){ $("#zipCodeLabelId").css("color","black");
    } else{ $("#zipCodeLabelId").css("color","red"); result=false; }
			
	return result;
	});
 	

 	$("#eventTypeId").change(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#eventTypeIdLabel").css("color","black");
    } else{ $("#eventTypeIdLabel").css("color","red"); result=false; } 	
 	});
 	
 	$("#eventStateId").change(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#eventStateIdLabel").css("color","black");
 	} else{ $("#eventStateIdLabel").css("color","red"); result=false; } 	
 	});
 	
 	$("#eventMonthId").change(function(){ 	
 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#eventDateIdLabel").css("color","black");
    } else{ $("#eventDateIdLabel").css("color","red"); result=false; } 	
 	});

 	$("#eventDayId").change(function(){ 	
 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#eventDateIdLabel").css("color","black");
    } else{ $("#eventDateIdLabel").css("color","red"); result=false; } 	
 	});

 	$("#eventYearId").change(function(){ 	
 	if(textFieldRegExp.test(this.value) && $("#eventMonthId").val() !== "" && $("#eventDayId").val() !== "" && $("#eventYearId").val() !== ""){ $("#eventDateIdLabel").css("color","black");
    } else{ $("#eventDateIdLabel").css("color","red"); result=false; } 	
 	});

 	$("#regFirstNameId").keyup(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#regFirstNameId").css("border-color","gray");
    } else{ $("#regFirstNameId").css("border-color","red"); result=false; } 	
 	});

 	$("#regLastNameId").keyup(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#regLastNameId").css("border-color","gray");
    } else{ $("#regLastNameId").css("border-color","red"); result=false; } 	
 	});

 	$("#regEmailId").keyup(function(){ 	
 	if(emailRegExp.test(this.value)){ $("#regEmailId").css("border-color","gray");
    } else{ $("#regEmailId").css("border-color","red"); result=false; } 	
 	});

 	$("#regPhoneNoId").keyup(function(){ 	
 	if(phoneRegExp.test(this.value)){ $("#regPhoneNoId").css("border-color","gray");
    } else{ $("#regPhoneNoId").css("border-color","red"); result=false; } 	
 	});

 /*Shipping Address*/

 	$("#addressLine1Id").keyup(function(){ 	
 	if(addrReg.test(this.value)){ $("#addressLine1LabelId").css("color","black");
    } else{ $("#addressLine1LabelId").css("color","red"); result=false; } 	
 	});

 	$("#addressLine2Id").keyup(function(){ 	
 	if(addrReg.test(this.value)){ $("#addressLine2LabelId").css("color","black");
    } else{ $("#addressLine2LabelId").css("color","red"); result=false; } 	
 	});

 	$("#cityId").keyup(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#cityLabelId").css("color","black");
    } else{ $("#cityLabelId").css("color","red"); result=false; } 	
 	});

 	$("#stateId").keyup(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#stateLabelId").css("color","black");
    } else{ $("#stateLabelId").css("color","red"); result=false; } 	
 	});

 	$("#zipCodeId").keyup(function(){ 	
 	if(zipReg.test(this.value)){ $("#zipCodeLabelId").css("color","black");
    } else{ $("#zipCodeLabelId").css("color","red"); result=false; } 	
 	});
 	
 	
 /*Change Password Validation*/
 	
 	var passRegExp = /^(?=.*[\d!@#$%\^*()_\-+=\[{\]};:|\./])(?=.*[a-z0-9]).{8,30}$/;
	
	$("#chanPassButtonId").click(function (){
	var result = true;		

	if(passRegExp.test($("#currentPasswordId").val())){$("#currentPasswordIdLabel").css("color","gray");
	} else{ $("#currentPasswordIdLabel").css("color","red"); result=false; }

	if(passRegExp.test($("#newPasswordId").val())){$("#newPasswordIdLabel").css("color","gray");
	} else{ $("#newPasswordIdLabel").css("color","red"); result=false; }

	if($("#newPasswordId").val() === $("#verifyPasswordId").val() && $("#verifyPasswordId").val() !== ""){$("#verifyPasswordIdLabel").css("color","gray");
	} else{ $("#verifyPasswordIdLabel").css("color","red"); result=false; }
	       
	return result;
	});
	

    $("#currentPasswordId").keyup(function(){
    if(passRegExp.test(this.value)){$("#currentPasswordIdLabel").css("color","gray");
    } else{ $("#currentPasswordIdLabel").css("color","red");
    } });

    $("#newPasswordId").keyup(function(){
    if(passRegExp.test(this.value)){$("#newPasswordIdLabel").css("color","gray");
    } else{ $("#newPasswordIdLabel").css("color","red");
    } });

    $("#verifyPasswordId").keyup(function(){
    if(($('#newPasswordId').val()) === ($('#verifyPasswordId').val())){$("#verifyPasswordIdLabel").css("color","gray");
    } else{ $("#verifyPasswordIdLabel").css("color","red");
    } });

    $("#newPasswordId").change(function(){
    var passRegExp = /^(?=.*[\d!@#$%\^*()_\-+=\[{\]};:|\./])(?=.*[a-z0-9]).{8,30}$/;
    if(!(passRegExp.test(this.value))){
    alert("Password must be a minimum of 8 characters with at least one digit or special character");
    }; });
 	
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
	 	