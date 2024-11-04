    $(document).ready(function() {

    var nameRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.&;,]*$/; 
    var emailRegExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.[A-Za-z]{2,}$/;
    var zipRegExp = /^\d{5}$/;
    var numbRegExp = /^[0-9]+$/;
    var phoneRegExp = /^\(?(\d{3})\)?[-]?(\d{3})[-]?(\d{4})$/;
    var addrReg = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.@/&;,-]*$/;
      
//	Billing ANd Shipping Address Info for Registrant Side validation

    $("#shopBillingAndShippingInfoButtonId").click(function () {
    	var result = true;	
  	 	if(nameRegExp.test($("#shopBillingFullNameId").val())) { 
  	 		$("#shopBillingFullNameId").css("border-color","black");
  	 	} else { 
  	 		$("#shopBillingFullNameId").css("border-color","red"); result = false;
  	 	}

  	 	if(addrReg.test($("#shopBillingAddress1Id").val())) { 
  	 		$("#shopBillingAddress1Id").css("border-color","black");
  	    } else { 
  	    	$("#shopBillingAddress1Id").css("border-color","red"); result = false; 
  	    }
  	 	
  	 	if(nameRegExp.test($("#shopBillingCityId").val())) { 
  	 		$("#shopBillingCityId").css("border-color","black");
  	    } else { 
  	    	$("#shopBillingCityId").css("border-color","red"); result = false; 
  	    }
  	 	
  	 	if(nameRegExp.test($("#shopBillingStateId").val())) { 
  	 		$("#shopBillingStateId").css("border-color","black");
  	    } else { 
  	    	$("#shopBillingStateId").css("border-color","red"); result = false; 
  	    }
  	 	
  	 	if(zipRegExp.test($("#shopBillingZipId").val())) { 
  	 		$("#shopBillingZipId").css("border-color","black");
  	    } else { 
  	    	$("#shopBillingZipId").css("border-color","red"); result = false; 
  	    }
  	 	  	 	  	 	
  	 	if(nameRegExp.test($("#shopShippingFullNameId").val())) { 
  	 		$("#shopShippingFullNameId").css("border-color","black");
  	    } else { 
  	    	$("#shopShippingFullNameId").css("border-color","red"); result = false; 
  	    }

  		if(addrReg.test($("#shopShippingAddress1Id").val())) { 
  			$("#shopShippingAddress1Id").css("border-color","black");
  	    } else { 
  	    	$("#shopShippingAddress1Id").css("border-color","red"); result = false; 
  	    }
  		
  		if(nameRegExp.test($("#shopShippingCityId").val())) { 
  			$("#shopShippingCityId").css("border-color","black");
  	    } else { 
  	    	$("#shopShippingCityId").css("border-color","red"); result = false; 
  	    }
  		
  		if(nameRegExp.test($("#shopShippingStateId").val())) { 
  			$("#shopShippingStateId").css("border-color","black");
  	    } else { 
  	    	$("#shopShippingStateId").css("border-color","red"); result = false; 
  	    }
  		
  		if(zipRegExp.test($("#shopShippingZipId").val())) { 
  			$("#shopShippingZipId").css("border-color","black");
  	    } else { 
  	    	$("#shopShippingZipId").css("border-color","red"); result = false; 
  	    }
			
  		if(emailRegExp.test($("#shopUserEmailId").val())) { 
  			$("#shopUserEmailId").css("border-color","black");
  	    } else { 
  	    	$("#shopUserEmailId").css("border-color","red"); result = false; 
  	    }
  		
  		if(phoneRegExp.test($("#shopUserPhNumberId").val())) { 
  			$("#shopUserPhNumberId").css("border-color","black");
  	    } else { 
  	    	$("#shopUserPhNumberId").css("border-color","red"); result = false; 
  	    }
	
  	 return result;
  	 });
    
    
