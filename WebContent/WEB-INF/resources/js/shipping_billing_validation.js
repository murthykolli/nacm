    $(document).ready(function(){

    var nameRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.&;,]*$/; 
    var emailRegExp = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.[A-Za-z]{2,}$/;
    var zipRegExp = /^\d{5}$/;
    var numbRegExp = /^[0-9]+$/;
    var phoneRegExp = /^\(?(\d{3})\)?[-]?(\d{3})[-]?(\d{4})$/;
    var addrReg = /^[A-Za-z 0-9][A-Za-z 0-9 \-#()_.@/&;,-]*$/;
        
// Shipping Address Info validation

 	$("#shippingInfoButtonId").click(function (){
    var result = true;	
	if(nameRegExp.test($("#shipFullNameId").val())){ $("#shipFullNameId").css("border-color","black");
    } else{ $("#shipFullNameId").css("border-color","red"); result=false; }

	if(addrReg.test($("#shipAddress1Id").val())){ $("#shipAddress1Id").css("border-color","black");
    } else{ $("#shipAddress1Id").css("border-color","red"); result=false; }
	
	if(nameRegExp.test($("#shipCityId").val())){ $("#shipCityId").css("border-color","black");
    } else{ $("#shipCityId").css("border-color","red"); result=false; }
	
	if(nameRegExp.test($("#shipStateId").val())){ $("#shipStateId").css("border-color","black");
    } else{ $("#shipStateId").css("border-color","red"); result=false; }
	
	if(zipRegExp.test($("#shipZipId").val())){ $("#shipZipId").css("border-color","black");
    } else{ $("#shipZipId").css("border-color","red"); result=false; }
	
	if(phoneRegExp.test($("#shipPhNumberId").val())){ $("#shipPhNumberId").css("border-color","black");
    } else{ $("#shipPhNumberId").css("border-color","red"); result=false; }
			
	return result;
	});
        
// Shipping Address Info keyboard validations
        
    $("#shipFullNameId").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#shipAddress1Id").keyup(function(){
    if(addrReg.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#shipCityId").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#shipStateId").click(function (){
    if($("#shipStateId").val() !== ""){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#shipZipId").keyup(function(){
    if(zipRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#shipPhNumberId").keyup(function(){
    if(phoneRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
        
    
 // Billing Address Info validation

  	$("#billingInfoButtonId").click(function (){
    var result = true; 	
 	
	if(nameRegExp.test($("#billFullNameId").val())){ $("#billFullNameId").css("border-color","black");
    } else{ $("#billFullNameId").css("border-color","red"); result=false; }

	if(addrReg.test($("#billAddress1Id").val())){ $("#billAddress1Id").css("border-color","black");
    } else{ $("#billAddress1Id").css("border-color","red"); result=false; }
	
	if(nameRegExp.test($("#billCityId").val())){ $("#billCityId").css("border-color","black");
    } else{ $("#billCityId").css("border-color","red"); result=false; }
	
	if(nameRegExp.test($("#billStateId").val())){ $("#billStateId").css("border-color","black");
    } else{ $("#billStateId").css("border-color","red"); result=false; }
	
	if(zipRegExp.test($("#billZipId").val())){ $("#billZipId").css("border-color","black");
    } else{ $("#billZipId").css("border-color","red"); result=false; }
	
	if(phoneRegExp.test($("#billPhNumberId").val())){ $("#billPhNumberId").css("border-color","black");
    } else{ $("#billPhNumberId").css("border-color","red"); result=false; }
 	
 	return result;
 	});

    
  	 // Payment Info validation

  	  	$("#paymentInfoButtonId").click(function (){
  	    var result = true;	
  	 	if(numbRegExp.test($("#payCardNumberId").val())){ $("#payCardNumberId").css("border-color","black");
  	    } else{ $("#payCardNumberId").css("border-color","red"); result=false; }

  	 	if(numbRegExp.test($("#payExpMonthId").val())){ $("#payExpMonthId").css("border-color","black");
  	    } else{ $("#payExpMonthId").css("border-color","red"); result=false; }
  	 	
  	 	if(numbRegExp.test($("#payExpYearId").val())){ $("#payExpYearId").css("border-color","black");
  	    } else{ $("#payExpYearId").css("border-color","red"); result=false; }
  	 	
  	 	if(numbRegExp.test($("#payCvvNumberId").val())){ $("#payCvvNumberId").css("border-color","black");
  	    } else{ $("#payCvvNumberId").css("border-color","red"); result=false; }
  	 	
  	 	if(nameRegExp.test($("#nameOnCardId").val())){ $("#nameOnCardId").css("border-color","black");
  	    } else{ $("#nameOnCardId").css("border-color","red"); result=false; }
  	 	
  	 // Billing Address Info validation
  	 	
  		if(nameRegExp.test($("#billFullNameId").val())){ $("#billFullNameId").css("border-color","black");
  	    } else{ $("#billFullNameId").css("border-color","red"); result=false; }

  		if(addrReg.test($("#billAddress1Id").val())){ $("#billAddress1Id").css("border-color","black");
  	    } else{ $("#billAddress1Id").css("border-color","red"); result=false; }
  		
  		if(nameRegExp.test($("#billCityId").val())){ $("#billCityId").css("border-color","black");
  	    } else{ $("#billCityId").css("border-color","red"); result=false; }
  		
  		if(nameRegExp.test($("#billStateId").val())){ $("#billStateId").css("border-color","black");
  	    } else{ $("#billStateId").css("border-color","red"); result=false; }
  		
  		if(zipRegExp.test($("#billZipId").val())){ $("#billZipId").css("border-color","black");
  	    } else{ $("#billZipId").css("border-color","red"); result=false; }
  		
  		if(phoneRegExp.test($("#billPhNumberId").val())){ $("#billPhNumberId").css("border-color","black");
  	    } else{ $("#billPhNumberId").css("border-color","red"); result=false; }
  	 	 	
  	 	var accountNumber = $("#payCardNumberId").val();            
  	    if(accountNumber !== ""){            	
  	    	getCreditCardType();            	
  	    	if(cardResult === "unknown"){
  	    		result=false;	
  	    	} 
  	    }
  	    
  	    $("[name=payCardNumber]").val($("#payCardNumberId").val());
  	    $("[name=payExpMonth]").val($("#payExpMonthId").val());
  	    $("[name=payExpYear]").val($("#payExpYearId").val());
  	    $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
  	    $("[name=nameOnCard]").val($("#nameOnCardId").val());
  	    
  	    $("[name=billFullName]").val($("#billFullNameId").val());
  	    $("[name=billAddress1]").val($("#billAddress1Id").val());
  	    $("[name=billAddress2]").val($("#billAddress2Id").val());
  	    $("[name=billCity]").val($("#billCityId").val());
  	    $("[name=billState]").val($("#billStateId").val());
  	    $("[name=billZip]").val($("#billZipId").val());
  	    $("[name=billCountry]").val($("#billCountryId").val());
  	    $("[name=billPhNumber]").val($("#billPhNumberId").val());
  	    
  	 	return result;
  	 	});
  	

  	 // Change Billing address Only validation

  	  	$("#changeBillingButtId").click(function (){
  	    var result = true;	
  	 	
  		if(nameRegExp.test($("#billFullNameId").val())){ $("#billFullNameId").css("border-color","black");
  	    } else{ $("#billFullNameId").css("border-color","red"); result=false; }

  		if(addrReg.test($("#billAddress1Id").val())){ $("#billAddress1Id").css("border-color","black");
  	    } else{ $("#billAddress1Id").css("border-color","red"); result=false; }
  		
  		if(nameRegExp.test($("#billCityId").val())){ $("#billCityId").css("border-color","black");
  	    } else{ $("#billCityId").css("border-color","red"); result=false; }
  		
  		if(nameRegExp.test($("#billStateId").val())){ $("#billStateId").css("border-color","black");
  	    } else{ $("#billStateId").css("border-color","red"); result=false; }
  		
  		if(zipRegExp.test($("#billZipId").val())){ $("#billZipId").css("border-color","black");
  	    } else{ $("#billZipId").css("border-color","red"); result=false; }
  		
  		if(phoneRegExp.test($("#billPhNumberId").val())){ $("#billPhNumberId").css("border-color","black");
  	    } else{ $("#billPhNumberId").css("border-color","red"); result=false; }
  	 	 
  	 	return result;
  	 	});
  	  	

  	  // Change Payment Info Only validation

  	   	$("#changePaymentButtonId").click(function (){
  	     var result = true;	
  	  	if(numbRegExp.test($("#payCardNumberId").val())){ $("#payCardNumberId").css("border-color","black");
  	     } else{ $("#payCardNumberId").css("border-color","red"); result=false; }

  	  	if(numbRegExp.test($("#payExpMonthId").val())){ $("#payExpMonthId").css("border-color","black");
  	     } else{ $("#payExpMonthId").css("border-color","red"); result=false; }
  	  	
  	  	if(numbRegExp.test($("#payExpYearId").val())){ $("#payExpYearId").css("border-color","black");
  	     } else{ $("#payExpYearId").css("border-color","red"); result=false; }
  	  	
  	  	if(numbRegExp.test($("#payCvvNumberId").val())){ $("#payCvvNumberId").css("border-color","black");
  	     } else{ $("#payCvvNumberId").css("border-color","red"); result=false; }
  	  	
  	  	if(nameRegExp.test($("#nameOnCardId").val())){ $("#nameOnCardId").css("border-color","black");
  	     } else{ $("#nameOnCardId").css("border-color","red"); result=false; }
  	  	
  	  	var accountNumber = $("#payCardNumberId").val();            
  	     if(accountNumber !== ""){            	
  	     	getCreditCardType();            	
  	     	if(cardResult === "unknown"){
  	     		result=false;	
  	     	} 
  	     }
  	     
  	  	return result;
  	  	});
  	   	
  	   	
         
 // Payment Info keyboard validations
         
    $("#payCardNumberId").keyup(function(){
    if(numbRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#payExpMonthId").click(function (){
    if($("#payExpMonthId").val() !== ""){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });

    $("#payExpYearId").click(function (){
    if($("#payExpYearId").val() !== ""){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#payCvvNumberId").keyup(function(){
    if(numbRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    $("#nameOnCardId").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
    } else{ $(this).css("border-color","red");
    } });
    
    
 // Billing Address Info keyboard validations
         
     $("#billFullNameId").keyup(function(){
     if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
     } else{ $(this).css("border-color","red");
     } });
     
     $("#billAddress1Id").keyup(function(){
     if(addrReg.test(this.value)){ $(this).css("border-color","black");
     } else{ $(this).css("border-color","red");
     } });
     
     $("#billCityId").keyup(function(){
     if(nameRegExp.test(this.value)){ $(this).css("border-color","black");
     } else{ $(this).css("border-color","red");
     } });
     
     $("#billStateId").click(function (){
     if($("#billStateId").val() !== ""){ $(this).css("border-color","black");
     } else{ $(this).css("border-color","red");
     } });
     
     $("#billZipId").keyup(function(){
     if(zipRegExp.test(this.value)){ $(this).css("border-color","black");
     } else{ $(this).css("border-color","red");
     } });
     
     $("#billPhNumberId").keyup(function(){
     if(phoneRegExp.test(this.value)){ $(this).css("border-color","black");
     } else{ $(this).css("border-color","red");
     } });
     
     
  // Promo code validation

   	$("#promoCodeButtId").click(function (){
      var result = true;
      var promoValue = $("#payPromoCodeId").val();
	  	if(promoValue === ""){ 
	  		alert("PLEASE ENTER A VALID PROMO CODE IF YOU HAVE ONE.");
	  		result=false; 
	  	}	
  	return result;
  	});
    
    
// Gift Card validation

    $("#giftCardButtId").click(function (){
      var result = true;
      var promoValue = $("#payGiftCardId").val();
  	  	if(promoValue === ""){ 
  	  		alert("PLEASE ENTER YOUR GIFT CARD CODE IF YOU HAVE ONE.");
  	  		result=false; 
  	  	}	
    return result;
    });

    // Second Rendering Gift Card validation

        $("#secRenGiftCardButtId").click(function (){
          var result = true;
          var promoValue = $("#payGiftCardId").val();          
      	  	if(promoValue === ""){ 
      	  		alert("PLEASE ENTER YOUR GIFT CARD CODE IF YOU HAVE ONE.");
      	  		result=false; 
      	  	} else {      	  	
   	      	  	$("[name=payCardNumber]").val($("#payCardNumberId").val());
   	            $("[name=payExpMonth]").val($("#payExpMonthId").val());
   	            $("[name=payExpYear]").val($("#payExpYearId").val());
   	            $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
   	            $("[name=nameOnCard]").val($("#nameOnCardId").val());	            
     	  	}
      	  	
        return result;
        });

    
// Second Rendering Payment Info validation

     	$("#secRendPaymentInfoButId").click(function (){
       var result = true;	
    	if(numbRegExp.test($("#payCardNumberId").val())){ $("#payCardNumberId").css("border-color","black");
       } else{ $("#payCardNumberId").css("border-color","red"); result=false; }

    	if(numbRegExp.test($("#payExpMonthId").val())){ $("#payExpMonthId").css("border-color","black");
       } else{ $("#payExpMonthId").css("border-color","red"); result=false; }
    	
    	if(numbRegExp.test($("#payExpYearId").val())){ $("#payExpYearId").css("border-color","black");
       } else{ $("#payExpYearId").css("border-color","red"); result=false; }
    	
    	if(numbRegExp.test($("#payCvvNumberId").val())){ $("#payCvvNumberId").css("border-color","black");
       } else{ $("#payCvvNumberId").css("border-color","red"); result=false; }
    	
    	if(nameRegExp.test($("#nameOnCardId").val())){ $("#nameOnCardId").css("border-color","black");
       } else{ $("#nameOnCardId").css("border-color","red"); result=false; }
    	    	 	
       var accountNumber = $("#payCardNumberId").val();            
       if(accountNumber !== ""){            	
       	getCreditCardType();            	
       	if(cardResult === "unknown"){
       		result=false;	
       	} 
       }
       
       $("[name=payCardNumber]").val($("#payCardNumberId").val());
       $("[name=payExpMonth]").val($("#payExpMonthId").val());
       $("[name=payExpYear]").val($("#payExpYearId").val());
       $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
       $("[name=nameOnCard]").val($("#nameOnCardId").val());
       
    	return result;
    	});
     	

        // Cart Payment Gift Card validation

            $("#cartPaymentGiftCardButtId").click(function (){
              var result = true;
              var promoValue = $("#payGiftCardId").val();
              	if(promoValue === ""){ 
          	  		alert("PLEASE ENTER YOUR GIFT CARD CODE IF YOU HAVE ONE.");
          	  		result=false; 
          	  	} else {      	  	
       	      	  	$("[name=payCardNumber]").val($("#payCardNumberId").val());
       	            $("[name=payExpMonth]").val($("#payExpMonthId").val());
       	            $("[name=payExpYear]").val($("#payExpYearId").val());
       	            $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
       	            $("[name=nameOnCard]").val($("#nameOnCardId").val());	            
         	  	}
          	  	
            return result;
            });

        
    // Cart Payment Info validation

         	$("#cartPaymentInfoButId").click(function (){
           var result = true;	
        	if(numbRegExp.test($("#payCardNumberId").val())){ $("#payCardNumberId").css("border-color","black");
           } else{ $("#payCardNumberId").css("border-color","red"); result=false; }

        	if(numbRegExp.test($("#payExpMonthId").val())){ $("#payExpMonthId").css("border-color","black");
           } else{ $("#payExpMonthId").css("border-color","red"); result=false; }
        	
        	if(numbRegExp.test($("#payExpYearId").val())){ $("#payExpYearId").css("border-color","black");
           } else{ $("#payExpYearId").css("border-color","red"); result=false; }
        	
        	if(numbRegExp.test($("#payCvvNumberId").val())){ $("#payCvvNumberId").css("border-color","black");
           } else{ $("#payCvvNumberId").css("border-color","red"); result=false; }
        	
        	if(nameRegExp.test($("#nameOnCardId").val())){ $("#nameOnCardId").css("border-color","black");
           } else{ $("#nameOnCardId").css("border-color","red"); result=false; }
        	    	 	
           var accountNumber = $("#payCardNumberId").val();            
           if(accountNumber !== ""){            	
           	getCreditCardType();            	
           	if(cardResult === "unknown"){
           		result=false;	
           	} 
           }
           
           $("[name=payCardNumber]").val($("#payCardNumberId").val());
           $("[name=payExpMonth]").val($("#payExpMonthId").val());
           $("[name=payExpYear]").val($("#payExpYearId").val());
           $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
           $("[name=nameOnCard]").val($("#nameOnCardId").val());
           
        	return result;
        	});

            // Cart Payment Info No Selection validation

                 	$("#cartPaymentInfoNoSelButId").click(function (){
                   var result = true;	
                	if(numbRegExp.test($("#payCardNumberId").val())){ $("#payCardNumberId").css("border-color","black");
                   } else{ $("#payCardNumberId").css("border-color","red"); result=false; }

                	if(numbRegExp.test($("#payExpMonthId").val())){ $("#payExpMonthId").css("border-color","black");
                   } else{ $("#payExpMonthId").css("border-color","red"); result=false; }
                	
                	if(numbRegExp.test($("#payExpYearId").val())){ $("#payExpYearId").css("border-color","black");
                   } else{ $("#payExpYearId").css("border-color","red"); result=false; }
                	
                	if(numbRegExp.test($("#payCvvNumberId").val())){ $("#payCvvNumberId").css("border-color","black");
                   } else{ $("#payCvvNumberId").css("border-color","red"); result=false; }
                	
                	if(nameRegExp.test($("#nameOnCardId").val())){ $("#nameOnCardId").css("border-color","black");
                   } else{ $("#nameOnCardId").css("border-color","red"); result=false; }
                	    	 	
                   var accountNumber = $("#payCardNumberId").val();            
                   if(accountNumber !== ""){            	
                   	getCreditCardType();
                   	if(cardResult === "unknown"){
                   		result=false;	
                   	}
                   	$("[name=typeOfCard]").val(cardResult);
                   }
                   
                   $("[name=payCardNumber]").val($("#payCardNumberId").val());
                   $("[name=payExpMonth]").val($("#payExpMonthId").val());
                   $("[name=payExpYear]").val($("#payExpYearId").val());
                   $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
                   $("[name=nameOnCard]").val($("#nameOnCardId").val());
                   
                	return result;
                	});
         	
    	
 /*Review and Place orde Validation*/
     	     	
     	$("#revPlaceOrdButtonId").click(function (){
     	var result = true;
     	var radioValue = document.reviewPlaceOrder.reviewOrderStatus.value;
     	
     	if(radioValue !== "") {$("#revi_pla_or_head_text_id").css("color","black");
        } else{ $("#revi_pla_or_head_text_id").css("color","red");  result=false; }
     	
     	return result;
     	});

        $(".review_orde_st_cls").click(function(){    	
        var radioValue = document.reviewPlaceOrder.reviewOrderStatus.value;
        if(radioValue !== "") {$("#revi_pla_or_head_text_id").css("color","black");
        } else{ $("#revi_pla_or_head_text_id").css("color","red"); result=false;
        } });
        
        
        
     // Design Package Payment Info validation

          	$("#desnPackPaymentButId").click(function (){
            var result = true;	
         	if(numbRegExp.test($("#payCardNumberId").val())){ $("#payCardNumberId").css("border-color","black");
            } else{ $("#payCardNumberId").css("border-color","red"); result=false; }

         	if(numbRegExp.test($("#payExpMonthId").val())){ $("#payExpMonthId").css("border-color","black");
            } else{ $("#payExpMonthId").css("border-color","red"); result=false; }
         	
         	if(numbRegExp.test($("#payExpYearId").val())){ $("#payExpYearId").css("border-color","black");
            } else{ $("#payExpYearId").css("border-color","red"); result=false; }
         	
         	if(numbRegExp.test($("#payCvvNumberId").val())){ $("#payCvvNumberId").css("border-color","black");
            } else{ $("#payCvvNumberId").css("border-color","red"); result=false; }
         	
         	if(nameRegExp.test($("#nameOnCardId").val())){ $("#nameOnCardId").css("border-color","black");
            } else{ $("#nameOnCardId").css("border-color","red"); result=false; }
         	    	 	
            var accountNumber = $("#payCardNumberId").val();
            if(accountNumber !== ""){            	
            	getCreditCardType();            	
            	if(cardResult === "unknown"){
            		result=false;	
            	} 
            }
            
            $("[name=payCardNumber]").val($("#payCardNumberId").val());
            $("[name=payExpMonth]").val($("#payExpMonthId").val());
            $("[name=payExpYear]").val($("#payExpYearId").val());
            $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
            $("[name=nameOnCard]").val($("#nameOnCardId").val());
            
         	return result;
         	});

            // Package Payment Gift Card validation

                $("#packagePayGiftCardButtId").click(function (){
                  var result = true;
                  var promoValue = $("#payGiftCardId").val();          
              	  	if(promoValue === ""){ 
              	  		alert("PLEASE ENTER YOUR GIFT CARD CODE IF YOU HAVE ONE.");
              	  		result=false; 
              	  	} else {      	  	
           	      	  	$("[name=payCardNumber]").val($("#payCardNumberId").val());
           	            $("[name=payExpMonth]").val($("#payExpMonthId").val());
           	            $("[name=payExpYear]").val($("#payExpYearId").val());
           	            $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
           	            $("[name=nameOnCard]").val($("#nameOnCardId").val());           	            
             	  	}
              	  	
                return result;
                });
                
                // Package Payment Promo code validation

                 	$("#packagePayPromoCodeButtId").click(function (){
                    var result = true;
                    var promoValue = $("#payPromoCodeId").val();
              	  	if(promoValue === ""){ 
              	  		alert("PLEASE ENTER A VALID PROMO CODE IF YOU HAVE ONE.");
              	  		result=false; 
              	  	} else {      	  	
           	      	  	$("[name=payCardNumber]").val($("#payCardNumberId").val());
           	            $("[name=payExpMonth]").val($("#payExpMonthId").val());
           	            $("[name=payExpYear]").val($("#payExpYearId").val());
           	            $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
           	            $("[name=nameOnCard]").val($("#nameOnCardId").val());	            
             	  	}	
                	return result;
                	});
                 	

                    // GiftCard Payment Promo code validation

                     	$("#giftCardPayPromoCodeButtId").click(function (){
                        var result = true;
                        var promoValue = $("#payPromoCodeId").val();
                  	  	if(promoValue === ""){ 
                  	  		alert("PLEASE ENTER A VALID PROMO CODE IF YOU HAVE ONE.");
                  	  		result=false; 
                  	  	} else {      	  	
               	      	  	$("[name=payCardNumber]").val($("#payCardNumberId").val());
               	            $("[name=payExpMonth]").val($("#payExpMonthId").val());
               	            $("[name=payExpYear]").val($("#payExpYearId").val());
               	            $("[name=payCvvNumber]").val($("#payCvvNumberId").val());
               	            $("[name=nameOnCard]").val($("#nameOnCardId").val());	            
                 	  	} 
                    	return result;
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
	
    
	var cardResult;
    function getCreditCardType() {
    //start without knowing the credit card type
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
    
    else{        	
    	alert("Invalid credit card number");        	
    }
    
    cardResult = result;
      return result;
    }
    

    var cardResult;
    function reviewOrdCreditCardName(accountNumber) {
    //start without knowing the credit card type    
    
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
    
    else{ }
    
    cardResult = result;
      return result;
    }
	 	
        