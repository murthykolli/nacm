      
    $(document).ready(function(){
    	$(".shpSubImgsClass").each(function(){
    	$(this).click(function(){
    	$(".shpSubImgsClass").css("border-color","grey");
    	$(".shpSubImgsClass").on('mouseover',function(){
    	$(this).css("border-color","#ff3b3b");
     	});
    	$(".shpSubImgsClass").on('mouseout',function(){
    	$(this).css("border-color","grey");
     	});
    	$(this).css("border-color","#ff3b3b");
    	$(this).unbind('mouseover').unbind('mouseout');
    	});
    	$(this).on('mouseover',function(){
    	$(this).css("border-color","#ff3b3b");
     	});
    	$(this).on('mouseout',function(){
    	$(this).css("border-color","grey");
     	});
    	});
    	
    	var consept1Images = consept1ImagesList.split("_,_");
        var productsCon1Names = productsCon1NamesList.split("_,_");
        var productsCon1Price = productsCon1PriceList.split("_,_");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow1Id");    
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 0; i < 4 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];        
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");        
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow1Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 0; i < 4 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>"); 
        
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow2Id");    
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 4; i < 8 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow2Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 4; i < 8 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow3Id");    
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 8; i < 15 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow3ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow3Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 8; i < 15 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
            
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow4Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 15; i < 22 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow4ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow4Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 15; i < 22 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow5Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 22; i < 29 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow5ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow5Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 22; i < 29 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
            
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow6Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 29; i < 36 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow6ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow6Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 29; i < 36 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
            
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow7Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 36; i < 43 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow7ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow7Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 36; i < 43 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
            
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow8Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 43; i < 50 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow8ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow8Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 43; i < 50 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow9Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 50; i < 57 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow9ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow9Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 50; i < 57 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow10Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 57; i < 64 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow10ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow10Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 57; i < 64 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow11Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 64; i < 71 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow11ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow11Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 64; i < 71 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
            
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow12Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 71; i < 78 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow12ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow12Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 71; i < 78 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow13Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 78; i < 85 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow13ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow13Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 78; i < 85 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow14Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 85; i < 92 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow14ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow14Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 85; i < 92 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
        
        
        var concept1ImgRow1IdTable = $("#concept1ImagesRow15Id");  
        concept1ImgRow1IdTable.append("<tr>");    
        for (var i = 92; i < 99 && i < consept1Images.length; i++){
        if(consept1Images[i] !== ""){
        	$("#bigRow15ID").show();
        var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[i];
        concept1ImgRow1IdTable.append("<a href='#' id='furButton'>");    
        concept1ImgRow1IdTable.append("<td><div class='consept1ImagesClass'><img class='popupWindowImageClass' src=" + consept1ImageR1Display + " alt=''  height='117' width='104'/> <input id="+i+" type='hidden'/> </div></td></a>");
        } }
        concept1ImgRow1IdTable.append("</tr>");    
        
        var concept1ProdRow1IdTable = $("#concept1ProductsRow15Id");    
        concept1ProdRow1IdTable.append("<tr>");    
        for (var i = 92; i < 99 && i < productsCon1Names.length; i++){
        if(productsCon1Names[i] !== ""){
            	
        var consept1ProNR1dDisplay = productsCon1Names[i];
        var consept1ProPR1dDisplay = productsCon1Price[i].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        concept1ProdRow1IdTable.append("<td>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; border-top: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; padding-top: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>" + consept1ProNR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("<div style='border-left: 1px solid gray; border-right: 1px solid gray; text-align: center; width: 112px; margin-left: 10px; border-bottom: 1px solid gray; padding-bottom: 5px;'><font style='font: 0.9em/1.25em sans-serif;'>$" + consept1ProPR1dDisplay + "</font></div>");
        concept1ProdRow1IdTable.append("</td>");
        } }
        concept1ProdRow1IdTable.append("</tr>");
         
        
        $(".popupWindowImageClass").click(function(){  
        
        window.scrollTo(0,0);        
        $("#bigPortfolio").attr("src",$(this).attr("src")).css({'display': 'block', 'height': $(window).height()-60 ,'width': $("body").innerWidth()-15});
        $('#portfolioMask').css({'width':$(window).width(),'height':$(document).height()});
        $('#portfolioMask').fadeIn(100);	
        $('#portfolioMask').fadeTo("fast",0.9);
        $("#dialog").fadeIn(500);
        $('.window .close').click(function(e) {
        e.preventDefault();
        $('#portfolioMask, .window').hide();
        });
        });
        
        });


