$(document).ready(function() {
	$("#furButton").click(function(){	
	var id = '#dialog';
	$('#mask').css({'width':$(window).width(),'height':$(document).height()});
	$('#mask').fadeIn(100);	
	$('#mask').fadeTo("fast",0.9);
	$(id).css('top',  $(window).height()/2-$(id).height()/2);
	$(id).css('left', $(window).width()/2-$(id).width()/2);
	$(id).fadeIn(500);
	$('.window .close').click(function(e) {
	e.preventDefault();
	$('#mask, .window').hide();
	});
	});

	$("#removefav").click(function(){
       	$("#removefav").hide();
       	$("#addfav").show();
        });

     	$("#addfav").click(function(){
       	$("#removefav").show();
       	$("#addfav").hide();
        });
	
	$("#subFur1").click(function(){
	$("#mainFur").attr("src",'resources/images/popupimgs/chairtypebig1.png');
	});

	$("#subFur2").click(function(){
	$("#mainFur").attr("src",'resources/images/popupimgs/chairtypebig2.png');
	});

	$("#subFur3").click(function(){
	$("#mainFur").attr("src",'resources/images/popupimgs/chairtypebig3.png');
	});

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

