	  	
	var loadFile1 = function(event) {
		var fileUploadName1 = $("#productUploadedImage1").val();
	  	if(fileUploadName1 === undefined) { fileUploadName1 = ""; }	   	
		if(fileUploadName1 !== "") {			
		    var output = document.getElementById('output1');    
		    output.src = URL.createObjectURL(event.target.files[0]);		    
			$("#image1BorderDisplayId").show();
		}
  	};
  	
	var loadFile2 = function(event) {
		var fileUploadName2 = $("#productUploadedImage2").val();
	   	if(fileUploadName2 === undefined) { fileUploadName2 = ""; }	   	
		if(fileUploadName2 !== "") {
			var output = document.getElementById('output2');
		  	output.src = URL.createObjectURL(event.target.files[0]);		  	
			$("#image2BorderDisplayId").show();
		} 		
  	};
  	
	var loadFile3 = function(event) {
		var fileUploadName3 = $("#productUploadedImage3").val();
	   	if(fileUploadName3 === undefined) { fileUploadName3 = ""; }	   	
		if(fileUploadName3 !== "") {
			var output = document.getElementById('output3');
		  	output.src = URL.createObjectURL(event.target.files[0]);
		  	$("#image3BorderDisplayId").show();
		}		
  	};
  	
	var loadFile4 = function(event) {
		var fileUploadName4 = $("#productUploadedImage4").val();
	   	if(fileUploadName4 === undefined) {fileUploadName4 = ""; }	   	
		if(fileUploadName4 !== "") {
			var output = document.getElementById('output4');
		  	output.src = URL.createObjectURL(event.target.files[0]);
		  	$("#image4BorderDisplayId").show();
		}
  	};
  	
  	$(document).ready(function(){
  		$("#removeUPImg1Id").click(function (){
  		var output1 = document.getElementById('output1');
		output1.src = "";
		$("#image1BorderDisplayId").hide();
		$("#productUploadedImage1").val(null);
		return false;
 		});
 		
 		$("#removeUPImg2Id").click(function (){
 		var output2 = document.getElementById('output2');
		output2.src = "";
		$("#image2BorderDisplayId").hide();
		$("#productUploadedImage2").val(null);
 		return false; 		
 		});

 		$("#removeUPImg3Id").click(function (){
 		var output3 = document.getElementById('output3');
		output3.src = "";
		$("#image3BorderDisplayId").hide();
		$("#productUploadedImage3").val(null);
 		return false; 		
 		});

 		$("#removeUPImg4Id").click(function (){ 			
 		var output4 = document.getElementById('output4');
	 	output4.src = "";
	 	$("#image4BorderDisplayId").hide();
	 	$("#productUploadedImage4").val(null);
 		return false;
 		});
 		 		
  	});
  	  	
  	var productStatus1 = ""; var productStatus2 = ""; var productStatus3 = ""; var productStatus4 = "";
 	$(document).ready(function(){  		
 		$("#clickAddProducts1Id").click(function (){
 			$(".addProductsButtCl1Dsp").hide();
 			$(".addProductsButtCl2Dsp").show();
 			$(".addProductsCl2Dsp").show();
 			productStatus1 = "Done";
 			return false;
 		});
 		
 		$("#clickAddProducts2Id").click(function (){
 			$(".addProductsButtCl1Dsp").hide();
 			$(".addProductsButtCl2Dsp").hide();
 			$(".addProductsButtCl3Dsp").show();
 			$(".addProductsCl2Dsp").show();
 			$(".addProductsCl3Dsp").show();
 			productStatus2 = "Done";
 			return false;
 		});
 		
 		$("#clickAddProducts3Id").click(function (){
 			$(".addProductsButtCl1Dsp").hide();
 			$(".addProductsButtCl2Dsp").hide();
 			$(".addProductsButtCl3Dsp").hide();
 			$(".addProductsButtCl4Dsp").show();
 			$(".addProductsCl2Dsp").show();
 			$(".addProductsCl3Dsp").show();
 			$(".addProductsCl4Dsp").show();
 			productStatus3 = "Done";
 			return false;
 		});
 		
 		$("#clickAddProducts4Id").click(function (){
 			$(".addProductsButtCl1Dsp").hide();
 			$(".addProductsButtCl2Dsp").hide();
 			$(".addProductsButtCl3Dsp").hide();
 			$(".addProductsButtCl4Dsp").hide();
 			$(".addProductsButtCl5Dsp").show();
 			$(".addProductsCl2Dsp").show();
 			$(".addProductsCl3Dsp").show();
 			$(".addProductsCl4Dsp").show();
 			$(".addProductsCl5Dsp").show();
 			productStatus4 = "Done";
 			return false;
 		});
 		
 		$("#clickRemoveProducts2Id").click(function (){
 			$(".addProductsCl5Dsp").hide();
 			$(".addProductsCl4Dsp").hide();
 			$(".addProductsCl3Dsp").hide();
 			$(".addProductsCl2Dsp").hide();
 			$(".addProductsCl1Dsp").show(); 			
 			$(".addProductsButtCl5Dsp").hide();
 			$(".addProductsButtCl4Dsp").hide();
 			$(".addProductsButtCl3Dsp").hide();
 			$(".addProductsButtCl2Dsp").hide();
 			$(".addProductsButtCl1Dsp").show();
 			$("#productSize2Id").val("");
 			/*$("#productDescription2Id").val("");*/
 			$("#productPrice2Id").val("");
 			productStatus1 = "";
 			return false;
 		});
 		
 		$("#clickRemoveProducts3Id").click(function (){
 			$(".addProductsCl5Dsp").hide();
 			$(".addProductsCl4Dsp").hide();
 			$(".addProductsCl3Dsp").hide();
 			$(".addProductsCl2Dsp").show();
 			$(".addProductsCl1Dsp").show(); 			
 			$(".addProductsButtCl5Dsp").hide();
 			$(".addProductsButtCl4Dsp").hide();
 			$(".addProductsButtCl3Dsp").hide();
 			$(".addProductsButtCl2Dsp").show();
 			$(".addProductsButtCl1Dsp").hide();
 			$("#productSize3Id").val("");
 			/*$("#productDescription3Id").val("");*/
 			$("#productPrice3Id").val("");
 			productStatus2 = "";
 			return false;
 		});
 		
 		$("#clickRemoveProducts4Id").click(function (){
 			$(".addProductsCl5Dsp").hide();
 			$(".addProductsCl4Dsp").hide();
 			$(".addProductsCl3Dsp").show();
 			$(".addProductsCl2Dsp").show();
 			$(".addProductsCl1Dsp").show(); 			
 			$(".addProductsButtCl5Dsp").hide();
 			$(".addProductsButtCl4Dsp").hide();
 			$(".addProductsButtCl3Dsp").show();
 			$(".addProductsButtCl2Dsp").hide();
 			$(".addProductsButtCl1Dsp").hide();
 			$("#productSize4Id").val("");
 			/*$("#productDescription4Id").val("");*/
 			$("#productPrice4Id").val("");
 			productStatus3 = "";
 			return false;
 		});
 		
 		$("#clickRemoveProducts5Id").click(function (){
 			
 			$(".addProductsCl5Dsp").hide();
 			$(".addProductsCl4Dsp").show();
 			$(".addProductsCl3Dsp").show();
 			$(".addProductsCl2Dsp").show();
 			$(".addProductsCl1Dsp").show(); 			
 			$(".addProductsButtCl5Dsp").hide();
 			$(".addProductsButtCl4Dsp").show();
 			$(".addProductsButtCl3Dsp").hide();
 			$(".addProductsButtCl2Dsp").hide();
 			$(".addProductsButtCl1Dsp").hide();
 			$("#productSize5Id").val("");
 			/*$("#productDescription5Id").val("");*/
 			$("#productPrice5Id").val("");
 			productStatus4 = "";
 			return false;
 		});
 	});
 	
 	$(document).ready(function(){

 		var prodNameRegExp = /^[A-Za-z 0-9 \-#:?|+<>={}!$%&*'()"_.@/&;,-]*$/; 
 	    var nameRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 \-#:?|+<>={}!$%&*'()"_.@/&;,-]*$/; 
 	    var urlRegExp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
 	    var budgetRegExp = /^[0-9\$]*(?=.*\d)[0-9-,.]*$/;
 	    var prodDesReg = /^[A-Za-z 0-9][A-Za-z 0-9 \-#:?|+<>={}!$%&*'()"_.@/&;,-]*$/;
 	    var numbRegExp = /^[0-9]+$/;
 	        
 	// Furniture Specs Upload button validation

 	    $("#admConFurnitureSpecsButtId").click(function (){
 	    var result = true;    
 	    if(prodNameRegExp.test($("#productNameId").val())){ $("#productNameId").css("border-bottom-color","black");
 	    } else{ $("#productNameId").css("border-bottom-color","red"); result=false; }
 	        
 	    if(budgetRegExp.test($("#productPrice1Id").val())){$("#productPrice1Id").css("border-bottom-color","black");
 	    } else{ $("#productPrice1Id").css("border-bottom-color","red"); result=false; }

 	    if(prodDesReg.test($("#productDescription1Id").val())){ $("#productDescription1Id").css("border-bottom-color","black");
 	    } else{ $("#productDescription1Id").css("border-bottom-color","red"); result=false; }
 	    
 	    if(productStatus1 == "Done") {
 	    	if(budgetRegExp.test($("#productPrice2Id").val())){$("#productPrice2Id").css("border-bottom-color","black");
 	        } else{ $("#productPrice2Id").css("border-bottom-color","red"); result=false; }

 	        /*if(prodDesReg.test($("#productDescription2Id").val())){ $("#productDescription2Id").css("border-bottom-color","black");
 	        } else{ $("#productDescription2Id").css("border-bottom-color","red"); result=false; }*/
 	    }

 	    if(productStatus2 == "Done") {
 	    	if(budgetRegExp.test($("#productPrice3Id").val())){$("#productPrice3Id").css("border-bottom-color","black");
 	        } else{ $("#productPrice3Id").css("border-bottom-color","red"); result=false; }

 	        /*if(prodDesReg.test($("#productDescription3Id").val())){ $("#productDescription3Id").css("border-bottom-color","black");
 	        } else{ $("#productDescription3Id").css("border-bottom-color","red"); result=false; }*/
 	    }

 	    if(productStatus3 == "Done") {
 	    	if(budgetRegExp.test($("#productPrice4Id").val())){$("#productPrice4Id").css("border-bottom-color","black");
 	        } else{ $("#productPrice4Id").css("border-bottom-color","red"); result=false; }

 	        /*if(prodDesReg.test($("#productDescription4Id").val())){ $("#productDescription4Id").css("border-bottom-color","black");
 	        } else{ $("#productDescription4Id").css("border-bottom-color","red"); result=false; }*/
 	    }

 	    if(productStatus4 == "Done") {
 	    	if(budgetRegExp.test($("#productPrice5Id").val())){$("#productPrice5Id").css("border-bottom-color","black");
 	        } else{ $("#productPrice5Id").css("border-bottom-color","red"); result=false; }

 	        /*if(prodDesReg.test($("#productDescription5Id").val())){ $("#productDescription5Id").css("border-bottom-color","black");
 	        } else{ $("#productDescription5Id").css("border-bottom-color","red"); result=false; }*/
 	    }

 	    if(nameRegExp.test($("#brandNameId").val())){$("#brandNameId").css("border-bottom-color","black");
 	    } else{ $("#brandNameId").css("border-bottom-color","red"); result=false; }
 	    
 	    if(nameRegExp.test($("#storeNameId").val())){$("#storeNameId").css("border-bottom-color","black");
 	    } else{ $("#storeNameId").css("border-bottom-color","red"); result=false; }
 	        
 	    if(urlRegExp.test($("#storeURLId").val())){ $("#storeURLId").css("border-bottom-color","black");
 	    } else{ $("#storeURLId").css("border-bottom-color","red"); result=false; }

 	    if($("#skuNameId").val() !== ""){$("#skuNameId").css("border-bottom-color","black");
 	    } else{ $("#skuNameId").css("border-bottom-color","red"); result=false; }
 	     	    
 	    
 	    var fileName = $("#productUploadedImage1").val(); 	   
 	    var fileExtension = fileName.replace(/^.*\./, '').toLowerCase();
 	    
 	    if($("#productNameId").val() !== "" && $("#productPrice1Id").val() !== "" && $("#storeNameId").val() !== "" && $("#storeURLId").val() !== "" && $("#productDescription1Id").val() !== "" && $("#skuNameId").val() !== ""){
 	    	if(fileName === ""){
 				alert("Please upload a product image.");
 				result = false;
 		    } else if(!(fileExtension === "png" || fileExtension === "jpg" || fileExtension === "gif" || fileExtension === "jpeg")){
 		    	alert("Please upload a JPG, GIF, or PNG file.");
 		    	return false;
 		    }
 	    }  		 
 	    return result;
 	    });
 	         
 	    
 	    $("#brandNameId").keyup(function(){
 	    if(nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });

 	    $("#productNameId").keyup(function(){
 	    if(prodNameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });
 	     
 	    $("#productDescription1Id").keyup(function(){
 	    if(prodDesReg.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	   	} });
 	    
 	    $("#productPrice1Id").keyup(function(){
 	    if(budgetRegExp.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });

 	    /*$("#productDescription2Id").keyup(function(){
 	    if(prodDesReg.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	   	} });*/
 	    
 	    $("#productPrice2Id").keyup(function(){
 	    if(budgetRegExp.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });

 	    /*$("#productDescription3Id").keyup(function(){
 	    if(prodDesReg.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	   	} });*/
 	    
 	    $("#productPrice3Id").keyup(function(){
 	    if(budgetRegExp.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });

 	    /*$("#productDescription4Id").keyup(function(){
 	    if(prodDesReg.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	   	} });*/
 	    
 	    $("#productPrice4Id").keyup(function(){
 	    if(budgetRegExp.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });

 	    /*$("#productDescription5Id").keyup(function(){
 	    if(prodDesReg.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	   	} });*/
 	    
 	    $("#productPrice5Id").keyup(function(){
 	    if(budgetRegExp.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });
 	      
 	    $("#storeNameId").keyup(function(){
 	    if(nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });

 	    $("#storeURLId").keyup(function(){
 	    if(urlRegExp.test(this.value)){$(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });
 	    
 	    $("#skuNameId").keyup(function(){
 	    if(this.value != ""){ $(this).css("border-bottom-color","black");
 	    } else{ $(this).css("border-bottom-color","red");
 	    } });


 	    $('#productPrice1Id').keypress(function(e){
 	    if (e.which != 8 && e.which != 0 && (e.which < 45 || e.which > 57)) {
 	    return false;
 	    }     
 	    });

 	    $('#productPrice2Id').keypress(function(e){
 	    if (e.which != 8 && e.which != 0 && (e.which < 45 || e.which > 57)) {
 	    return false;
 	    }     
 	    });

 	    $('#productPrice3Id').keypress(function(e){
 	    if (e.which != 8 && e.which != 0 && (e.which < 45 || e.which > 57)) {
 	    return false;
 	    }     
 	    });

 	    $('#productPrice4Id').keypress(function(e){
 	    if (e.which != 8 && e.which != 0 && (e.which < 45 || e.which > 57)) {
 	    return false;
 	    }     
 	    });

 	    $('#productPrice5Id').keypress(function(e){
 	    if (e.which != 8 && e.which != 0 && (e.which < 45 || e.which > 57)) {
 	    return false;
 	    }     
 	    });
 	    
 	 	});
 	
 	