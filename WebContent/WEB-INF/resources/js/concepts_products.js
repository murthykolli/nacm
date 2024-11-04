$(document).ready(function() {
	
    $(".addFavouriteLikeImgClass").click(function(){
    	var favouriteLikeImgId = $(this).attr('id');
    	$("#"+favouriteLikeImgId).hide(); $("#remove"+favouriteLikeImgId).show();
		$("#addFavId").hide(); $("#removeFavId").show();
		document.popupProductsName.favLineName.value = "";
	});
    
    $(".removeFavouriteLikeImgClass").click(function(){
    	var favouriteLikeImgId = $(this).attr('id');
    	var addFavouriteLikeImgId = favouriteLikeImgId.replace("remove", "");
		$("#"+favouriteLikeImgId).hide(); $("#"+addFavouriteLikeImgId).show();
		$("#removeFavId").hide(); $("#addFavId").show();
		document.popupProductsName.favLineName.value = "Liked";
	});
    
        
    $("#removeFavId").click(function(){    	
    	$("#removeFavId").hide(); $("#addFavId").show();
    	document.popupProductsName.favLineName.value = "Liked";
	});
    
    $("#addFavId").click(function(){
    	$("#addFavId").hide(); $("#removeFavId").show();
    	document.popupProductsName.favLineName.value = "";
	});
    
    $("#productSubmitId").click(function(){    	
    	var productVal = $("#noOfProductsId").val();    	
    	if(productVal === "") {
    		alert("Please enter products");
    		return false;
    	}
    	
    	if(productVal === "0") {
    		alert("Please enter valid products");
    		return false;
    	}
	});
    

	var addFavVal = "favouriteImg"+(idOfHiddenInput+1);
    var removeFavVal = "removefavouriteImg"+(idOfHiddenInput+1);
    $("#addFavValId").val(addFavVal);
    $("#removeFavId").val(removeFavVal);
    
    
	
	$("#accePrice, #fullRoomPrice").click(function(){
	$('#accessories, #full_room').hide();
	if($(this).attr("id") === "accePrice")
	$('#accessories').show();
	if($(this).attr("id") === "fullRoomPrice")
	$('#full_room').show();
	$('#imgmask').css({'width': $(window).width(),'height': $(document).height()});	
	$('#imgmask').fadeIn(100);	
	$('#imgmask').fadeTo("fast",0.8);
	$('#dialog1').fadeIn(500);
	$('.window1 .close').click(function() {
	$('#imgmask, .window1').hide();
	});
	});
});

