    $(document).ready(function(){

    var nameRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.&;,]*$/; 
    var emailRegExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.[A-Za-z]{2,}$/;
    var passRegExp = /^(?=.*[\d!@#$%\^*()_\-+=\[{\]};:|\./])(?=.*[a-z0-9]).{8,30}$/;
    var phoneNoExp = /^\(?(\d{3})\)?[-]?(\d{3})[-]?(\d{4})$/;
        
// Sign up button validation

    $("#regButtonId").click(function (){
    var result = true; 
             
    if(nameRegExp.test($("#firstNameId").val())){ $("#firstNameId").css("border-color","#696969");
    } else{ $("#firstNameId").css("border-color","red"); result=false; }
        
    if(nameRegExp.test($("#lastNameId").val())){$("#lastNameId").css("border-color","#696969");
    } else{ $("#lastNameId").css("border-color","red"); result=false; }
        
    if(emailRegExp.test($("#userNameId").val())){ $("#userNameId").css("border-color","#696969");
    } else{ $("#userNameId").css("border-color","red"); result=false; }

    if(passRegExp.test($("#createPasswordId").val())){$("#createPasswordId").css("border-color","#696969");
    } else{ $("#createPasswordId").css("border-color","red"); result=false; }

    /*if($("#createPasswordId").val() === $("#verifyPasswordId").val() && $("#verifyPasswordId").val() !== ""){$("#verifyPasswordId").css("border-color","#696969");
    } else{ $("#verifyPasswordId").css("border-color","red"); result=false; }*/
      
    if(phoneNoExp.test($("#phoneNumberId").val()) && $("#phoneNumberId").val() !== "000-000-0000"){ $("#phoneNumberId").css("border-color","#696969");
    } else{ $("#phoneNumberId").css("border-color","red"); result=false; }
    
    return result;
    });
    
    
 // Sign up button validation

     $("#editDesnButtonId").click(function (){
     var result = true; 
              
     if(nameRegExp.test($("#firstNameId").val())){ $("#firstNameId").css("border-color","#696969");
     } else{ $("#firstNameId").css("border-color","red"); result=false; }
         
     if(nameRegExp.test($("#lastNameId").val())){$("#lastNameId").css("border-color","#696969");
     } else{ $("#lastNameId").css("border-color","red"); result=false; }
         
     if(emailRegExp.test($("#userNameId").val())){ $("#userNameId").css("border-color","#696969");
     } else{ $("#userNameId").css("border-color","red"); result=false; }

     if(phoneNoExp.test($("#phoneNumberId").val()) && $("#phoneNumberId").val() !== "000-000-0000"){ $("#phoneNumberId").css("border-color","#696969");
     } else{ $("#phoneNumberId").css("border-color","red"); result=false; }
     
     return result;
     });
     

     // Change Password button validation

        $("#desChangePassButtonId").click(function (){
        var result = true; 
        if(passRegExp.test($("#currentPasswordID").val())){$("#currentPasswordID").css("border-color","#696969");
        } else{ $("#currentPasswordID").css("border-color","red"); result=false; }

        if(passRegExp.test($("#newPasswordID").val())){$("#newPasswordID").css("border-color","#696969");
        } else{ $("#newPasswordID").css("border-color","red"); result=false; }

        if(passRegExp.test($("#confirmPasswordID").val())){$("#confirmPasswordID").css("border-color","#696969");
        } else{ $("#confirmPasswordID").css("border-color","red"); result=false; }
           
        return result;
        });
        

        // Change Password keyboard valIDations
               
           $("#currentPasswordID").keyup(function(){
           if(passRegExp.test(this.value)){$(this).css("border-color","#696969");
           } else{ $(this).css("border-color","red");
           } });

           $("#newPasswordID").keyup(function(){
           if(passRegExp.test(this.value)){$(this).css("border-color","#696969");
           } else{ $(this).css("border-color","red");
           } });

           $("#confirmPasswordID").keyup(function(){
           if(($('#newPasswordID').val()) === ($('#confirmPasswordID').val())){$(this).css("border-color","#696969");
           } else{ $(this).css("border-color","red");
           } });

           $("#newPasswordID").change(function(){
           var passRegExp = /^(?=.*[\d!@#$%\^*()_\-+=\[{\]};:|\./])(?=.*[a-z0-9]).{8,30}$/;
           if(!(passRegExp.test(this.value))){
           alert("Password must be a minimum of 8 characters with at least one digit or special character");
           }; });
        
// Sign Up keyboard validations
        
    $("#firstNameId").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","#696969");
    } else{ $(this).css("border-color","red");
    } });
        
    $("#lastNameId").keyup(function(){
    if(nameRegExp.test(this.value)){$(this).css("border-color","#696969");
    } else{ $(this).css("border-color","red");
    } });
        
    $("#userNameId").keyup(function(){
    if(emailRegExp.test(this.value)){ $(this).css("border-color","#696969");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#phoneNumberId").keyup(function(){
    if(phoneNoExp.test(this.value)){ $(this).css("border-color","#696969");
    } else{ $(this).css("border-color","red");
    } });

    $("#createPasswordId").keyup(function(){
    if(passRegExp.test(this.value)){$(this).css("border-color","#696969");
    } else{ $(this).css("border-color","red");
    } });

    $("#verifyPasswordId").keyup(function(){
    if(($('#createPasswordId').val()) === ($('#verifyPasswordId').val())){$(this).css("border-color","#696969");
    } else{ $(this).css("border-color","red");
    } });

    $("#createPasswordId").change(function(){
    var passRegExp = /^(?=.*[\d!@#$%\^*()_\-+=\[{\]};:|\./])(?=.*[a-z0-9]).{8,30}$/;
    if(!(passRegExp.test(this.value))){
    alert("Password must be a minimum of 8 characters with at least one digit or special character");
    }; });
    
    });
    
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
    if (s.charAt(0) ==='+') return false;
    filteredValues = '"`!@#$%^&*()_+|~-=\QWERT YUIOP{}ASDFGHJKL:ZXCVBNM<>?qwertyuiop[]asdfghjkl;zxcvbnm,./\\\'';
    var i;
    var returnString = '';
    for (i = 0; i < s.length; i++) {
    var c = s.charAt(i);
    if ((filteredValues.indexOf(c) === -1) & (returnString.length <  12 )) {
    if (returnString.length===3) returnString +='-';
    if (returnString.length===7) returnString +='-';
    returnString += c;
    }; }
    input.value = returnString;
    return false;
    }

    function numberonly(e, decimal) {
    var key;
    var keychar;
    if (window.event) { key = window.event.keyCode; } else if (e) { key = e.which; } else { return true; }
    keychar = String.fromCharCode(key);
    if ((key===null) || (key===0) || (key===8) ||  (key===9) || (key===13) || (key===27) ) {
    return true;
    } else if ((("0123456789").indexOf(keychar) > -1)) {
    return true;
    } else if (decimal && (keychar === ".")) {
    return true;
    } else if (keychar === "-") {
    return true;
    } else
    return false;
    }

        