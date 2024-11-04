	$(document).ready(function() {
    
	$(".image_upload_files_submit_Btn").click(function(){
    $(".uploadForms").hide();
    if(this.id === "uploadButn1") $("#concept1Form").show();
    if(this.id === "uploadButn2") $("#concept2Form").show();
    if(this.id === "uploadButn3") $("#3dRenderingForm").show();
    
        
    $('#mask').css({'width': $(window).width(),'height': $(document).height()});	
    $('#mask').fadeIn(100);	
	$('#mask').fadeTo("fast",0.8);
	$('#imageDialog').fadeIn(500);
	$('.imageWindow .close').click(function (e) {
	e.preventDefault();
	$('#mask, .imageWindow').hide();
    });		
    });

    $(".buttonUploadClass").click(function(){
    var fileName = "";    
    if(this.id === "buttonUpload1") {    
	fileName = $("#concept1Upload").val();
    } else if(this.id === "buttonUpload2") {    
	fileName = $("#concept2Upload").val();
    } else if(this.id === "buttonUpload3") {    
	fileName = $("#3dRendeingUpload").val();
    }
        
	var fileExtension = fileName.replace(/^.*\./, '').toLowerCase();
	if(fileName === ""){
	alert("Pleae select a image to upload.");
	return false;
	} else if(!(fileExtension === "png" || fileExtension === "jpg" || fileExtension === "gif" || fileExtension === "jpeg" || fileExtension === "bmp" || fileExtension === "heic" || fileExtension === "heif")){
	alert("Please upload a JPG, JPEG, BMP, HEIC, HEIF, GIF, or PNG file. ");
	return false;
	} else {
    return true;
    }            
    });
		
	$(".full_rm_image_upload_files_submit_Btn").click(function(){
	    $(".uploadForms").hide();
	    if(this.id === "uploadButn1") $("#concept1Form").show();
	    if(this.id === "uploadButn2") $("#concept2Form").show();
	    if(this.id === "uploadButn3") $("#rendering1Form").show();
	    if(this.id === "uploadButn4") $("#rendering2Form").show();
	    if(this.id === "uploadButn5") $("#revRendering1Form").show();
	    if(this.id === "uploadButn6") $("#revRendering2Form").show();
	    if(this.id === "uploadButn7") $("#secRendering1Form").show();
	    if(this.id === "uploadButn8") $("#secRendering2Form").show();
	    
	        
	    $('#mask').css({'width': $(window).width(),'height': $(document).height()});	
	    $('#mask').fadeIn(100);	
		$('#mask').fadeTo("fast",0.8);
		$('#imageDialog').fadeIn(500);
		$('.imageWindow .close').click(function (e) {
		e.preventDefault();
		$('#mask, .imageWindow').hide();
	    });		
	    });
	
	

    $(".fullRoombuttonUploadClass").click(function(){
    var fileName = "";    
    if(this.id === "buttonUpload1") {    
	fileName = $("#concept1Upload").val();
    } else if(this.id === "buttonUpload2") {    
	fileName = $("#concept2Upload").val();
    } else if(this.id === "buttonUpload3") {    
	fileName = $("#rendeing1Upload").val();
    } else if(this.id === "buttonUpload4") {    
	fileName = $("#rendeing2Upload").val();
    } else if(this.id === "buttonUpload5") {    
	fileName = $("#revRendeing1Upload").val();
    } else if(this.id === "buttonUpload6") {    
	fileName = $("#revRendeing2Upload").val();
    } else if(this.id === "buttonUpload7") {    
	fileName = $("#secRendeing1Upload").val();
    } else if(this.id === "buttonUpload8") {    
	fileName = $("#secRendeing2Upload").val();
    }
        
	var fileExtension = fileName.replace(/^.*\./, '').toLowerCase();
	if(fileName === ""){
	alert("Pleae select a image to upload.");
	return false;
	} else if(!(fileExtension === "png" || fileExtension === "jpg" || fileExtension === "gif" || fileExtension === "jpeg" || fileExtension === "bmp" || fileExtension === "heic" || fileExtension === "heif")){
	alert("Please upload a JPG, JPEG, BMP, HEIC, HEIF, GIF, or PNG file. ");
	return false;
	} else {
    return true;
    }            
    });
    });
	
	var upVariable;
	var result = true;
    function modelwindowDisplay(){    	
    	$(".uploadForms").hide();
	    $("#modelWindowFrameId").show();
	    	        
	    $('#mask').css({'width': $(window).width(),'height': $(document).height()});	
	    $('#mask').fadeIn(100);	
		$('#mask').fadeTo("fast",0.8);
		$('#imageDialog').fadeIn(500);
		
		$('.imageWindow .close').click(function (e) {
		e.preventDefault();
		$('#mask, .imageWindow').hide();
		});
		if(upVariable === "Yes") {
			submitToAdmin();
			result = true;
	    } else {
	    	result = false;
	    }		
		return result;
    }
	
	function uploadSuccess(value){		
		upVariable = value;		
		 modelwindowDisplay();
	}
	
	