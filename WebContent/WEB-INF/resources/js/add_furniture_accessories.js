$(document).ready(function(){
	$(".furaccs").each(function(){
	$(this).click(function(){
	var cliStatus="";
	$(this).css("border-color","#ff3b3b");
	if($("#"+this.id+" img").attr("class") === "selected"){
	cliStatus="none";
	$("#"+this.id+" img").attr("class","");
	$(this).css("border-color","#808080");
        $(this).on('mouseover',function(){
	$(this).css("border-color","#ff3b3b");
 	});
	$(this).on('mouseout',function(){
	$(this).css("border-color","#808080");
 	});
	}
	if(cliStatus !== "none"){
        cliStatus="";
	$("#"+this.id+" img").attr("class","selected");
	$(this).unbind('mouseover').unbind('mouseout');
        }
	});
	$(this).on('mouseover',function(){
	$(this).css("border-color","#ff3b3b");
 	});
	$(this).on('mouseout',function(){
	$(this).css("border-color","#808080");
 	});
	});
        
        $("#frViewAll, #drViewAll").click(function(){
        $("#frWindow, #drWindow").hide();    
        if(this.id === "frViewAll")  $("#frWindow").show();
        if(this.id === "drViewAll")  $("#drWindow").show();  
	$('#mask').css({'width': $(window).width(),'height': $(document).height()});	
	$('#mask').fadeIn(100);	
	$('#mask').fadeTo("fast",0.8);
	$('#dialog').fadeIn(500);
	$('.popwindow #closeimg').click(function (e) {
	e.preventDefault();
	$('#mask, .popwindow').hide();
	});	
	});
        
        $(".frSub").click(function(){
        if(this.id === "frSub1"){
        $("#frMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/familyroombig1.jpg");    
        } 
        if(this.id === "frSub2"){
        $("#frMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/familyroombig2.jpg");    
        }
        if(this.id === "frSub3"){
        $("#frMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/familyroombig3.jpg");    
        }
        if(this.id === "frSub4"){
        $("#frMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/familyroombig4.jpg");    
        }
        if(this.id === "frSub5"){
        $("#frMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/familyroombig5.jpg");    
        }
        });
        
        $(".drSub").click(function(){
        if(this.id === "drSub1"){
        $("#drMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/diningroombig1.jpg");    
        } 
        if(this.id === "drSub2"){
        $("#drMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/diningroombig2.jpg");    
        }
        if(this.id === "drSub3"){
        $("#drMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/diningroombig3.jpg");    
        }
        if(this.id === "drSub4"){
        $("#drMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/diningroombig4.jpg");    
        }
        if(this.id === "drSub5"){
        $("#drMain").attr("src","images/add_furniture_accessories/add_fur_acces_big/diningroombig5.jpg");    
        }
        });
        
});
