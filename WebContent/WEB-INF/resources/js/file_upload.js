$(document).ready(function() {		
	
		$("#photoupload").click(function(){
		$('#mask').css({'width': $(window).width(),'height': $(document).height()});	
		$('#mask').fadeIn(100);	
		$('#mask').fadeTo("fast",0.8);
		$('#dialog').fadeIn(500);
		$('.window .close').click(function (e) {
		e.preventDefault();
		$('#mask, .window').hide();
	});		
	});
		
		$("#redUploadImage").click(function(){
			$('#mask').css({'width': $(window).width(),'height': $(document).height()});	
			$('#mask').fadeIn(100);	
			$('#mask').fadeTo("fast",0.8);
			$('#dialog').fadeIn(500);
			$('.window .close').click(function (e) {
			e.preventDefault();
			$('#mask, .window').hide();
		});		
		});


		$("#redBackGroundImageUpload").click(function(){
			$('#mask').css({'width': $(window).width(),'height': $(document).height()});	
			$('#mask').fadeIn(100);	
			$('#mask').fadeTo("fast",0.8);
			$('#dialog').fadeIn(500);
			$('.window .close').click(function (e) {
			e.preventDefault();
			$('#mask, .window').hide();
		});		
		});

var eventObj;
$("#fileUpload").click(function(event){
eventObj=event;
});
	
$("#uploadBut").click(function(){
	var fileName = $("#fileUpload").val();
	var fileExtension = fileName.replace(/^.*\./, '').toLowerCase();	
	if(fileName === ""){
	alert("Pleae select a photo to upload.");
	return false;
	} else if(!(fileExtension === "png" || fileExtension === "jpg" || fileExtension === "gif" || fileExtension === "jpeg" || fileExtension === "bmp" || fileExtension === "heic" || fileExtension === "heif")){
		alert("Please upload a JPG, JPEG, BMP, HEIC, HEIF, GIF, or PNG file.");
		return false;
	} else {
	var getImagePath = URL.createObjectURL(eventObj.target.files[0]);
	var image = new Image();
	image.src = getImagePath;
	image.onload = function() {
	if(this.width < 240 || this.height < 320) {
	alert("Photo (width x height) should not be less than (240 x 320).");
	return false;
	} else {
	if($("#accept").is(':checked')){
	$('#uploadImage').attr('src', getImagePath).show();
	$("#photoText, #mask, .window").hide();
	}else{
	alert("Please check the option.");
	return false;
	}
	} }; }            
});

$("#photoUploadBut").click(function(){
	var fileName = $("#fileUpload").val();
	var fileExtension = fileName.replace(/^.*\./, '').toLowerCase();
	if(fileName === ""){
	alert("Pleae select a photo to upload.");
	return false;
	} else if(!(fileExtension === "png" || fileExtension === "jpg" || fileExtension === "gif" || fileExtension === "jpeg" || fileExtension === "bmp" || fileExtension === "heic" || fileExtension === "heif")){
		alert("Please upload a JPG, JPEG, BMP, HEIC, HEIF, GIF, or PNG file.");
	return false;
	} else {	
	var getImagePath = URL.createObjectURL(eventObj.target.files[0]);
	
	var image = new Image();
	image.src = getImagePath;	
	
	if($("#accept").is(':checked')){	
	$('#uploadImage').attr('src', getImagePath).show();
	$("#photoText, #mask, .window").hide();	
	}else{
	alert("Please check the option.");
	return false;
	}
	}            
});
});