//	billping Address Info keyboard validations
         
    $("#shopBillingFullNameId").keyup(function() {
    if(nameRegExp.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
        
    $("#shopBillingAddress1Id").keyup(function() {
    if(addrReg.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopBillingCityId").keyup(function() {
    if(nameRegExp.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopBillingStateId").click(function () {
    if($("#shopBillingStateId").val() !== "") { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopBillingZipId").keyup(function() {
    if(zipRegExp.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });

//	Shipping Address Info keyboard validations
        
    $("#shopShippingFullNameId").keyup(function() {
    if(nameRegExp.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopShippingAddress1Id").keyup(function() {
    if(addrReg.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopShippingCityId").keyup(function() {
    if(nameRegExp.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopShippingStateId").click(function () {
    if($("#shopShippingStateId").val() !== "") { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopShippingZipId").keyup(function() {
    if(zipRegExp.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopUserEmailId").keyup(function() {
    if(emailRegExp.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
    $("#shopUserPhNumberId").keyup(function() {
    if(phoneRegExp.test(this.value)) { $(this).css("border-color","black");
    } else { $(this).css("border-color","red");
    } });
    
      
 	$("#checkCopyBillToShippId").click(function() {        	
 		if($("#checkCopyBillToShippId").prop("checked")===true) {
        	if($("#shopBillingFullNameId").val() !== "" && $("#shopBillingAddress1Id").val() !== "" && $("#shopBillingCityId").val() !== "" && $("#shopBillingStateId").val() !== "" && $("#shopBillingZipId").val() !== "") {        	
	        	$("[name=shopShippingFullName]").val($("#shopBillingFullNameId").val());
	            $("[name=shopShippingAddress1]").val($("#shopBillingAddress1Id").val());
	            $("[name=shopShippingAddress2]").val($("#shopBillingAddress2Id").val());
	            $("[name=shopShippingCity]").val($("#shopBillingCityId").val());
	            $("[name=shopShippingState]").val($("#shopBillingStateId").val());
	            $("[name=shopShippingZip]").val($("#shopBillingZipId").val());
	            $("[name=checkbox]").val("on");
	        } else {
	        	alert("Please first fill all billing info");
	        	$('#checkCopyBillToShippId').prop('checked', false); 
	        } 
        } else {
        	$("[name=shopShippingFullName]").val("");
            $("[name=shopShippingAddress1]").val("");
            $("[name=shopShippingAddress2]").val("");
            $("[name=shopShippingCity]").val("");
            $("[name=shopShippingState]").val("");
            $("[name=shopShippingZip]").val("");    
            $("[name=checkbox]").val("off");
        } 
 	}); 
  	  

// Payment Info validation

 	$("#guestPaymentInfoButtId").click(function () {
 	var result = true;	
 	 	if(numbRegExp.test($("#payCardNumberId").val())) { $("#payCardNumberId").css("border-color","black");
 	} else { $("#payCardNumberId").css("border-color","red"); result = false; }

 	 	if(numbRegExp.test($("#payExpMonthId").val())) { $("#payExpMonthId").css("border-color","black");
 	} else { $("#payExpMonthId").css("border-color","red"); result = false; }
 	 	
 	 	if(numbRegExp.test($("#payExpYearId").val())) { $("#payExpYearId").css("border-color","black");
 	} else { $("#payExpYearId").css("border-color","red"); result = false; }
 	 	
 	 	if(numbRegExp.test($("#payCvvNumberId").val())) { $("#payCvvNumberId").css("border-color","black");
 	} else { $("#payCvvNumberId").css("border-color","red"); result = false; }
 	 	
 	 	if(nameRegExp.test($("#nameOnCardId").val())) { $("#nameOnCardId").css("border-color","black");
 	} else { $("#nameOnCardId").css("border-color","red"); result = false; }
 	
 	var accountNumber = $("#payCardNumberId").val();
 	
 	if(accountNumber !== "") {            	
 		getCreditCardType();            	
 		if(cardResult === "unknown") {
 			result = false;	
 		} 
 	}

	$("[name=payCardNumber]").val($("#payCardNumberId").val());
	$("[name=payExpMonth]").val($("#payExpMonthId").val());
	$("[name=payExpYear]").val($("#payExpYearId").val());
	$("[name=payCvvNumber]").val($("#payCvvNumberId").val());
	$("[name=nameOnCard]").val($("#nameOnCardId").val());
 	return result;
 	});
    
// Payment Info keyboard validations
 	 
	$("#payCardNumberId").keyup(function() {
 	if(numbRegExp.test(this.value)) { $(this).css("border-color","black");
 	} else { $(this).css("border-color","red");
 	} });
 	
 	$("#payExpMonthId").click(function () {
 	if($("#payExpMonthId").val() !== "") { $(this).css("border-color","black");
 	} else { $(this).css("border-color","red");
 	} });

 	$("#payExpYearId").click(function () {
 	if($("#payExpYearId").val() !== "") { $(this).css("border-color","black");
 	} else { $(this).css("border-color","red");
 	} });
 	
 	$("#payCvvNumberId").keyup(function() {
 	if(numbRegExp.test(this.value)) { $(this).css("border-color","black");
 	} else { $(this).css("border-color","red");
 	} });
 	
 	$("#nameOnCardId").keyup(function() {
 	if(nameRegExp.test(this.value)) { $(this).css("border-color","black");
 	} else { $(this).css("border-color","red");
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
	for (i=0; i<len; i++) {
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

    var cardResult;
    function getCreditCardType() {    
    var accountNumber = $("#payCardNumberId").val();
        
    var sum = 0; 
	var numdigits = accountNumber.length; 
	var parity = numdigits % 2; 
	for(var i=0; i < numdigits; i++) { 
		var digit = parseInt(accountNumber.charAt(i)); 
		if(i % 2 == parity) digit *= 2; 
		if(digit > 9) digit -= 9; 
		sum += digit; 
		}    	
    var result = "unknown";    
    //first check for MasterCard
    if (/^5[1-5][0-9]{14}/.test(accountNumber) && (sum % 10) == 0) {
        result = "mastercard";
    }

    //then check for Visa
    else if (/^4/.test(accountNumber) && (sum % 10) == 0) {
        result = "visa";
    }

  //then check for AmEx
    else if (/^3[47][0-9]{13}/.test(accountNumber) && (sum % 10) == 0) {
        result = "amex";
    }
    
  //then check for Dis
    else if (/^6[0-9]{12}/.test(accountNumber) && (sum % 10) == 0) {
        result = "dis";
    }    
    else {        	
    	alert("Invalid credit card number");
    	return false;
    }
    return result;
    }
	
    
	 	
        