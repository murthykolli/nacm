$(document).ready(function(){
 	
	var con1LikeVal;
    $("#remove1FavConept1").click(function(){ con1LikeVal = "Con1_3 Likes"; $("#remove1FavConept1").hide(); $("#add1FavConept1").show(); $("#remove1FavConept2").hide(); $("#add1FavConept2").show(); $("#remove1FavConept3").hide(); $("#add1FavConept3").show(); newAjaxCon3RendCall(con1LikeVal); });
    $("#add1FavConept1").click(function(){ con1LikeVal = "Con1_2 Likes"; $("#remove1FavConept1").show(); $("#add1FavConept1").hide(); newAjaxCon3RendCall(con1LikeVal); });

	$("#remove1FavConept2").click(function(){ con1LikeVal = "Con1_2 Likes"; $("#remove1FavConept2").hide(); $("#add1FavConept2").show(); $("#remove1FavConept3").hide(); $("#add1FavConept3").show(); newAjaxCon3RendCall(con1LikeVal); });
    $("#add1FavConept2").click(function(){ con1LikeVal = "Con1_1 Like";	$("#remove1FavConept2").show(); $("#add1FavConept2").hide(); $("#remove1FavConept1").show(); $("#add1FavConept1").hide(); newAjaxCon3RendCall(con1LikeVal); });

	$("#remove1FavConept3").click(function(){ con1LikeVal = "Con1_1 Like";	$("#remove1FavConept3").hide(); $("#add1FavConept3").show(); newAjaxCon3RendCall(con1LikeVal); });
    $("#add1FavConept3").click(function(){ con1LikeVal = "Con1_No Likes"; $("#remove1FavConept1").show(); $("#add1FavConept1").hide(); $("#remove1FavConept2").show(); $("#add1FavConept2").hide(); $("#remove1FavConept3").show(); $("#add1FavConept3").hide(); newAjaxCon3RendCall(con1LikeVal); });
    
    
	var con2LikeVal;
    $("#remove2FavConept1").click(function(){ con2LikeVal = "Con2_3 Likes"; $("#remove2FavConept1").hide(); $("#add2FavConept1").show(); $("#remove2FavConept2").hide(); $("#add2FavConept2").show(); $("#remove2FavConept3").hide(); $("#add2FavConept3").show(); newAjaxCon3RendCall(con2LikeVal); });
    $("#add2FavConept1").click(function(){ con2LikeVal = "Con2_2 Likes"; $("#remove2FavConept1").show(); $("#add2FavConept1").hide(); newAjaxCon3RendCall(con2LikeVal); });

	$("#remove2FavConept2").click(function(){ con2LikeVal = "Con2_2 Likes"; $("#remove2FavConept2").hide(); $("#add2FavConept2").show(); $("#remove2FavConept3").hide(); $("#add2FavConept3").show(); newAjaxCon3RendCall(con2LikeVal); });
    $("#add2FavConept2").click(function(){ con2LikeVal = "Con2_1 Like";	$("#remove2FavConept2").show(); $("#add2FavConept2").hide(); $("#remove2FavConept1").show(); $("#add2FavConept1").hide(); newAjaxCon3RendCall(con2LikeVal); });

	$("#remove2FavConept3").click(function(){ con2LikeVal = "Con2_1 Like"; $("#remove2FavConept3").hide(); $("#add2FavConept3").show(); newAjaxCon3RendCall(con2LikeVal); });
    $("#add2FavConept3").click(function(){ con2LikeVal = "Con2_No Likes"; $("#remove2FavConept1").show(); $("#add2FavConept1").hide(); $("#remove2FavConept2").show(); $("#add2FavConept2").hide(); $("#remove2FavConept3").show(); $("#add2FavConept3").hide(); newAjaxCon3RendCall(con2LikeVal); });
    
    var con3LikeVal;		
    $("#removeFinalFavConept1").click(function(){ con3LikeVal = "Con3_3 Likes"; $("#removeFinalFavConept1").hide(); $("#addFinalFavConept1").show(); $("#removeFinalFavConept2").hide(); $("#addFinalFavConept2").show(); $("#removeFinalFavConept3").hide(); $("#addFinalFavConept3").show(); newAjaxCon3RendCall(con3LikeVal); });
    $("#addFinalFavConept1").click(function(){	con3LikeVal = "Con3_2 Likes"; $("#removeFinalFavConept1").show(); $("#addFinalFavConept1").hide(); newAjaxCon3RendCall(con3LikeVal); });

    $("#removeFinalFavConept2").click(function(){ con3LikeVal = "Con3_2 Likes"; $("#removeFinalFavConept2").hide(); $("#addFinalFavConept2").show(); $("#removeFinalFavConept3").hide(); $("#addFinalFavConept3").show(); newAjaxCon3RendCall(con3LikeVal); });
    $("#addFinalFavConept2").click(function(){	con3LikeVal = "Con3_1 Like"; $("#removeFinalFavConept2").show(); $("#addFinalFavConept2").hide(); $("#removeFinalFavConept1").show(); $("#addFinalFavConept1").hide(); newAjaxCon3RendCall(con3LikeVal); });

    $("#removeFinalFavConept3").click(function(){ con3LikeVal = "Con3_1 Like";	$("#removeFinalFavConept3").hide(); $("#addFinalFavConept3").show(); newAjaxCon3RendCall(con3LikeVal); });
    $("#addFinalFavConept3").click(function(){	con3LikeVal = "Con3_No Likes"; $("#removeFinalFavConept1").show(); $("#addFinalFavConept1").hide(); $("#removeFinalFavConept2").show(); $("#addFinalFavConept2").hide(); $("#removeFinalFavConept3").show(); $("#addFinalFavConept3").hide(); newAjaxCon3RendCall(con3LikeVal); });

		
	var likeImagesValues = likeImagesValue.split("_");
	
        if(likeImagesValues[0] === "1"){ $("#remove1FavConept3").hide(); $("#add1FavConept3").show(); } 
        else if(likeImagesValues[0] === "2"){ $("#remove1FavConept2").hide(); $("#add1FavConept2").show(); $("#remove1FavConept3").hide(); $("#add1FavConept3").show(); } 
        else if(likeImagesValues[0] === "3"){ $("#remove1FavConept1").hide(); $("#add1FavConept1").show(); $("#remove1FavConept2").hide(); $("#add1FavConept2").show(); $("#remove1FavConept3").hide(); $("#add1FavConept3").show(); } 
        else{ }
        
        if(likeImagesValues[1] === "1"){ $("#remove2FavConept3").hide(); $("#add2FavConept3").show(); } 
        else if(likeImagesValues[1] === "2"){ $("#remove2FavConept2").hide(); $("#add2FavConept2").show(); $("#remove2FavConept3").hide(); $("#add2FavConept3").show(); } 
        else if(likeImagesValues[1] === "3"){ $("#remove2FavConept1").hide(); $("#add2FavConept1").show(); $("#remove2FavConept2").hide(); $("#add2FavConept2").show(); $("#remove2FavConept3").hide(); $("#add2FavConept3").show(); } 
        else{ }

        if(likeImagesValues[2] === "1"){ $("#removeFinalFavConept3").hide(); $("#addFinalFavConept3").show(); } 
        else if(likeImagesValues[2] === "2"){ $("#removeFinalFavConept2").hide(); $("#addFinalFavConept2").show(); $("#removeFinalFavConept3").hide(); $("#addFinalFavConept3").show(); } 
        else if(likeImagesValues[2] === "3"){ $("#removeFinalFavConept1").hide(); $("#addFinalFavConept1").show(); $("#removeFinalFavConept2").hide(); $("#addFinalFavConept2").show(); $("#removeFinalFavConept3").hide(); $("#addFinalFavConept3").show(); } 
        else{ }
    
    });