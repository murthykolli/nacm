
$(document).ready(function(){ 		
 	var textFieldRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 -#/_().&amp;]*$/; 	
 	var emailRegExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.[A-Za-z]{2,}$/;
 	 	
 	$("#regDesnSubmitValId").click(function (){
    var result = true;	
	if(textFieldRegExp.test($("#registerName").val())){ $("#registerName").css("border-color","gray");
    } else{ $("#registerName").css("border-color","red"); result=false; }

	if(emailRegExp.test($("#registerEmail").val())){ $("#registerEmail").css("border-color","gray");
    } else{ $("#registerEmail").css("border-color","red"); result=false; }
		
	return result;
	});
 	

 	$("#registerName").keyup(function(){ 	
 	if(textFieldRegExp.test(this.value)){ $("#registerName").css("border-color","gray");
    } else{ $("#registerName").css("border-color","red"); result=false; } 	
 	});

 	$("#registerEmail").keyup(function(){ 	
 	if(emailRegExp.test(this.value)){ $("#registerEmail").css("border-color","gray");
    } else{ $("#registerEmail").css("border-color","red"); result=false; } 	
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
	 	