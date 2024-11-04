    
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
    
    $(window).ready(function(){
		$(".datepicker").datepicker({minDate:0});
	});
    
    var packageValue;
    var packageType;
    $(document).ready(function(){
    	$("#merchandiseCreditId").val("0");
    	$("#giftFullRoomPackButtonId").click(function (){ 			
 			$("#gift-full-room-dsn-pack-id").css("border-color","black");
 			$("#gift-acc-pack-id").css("border-color","white");
 			packageType = "Full Room Design Package";
 			packageValue = "185";
 			$("body, html").animate({ scrollTop: $(this).offset().top + 20}, 1500);    	
 			return false;
 	    }); 		

 		$("#giftAccPackButtonId").click(function (){
 			$("#gift-acc-pack-id").css("border-color","black");
 			$("#gift-full-room-dsn-pack-id").css("border-color","white");
 			packageType = "Accessories Package";
 			packageValue = "85";
 			$("body, html").animate({ scrollTop: $(this).offset().top + 20}, 1500); 
 			return false;
 	    });
 				
           
        var zipRegExp = /^\d{5}$/;
        var nameRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.&;,]*$/; 
        var emailRegExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.[A-Za-z]{2,}$/;
        var numbRegExp = /^[0-9]+$/;
        var expDateReg = /^\d{2}([./-])\d{2}\1\d{4}$/;
        
        $("#giftCheckOutId").click(function (){
        var result = true; 
        var retValue;
                
        if(packageValue > 0) {        	
        	document.giftForm.typeOfPackage.value = packageType;
    		document.giftForm.packagePrice.value = packageValue;
        } else {
        	alert("PLEASE SELECT A DESIGN PACKAGE TO PROCEED.");
        	result=false;
        }
        
        var typeOfGiftcard = document.giftForm.typeOfGiftcard.value;
        if(typeOfGiftcard ==="") {
        	alert("PLEASE SELECT THE TYPE OF GIFT CARD YOU WOULD LIKE TO SEND.");
        	result=false;
        }
                        
        if(numbRegExp.test($("#merchandiseCreditId").val())){ $("#merchandiseCreditId").css("border-color","black");
        } else{ $("#merchandiseCreditId").css("border-color","red"); result=false;
        }
        
        if(nameRegExp.test($("#yourNameId").val())){ $("#yourNameId").css("border-bottom-color","black");
        } else{ $("#yourNameId").css("border-bottom-color","red"); result=false;
        }
        
        if(emailRegExp.test($("#yourEmailId").val())){ $("#yourEmailId").css("border-bottom-color","black");
        } else{ $("#yourEmailId").css("border-bottom-color","red"); result=false;
        }        

        /*if(nameRegExp.test($("#giftMessageId").val())){ $("#giftMessageId").css("border-color","#777");
        } else{ $("#giftMessageId").css("border-color","red"); result=false;
        }*/
        
        if(expDateReg.test($("#deliveryDateId").val())){ $("#deliveryDateId").css("border-bottom-color","black");
        } else{ $("#deliveryDateId").css("border-bottom-color","red"); result=false;
        }
        
        if($("input[name=typeOfDelivery][value='Gift Box']").is(':checked')){
        	if(nameRegExp.test($("#recGiftNameId").val())){ $("#recGiftNameId").css("border-bottom-color","black");
            } else{ $("#recGiftNameId").css("border-bottom-color","red"); result=false;
            }
        	
        	if(nameRegExp.test($("#recGiftAddressId").val())){ $("#recGiftAddressId").css("border-bottom-color","black");
            } else{ $("#recGiftAddressId").css("border-bottom-color","red"); result=false;
            }
        	
        	if(nameRegExp.test($("#recGiftCityId").val())){ $("#recGiftCityId").css("border-bottom-color","black");
            } else{ $("#recGiftCityId").css("border-bottom-color","red"); result=false;
            }
        	
        	if(nameRegExp.test($("#recGiftStateId").val())){ $("#recGiftStateId").css("border-bottom-color","black");
            } else{ $("#recGiftStateId").css("border-bottom-color","red"); result=false;
            }
        	
        	if(zipRegExp.test($("#recGiftZipCodeId").val())){ $("#recGiftZipCodeId").css("border-bottom-color","black");
            } else{ $("#recGiftZipCodeId").css("border-bottom-color","red"); result=false;
            }
        	
        	if(($("#recGiftNameId").val() === "") || ($("#recGiftAddressId").val() === "") || ($("#recGiftCityId").val() === "") || ($("#recGiftStateId").val() === "") || ($("#recGiftZipCodeId").val()) === "") {
            	alert("Please make sure all fields have been filled out correctly");
            	result = false;
            }            
        }
        else if($("input[name=typeOfDelivery][value='Email']").is(':checked')){
        	if(nameRegExp.test($("#recEmailarNameId").val())){ $("#recEmailarNameId").css("border-bottom-color","black");
            } else{ $("#recEmailarNameId").css("border-bottom-color","red"); result=false;
            }
        	
        	if(emailRegExp.test($("#recEmailAddressId").val())){ $("#recEmailAddressId").css("border-bottom-color","black");
            } else{ $("#recEmailAddressId").css("border-bottom-color","red"); result=false;
            }
        	
        	if(($("#recEmailarNameId").val() === "") || ($("#recEmailAddressId").val() === "")) {
            	alert("Please make sure all fields have been filled out correctly");
            	result = false;
            } 
        	
        } else {
        	alert("PLEASE SELECT A DELIVERY METHOD.");
        	result=false;
        }
        
        if(($("#merchandiseCreditId").val() === "") || ($("#yourNameId").val() === "") || ($("#yourEmailId").val() === "") || ($("#deliveryDateId").val()) === "") {
        	alert("Please make sure all fields have been filled out correctly");
        	result = false;
        }  
        
        return result;
        });
        
                
        $("#giftBoxDeliveryId").click(function (){
        	$("#giftBoxDeliveryRowId").show();
 			$("#barDivDisplayId").show();
 			$("#emailDeliveryRowId").hide();
 			$("#recEmailarNameId, #recEmailAddressId").val("");
 			$("body, html").animate({ scrollTop: $(this).offset().top + 40}, 1500 );
        });
        
        $("#emailDeliveryId").click(function (){
        	$("#emailDeliveryRowId").show();
 			$("#barDivDisplayId").show();
 			$("#giftBoxDeliveryRowId").hide();
 			$("#recGiftNameId, #recGiftAddressId, #recGiftCityId, #recGiftStateId, #recGiftZipCodeId").val("");
 			$("body, html").animate({ scrollTop: $(this).offset().top + 40}, 1500 );
        });
        
        
    	var giftBoxDelivery = $("#giftBoxDeliveryId").val();
    	var emailDelivery = $("#emailDeliveryId").val();
    	
    	$("#recGiftNameId").keyup(function(){    		
        if(giftBoxDelivery === "Gift Box" && nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });

    	$("#recGiftAddressId").keyup(function(){    		
        if(giftBoxDelivery === "Gift Box" && nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });

    	$("#recGiftCityId").keyup(function(){
        if(giftBoxDelivery === "Gift Box" && nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });

    	$("#recGiftStateId").keyup(function(){
        if(giftBoxDelivery === "Gift Box" && nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });

    	$("#recGiftZipCodeId").keydown(function(){
        if(giftBoxDelivery === "Gift Box" && zipRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });
    	
    	$("#recGiftZipCodeId").keyup(function(){
        if(giftBoxDelivery === "Gift Box" && zipRegExp.test(this.value)){ $(this).css("border-bottom-color","black"); $("body, html").animate({ scrollTop: $(this).offset().top }, 1500 );
        } else{ $(this).css("border-bottom-color","red");
        } });
        

    	$("#recEmailarNameId").keyup(function(){
        if(emailDelivery === "Email" && nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });

    	$("#recEmailAddressId").keyup(function(){
        if(emailDelivery === "Email" && emailRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });

        
        
        $("#merchandiseCreditId").keyup(function(){
        if(numbRegExp.test(this.value)){ $(this).css("border-color","black");
        } else{ $(this).css("border-color","red");
        } });

        $("#yourNameId").keyup(function(){
        if(nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });

        $("#yourEmailId").keyup(function(){
        if(emailRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });

        /*$("#giftMessageId").keyup(function(){
        if(nameRegExp.test(this.value)){ $(this).css("border-color","#777");
        } else{ $(this).css("border-color","red");
        } });*/

        $("#deliveryDateId").change(function(){
        if(expDateReg.test(this.value)){ $(this).css("border-bottom-color","black");
        } else{ $(this).css("border-bottom-color","red");
        } });
        
        $(".giftCardJump").click(function (){
        	$("body, html").animate({ scrollTop: $(this).offset().top + 20}, 1500);
        });
        
        $("#giftCardSel1").click(function (){        	
        	$('input[value="A Gift For You"]').prop('checked', true);
        	$("body, html").animate({ scrollTop: $(this).offset().top + 150}, 1500);
        });
        
        $("#giftCardSel2").click(function (){        	
        	$('input[value="Happy Birthday"]').prop('checked', true);
        	$("body, html").animate({ scrollTop: $(this).offset().top + 150}, 1500);
        });

        $("#giftCardSel3").click(function (){        	
        	$('input[value="Baby Shower"]').prop('checked', true);
        	$("body, html").animate({ scrollTop: $(this).offset().top + 150}, 1500);
        });
        
        $("#giftCardSel4").click(function (){        	
        	$('input[value="Home Sweet Home"]').prop('checked', true);
        	$("body, html").animate({ scrollTop: $(this).offset().top + 150}, 1500);
        });

        $("#giftCardSel5").click(function (){        	
        	$('input[value="Congrats"]').prop('checked', true);
        	$("body, html").animate({ scrollTop: $(this).offset().top + 150}, 1500 );
        });

        $("#giftBoxSelId").click(function (){        	
        	$('input[value="Gift Box"]').prop('checked', true);
        	$("#giftBoxDeliveryRowId").show();
 			$("#barDivDisplayId").show();
 			$("#emailDeliveryRowId").hide();
 			$("#recEmailarNameId, #recEmailAddressId").val("");
        	$("body, html").animate({ scrollTop: $(this).offset().top + 185}, 1500 );
        });

        $("#emailSelId").click(function (){        	
        	$('input[value="Email"]').prop('checked', true);
        	$("#emailDeliveryRowId").show();
 			$("#barDivDisplayId").show();
 			$("#giftBoxDeliveryRowId").hide();
 			$("#recGiftNameId, #recGiftAddressId, #recGiftCityId, #recGiftStateId, #recGiftZipCodeId").val("");
 			$("body, html").animate({ scrollTop: $(this).offset().top + 185}, 1500 );
        });
        
    });
     
    