    $(document).ready(function(){

    var nameRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.&;,]*$/; 
    var emailRegExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.[A-Za-z]{2,}$/;
    var zipRegExp = /^\d{5}$/;
    var numbRegExp = /^[0-9]+$/;
    var phoneRegExp = /^\(?(\d{3})\)?[-]?(\d{3})[-]?(\d{4})$/;
    var addrReg = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.@/&;,-]*$/;
        
// Add Bank for Registry Cash Fund validation

 	$("#cfBankInfoSavingButtId").click(function (){
    var result = true;    
	if($("#cashFundRoutingNumberId").val() !== ""){ $("#cashFundRoutingNumberLabel").css("color","black");
    } else{ $("#cashFundRoutingNumberLabel").css("color","red"); result=false; }
	
	if($("#cashFundAccountNumberId").val() !== ""){ $("#cashFundAccountNumberLabel").css("color","black");
    } else{ $("#cashFundAccountNumberLabel").css("color","red"); result=false; }
	
	if($("#cashFundFirstNameId").val() !== ""){ $("#cashFundFirstNameLabel").css("color","black");
    } else{ $("#cashFundFirstNameLabel").css("color","red"); result=false; }

	if($("#cashFundLastNameId").val() !== ""){ $("#cashFundLastNameLabel").css("color","black");
    } else{ $("#cashFundLastNameLabel").css("color","red"); result=false; }

	if($("#cashFundStreetAddressId").val() !== ""){ $("#cashFundStreetAddressLabel").css("color","black");
    } else{ $("#cashFundStreetAddressLabel").css("color","red"); result=false; }

	if($("#cashFundCityId").val() !== ""){ $("#cashFundCityLabel").css("color","black");
    } else{ $("#cashFundCityLabel").css("color","red"); result=false; }

	if($("#cashFundStateId").val() !== ""){ $("#cashFundStateLabel").css("color","black");
    } else{ $("#cashFundStateLabel").css("color","red"); result=false; }

	if($("#cashFundZipCodeId").val() !== ""){ $("#cashFundZipCodeLabel").css("color","black");
    } else{ $("#cashFundZipCodeLabel").css("color","red"); result=false; }

	if($("#cashFundPhoneNumberId").val() !== ""){ $("#cashFundPhoneNumberLabel").css("color","black");
    } else{ $("#cashFundPhoneNumberLabel").css("color","red"); result=false; }

	return result;
	});		
 
  	  	
	
//	Add Bank for Registry Cash Fund keyboard validations
	 
    $("#cashFundRoutingNumberId").keyup(function(){
    if(numbRegExp.test(this.value)){ $("#cashFundRoutingNumberLabel").css("color","black");
    } else{ $("#cashFundRoutingNumberLabel").css("color","red");
    } });
    
    $("#cashFundAccountNumberId").keyup(function(){
    if(numbRegExp.test(this.value)){ $("#cashFundAccountNumberLabel").css("color","black");
    } else{ $("#cashFundAccountNumberLabel").css("color","red");
    } });

    $("#cashFundFirstNameId").keyup(function(){
    if(nameRegExp.test(this.value)){ $("#cashFundFirstNameLabel").css("color","black");
    } else{ $("#cashFundFirstNameLabel").css("color","red");
    } });

    $("#cashFundLastNameId").keyup(function(){
    if(nameRegExp.test(this.value)){ $("#cashFundLastNameLabel").css("color","black");
    } else{ $("#cashFundLastNameLabel").css("color","red");
    } });

    $("#cashFundStreetAddressId").keyup(function(){
    if(addrReg.test(this.value)){ $("#cashFundStreetAddressLabel").css("color","black");
    } else{ $("#cashFundStreetAddressLabel").css("color","red");
    } });
    
    $("#cashFundCityId").keyup(function(){
    if(nameRegExp.test(this.value)){ $("#cashFundCityLabel").css("color","black");
    } else{ $("#cashFundCityLabel").css("color","red");
    } });
    
    $("#cashFundStateId").click(function (){
    if(nameRegExp.test(this.value)){ $("#cashFundStateLabel").css("color","black");
    } else{ $("#cashFundStateLabel").css("color","red");
    } });
    
    $("#cashFundZipCodeId").keyup(function(){
    if(zipRegExp.test(this.value)){ $("#cashFundZipCodeLabel").css("color","black");
    } else{ $("#cashFundZipCodeLabel").css("color","red");
    } });
    
    $("#cashFundPhoneNumberId").keyup(function(){
    if(phoneRegExp.test(this.value)){ $("#cashFundPhoneNumberLabel").css("color","black");
    } else{ $("#cashFundPhoneNumberLabel").css("color","red");
    } });
             
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

	 	
        