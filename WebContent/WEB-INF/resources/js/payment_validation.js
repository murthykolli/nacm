
function numeralsOnly(e) {
    var key; var keychar;
    if (window.event) key = window.event.keyCode;
    else if (e) key = e.which;
    else return true;
    keychar = String.fromCharCode(key);
    if ((key === null) || (key === 0) || (key === 8) ||  (key === 9) || (key === 13) || (key === 27) ) return true;
    else if ((("0123456789").indexOf(keychar) > -1)) return true;
    else return false;
}

$(document).ready(function(){
	$(".cards").each(function(){
	$(this).click(function(){
	$(".cards").css("border-color","grey");
	$(".cards").on('mouseover',function(){
	$(this).css("border-color","#ff3b3b");
 	});
	$(".cards").on('mouseout',function(){
	$(this).css("border-color","grey");
 	});
	$(this).css("border-color","#ff3b3b");
        $("#selectCard").css("color","black");
	$(this).unbind('mouseover').unbind('mouseout');
	});
	$(this).on('mouseover',function(){
	$(this).css("border-color","#ff3b3b");
 	});
	$(this).on('mouseout',function(){
	$(this).css("border-color","grey");
 	});
	});
        });

$(document).ready(function(){
    //Gift payment page validation 
    var zipRegExp = /^\d{5}$/;
    var numbRegExp = /^[0-9]+$/;
    var nameRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.&;,]*$/; 
    var expDateReg = /^(0[1-9]|1[012])(\d{2})$/;
     
    $("#paymentButton").click(function (){
    var result = true;
    
    if(numbRegExp.test($("#cardNumber").val())){ $("#cardNumber").css("border-color","black");
    } else{ $("#cardNumber").css("border-color","red"); result=false;
    }
    
    if(numbRegExp.test($("#cvv").val())){ $("#cvv").css("border-color","black");
    } else{ $("#cvv").css("border-color","red"); result=false;
    }
    
    if(expDateReg.test($("#expDate").val())){ $("#expDate").css("border-color","black");
    } else{ $("#expDate").css("border-color","red"); result=false;
    }
    
    if($("#typeOfCardId").val() !== ""){ $("#selectCard").css("color","black");
    } else{ $("#selectCard").css("color","red"); result=false;
    }
    
    if(nameRegExp.test($("#gpayAddressLine1").val())){ $("#gpayAddressLine1").css("border-color","black");
    } else{ $("#gpayAddressLine1").css("border-color","red"); result=false;
    }
    
    if(nameRegExp.test($("#gpayAddressLine2").val())){ $("#gpayAddressLine2").css("border-color","black");
    } else{ $("#gpayAddressLine2").css("border-color","red"); result=false;
    }
    
    if(nameRegExp.test($("#gpayCity").val())){ $("#gpayCity").css("border-color","black");
    } else{ $("#gpayCity").css("border-color","red"); result=false;
    }
    
    if(nameRegExp.test($("#gpayState").val())){ $("#gpayState").css("border-color","black");
    } else{ $("#gpayState").css("border-color","red"); result=false;
    }
    
    if(zipRegExp.test($("#gpayZipCode").val())){ $("#gpayZipCode").css("border-color","black");
    } else{ $("#gpayZipCode").css("border-color","red"); result=false;
    }
    
    return result;    
    });
    
    $("#cardNumber").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    }
    });
    
    $("#cvv").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    }
    });
    
    $("#expDate").keyup(function(){
    var expirationDate = this.value;
    var dateRegExp = /^(0[1-9]|1[012])(\d*)$/;
    if(expirationDate.length >= 2 || expirationDate.charAt(0) > 1){    
    if(dateRegExp.test(expirationDate)) {
    $(this).css("border-color","black");
    } else { $(this).css("border-color","red"); 
    }
    } else if(expirationDate.length !== 0 && expirationDate.charAt(0) <= 1){
    $(this).css("border-color","black");
    }if(expirationDate.length === 0){
    $(this).css("border-color","red");    
    }
    });

    $("#gpayAddressLine1").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#gpayAddressLine2").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#gpayCity").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#gpayState").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#gpayZipCode").keyup(function(){
    if(zipRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    });
