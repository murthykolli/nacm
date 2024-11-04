    $(document).ready(function(){

    var nameRegExp = /^[A-Za-z 0-9][A-Za-z 0-9 \-#:?|+<>={}!$%&*'()"_.@/&;,-]*$/; 
    var urlRegExp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
    var budgetRegExp = /^[0-9\$]*(?=.*\d)[0-9-,.]*$/;
    var prodDesReg = /^[A-Za-z 0-9][A-Za-z 0-9 \-#:?|+<>={}!$%&*'()"_.@/&;,-]*$/;
    var numbRegExp = /^[0-9]+$/;
        
// Furniture Specs button validation

    $("#furnitureSpecsButtonId").click(function (){
    var result = true;    
    if(nameRegExp.test($("#productNameId").val())){ $("#productNameId").css("border-bottom-color","black");
    } else{ $("#productNameId").css("border-bottom-color","red"); result=false; }
        
    if(budgetRegExp.test($("#productPriceId").val())){$("#productPriceId").css("border-bottom-color","black");
    } else{ $("#productPriceId").css("border-bottom-color","red"); result=false; }

    if(numbRegExp.test($("#productsQuantityId").val())){$("#productsQuantityId").css("border-bottom-color","black");
    } else{ $("#productsQuantityId").css("border-bottom-color","red"); result=false; }
    
    if(nameRegExp.test($("#storeNameId").val())){$("#storeNameId").css("border-bottom-color","black");
    } else{ $("#storeNameId").css("border-bottom-color","red"); result=false; }
        
    if(urlRegExp.test($("#storeURLId").val())){ $("#storeURLId").css("border-bottom-color","black");
    } else{ $("#storeURLId").css("border-bottom-color","red"); result=false; }
    
    if(prodDesReg.test($("#productDescriptionId").val())){ $("#productDescriptionId").css("border-bottom-color","black");
    } else{ $("#productDescriptionId").css("border-bottom-color","red"); result=false; }
    
    var assReqVal = document.fileUpload.assemblyRequiredStatus.value;    
    if(assReqVal !== "") {$("#ass_req_status_id").css("color","black");
    } else{ $("#ass_req_status_id").css("color","red"); result=false; }
    
    
    var fileName = $("#fileUpload").val();
    var fileExtension = fileName.replace(/^.*\./, '').toLowerCase();
    
    if($("#productNameId").val() !== "" && $("#productPriceId").val() !== "" && $("#storeNameId").val() !== "" && $("#storeURLId").val() !== "" && $("#productDescriptionId").val() !== "" && assReqVal !== ""){
    	if(fileName === ""){
			alert("Please upload a product image.");
			result = false;
	    } else if(!(fileExtension === "png" || fileExtension === "jpg" || fileExtension === "gif" || fileExtension === "jpeg" || fileExtension === "bmp" || fileExtension === "heic" || fileExtension === "heif")){
	    	alert("Please upload a JPG, JPEG, BMP, HEIC, HEIF, GIF, or PNG file.");
	    	return false;
	    }
    } 
	 
    return result;
    });
    
 // Furniture Specs Edit button validation

     $("#furnitureSpecsEditButtonId").click(function (){
     var result = true;    
     if(nameRegExp.test($("#productNameId").val())){ $("#productNameId").css("border-bottom-color","black");
     } else{ $("#productNameId").css("border-bottom-color","red"); result=false; }
         
     if(budgetRegExp.test($("#productPriceId").val())){$("#productPriceId").css("border-bottom-color","black");
     } else{ $("#productPriceId").css("border-bottom-color","red"); result=false; }

     if(numbRegExp.test($("#productsQuantityId").val())){$("#productsQuantityId").css("border-bottom-color","black");
     } else{ $("#productsQuantityId").css("border-bottom-color","red"); result=false; }
     
     if(nameRegExp.test($("#storeNameId").val())){$("#storeNameId").css("border-bottom-color","black");
     } else{ $("#storeNameId").css("border-bottom-color","red"); result=false; }
         
     if(urlRegExp.test($("#storeURLId").val())){ $("#storeURLId").css("border-bottom-color","black");
     } else{ $("#storeURLId").css("border-bottom-color","red"); result=false; }
     
     if(prodDesReg.test($("#productDescriptionId").val())){ $("#productDescriptionId").css("border-bottom-color","black");
     } else{ $("#productDescriptionId").css("border-bottom-color","red"); result=false; }

     var assReqVal = document.fileUpload.assemblyRequiredStatus.value;    
     if(assReqVal !== "") {$("#ass_req_status_id").css("color","black");
     } else{ $("#ass_req_status_id").css("color","red");  result=false; }
     
     
     var fileName = $("#fileUploadId").val();
     if(fileName !== ""){    	 
     var fileExtension = fileName.replace(/^.*\./, '').toLowerCase();
     
     if(!(fileExtension === "png" || fileExtension === "jpg" || fileExtension === "gif" || fileExtension === "jpeg" || fileExtension === "bmp" || fileExtension === "heic" || fileExtension === "heif")){
 	    alert("Please upload a JPG, JPEG, BMP, HEIC, HEIF, GIF, or PNG file.");
 	    return false;
 	    }
     }
     
     return result;
     });
        
// Furniture Specs keyboard validations
     
    $("#productNameId").keyup(function(){
    if(nameRegExp.test(this.value)){ $(this).css("border-bottom-color","black");
    } else{ $(this).css("border-bottom-color","red");
    } });
        
    $("#productPriceId").keyup(function(){
    if(budgetRegExp.test(this.value)){$(this).css("border-bottom-color","black");
    } else{ $(this).css("border-bottom-color","red");
    } });
    
    $("#productsQuantityId").keyup(function(){
    if(numbRegExp.test(this.value)){$(this).css("border-bottom-color","black");
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

    $("#productDescriptionId").keyup(function(){
    if(prodDesReg.test(this.value)){$(this).css("border-bottom-color","black");
    } else{ $(this).css("border-bottom-color","red");
    } });

    $(".ass_req_status_value").click(function(){    	
    var assReqVal = document.fileUpload.assemblyRequiredStatus.value;
    if(assReqVal !== "") {$("#ass_req_status_id").css("color","black");
    } else{ $("#ass_req_status_id").css("color","red"); result=false;
    } });

    /*$('#productPriceId').keypress(function(e){
    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
    return false;
    }
       
    if (this.value.length == 0 && e.which == 46 ){
    return false;
    }
        
    if (this.value.length == 0 && e.which == 48 ){
    return false;
    }
    });*/

    $('#productPriceId').keypress(function(e){
    if (e.which != 8 && e.which != 0 && (e.which < 45 || e.which > 57)) {
    return false;
    }     
    });
       
    });
    
    