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
    var productsCon1Quantity = productsCon1QuantityList.split("_,_");
    var productsCon1Price = productsCon1PriceList.split("_,_");
    var productsCon1Id = productsCon1IdList.split("_,_");
    var productsCon1Des = productsCon1DescList.split("_,_");
    var productsCon1AssReq = productsCon1AssReqStList.split("_,_");
    
    
    var shopViewProductsRow1Col1Div = $("#shopViewProductsRow1Col1Id"); var shopViewProdContRow1Col1Table = $("#shopViewProdContRow1Col1Id");
    if(productsCon1Id.length > 0 && consept1Images[0] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[0];
    var consept1ProNR1dDisplay = productsCon1Names[0];  var consept1ProQR1dDisplay = productsCon1Quantity[0];  var consept1ProPR1dDisplay = productsCon1Price[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow1Col1Div.append("<a href='#' id='furButton1'> <div class='shopViewProductsClass'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='0' type='hidden'/> </div></a>");
    shopViewProdContRow1Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='0' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow1Col2Div = $("#shopViewProductsRow1Col2Id"); var shopViewProdContRow1Col2Table = $("#shopViewProdContRow1Col2Id");    
    if(productsCon1Id.length > 1 && consept1Images[1] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[1];
    var consept1ProNR1dDisplay = productsCon1Names[1];  var consept1ProQR1dDisplay = productsCon1Quantity[1];  var consept1ProPR1dDisplay = productsCon1Price[1].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow1Col2Div.append("<a href='#' id='furButton2'> <div class='shopViewProductsClass'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='1' type='hidden'/> </div></a>");
    shopViewProdContRow1Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='1' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow1Col3Div = $("#shopViewProductsRow1Col3Id"); var shopViewProdContRow1Col3Table = $("#shopViewProdContRow1Col3Id");
    if(productsCon1Id.length > 2 && consept1Images[2] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[2];
    var consept1ProNR1dDisplay = productsCon1Names[2];  var consept1ProQR1dDisplay = productsCon1Quantity[2]; var consept1ProPR1dDisplay = productsCon1Price[2].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow1Col3Div.append("<a href='#' id='furButton3'> <div class='shopViewProductsClass'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='2' type='hidden'/> </div></a>");
    shopViewProdContRow1Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='2' type='hidden'/> </td></tr></table></div>");
    }
    
    
    /*Row 2 Info*/
    var shopViewProductsRow2Col1Div = $("#shopViewProductsRow2Col1Id"); var shopViewProdContRow2Col1Table = $("#shopViewProdContRow2Col1Id");
    if(productsCon1Id.length > 3 && consept1Images[3] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[3];
    var consept1ProNR1dDisplay = productsCon1Names[3];  var consept1ProQR1dDisplay = productsCon1Quantity[3]; var consept1ProPR1dDisplay = productsCon1Price[3].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow2Col1Div.append("<a href='#' id='furButton4'> <div class='shopViewProductsClass top_adjustment_15'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='3' type='hidden'/> </div></a>");    
    shopViewProdContRow2Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='3' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow2Col2Div = $("#shopViewProductsRow2Col2Id"); var shopViewProdContRow2Col2Table = $("#shopViewProdContRow2Col2Id");
    if(productsCon1Id.length > 4 && consept1Images[4] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[4];
    var consept1ProNR1dDisplay = productsCon1Names[4];  var consept1ProQR1dDisplay = productsCon1Quantity[4]; var consept1ProPR1dDisplay = productsCon1Price[4].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow2Col2Div.append("<a href='#' id='furButton5'> <div class='shopViewProductsClass top_adjustment_15'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='4' type='hidden'/> </div></a>");
    shopViewProdContRow2Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='4' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow2Col3Div = $("#shopViewProductsRow2Col3Id"); var shopViewProdContRow2Col3Table = $("#shopViewProdContRow2Col3Id");
    if(productsCon1Id.length > 5 && consept1Images[5] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[5];
    var consept1ProNR1dDisplay = productsCon1Names[5]; var consept1ProQR1dDisplay = productsCon1Quantity[5]; var consept1ProPR1dDisplay = productsCon1Price[5].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow2Col3Div.append("<a href='#' id='furButton6'> <div class='shopViewProductsClass top_adjustment_15'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='5' type='hidden'/> </div></a>");
    shopViewProdContRow2Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='5' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow2Col4Div = $("#shopViewProductsRow2Col4Id"); var shopViewProdContRow2Col4Table = $("#shopViewProdContRow2Col4Id");
    if(productsCon1Id.length > 6 && consept1Images[6] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[6];
    var consept1ProNR1dDisplay = productsCon1Names[6]; var consept1ProQR1dDisplay = productsCon1Quantity[6]; var consept1ProPR1dDisplay = productsCon1Price[6].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow2Col4Div.append("<a href='#' id='furButton7'> <div class='shopViewProductsClass top_adjustment_15'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='6' type='hidden'/> </div></a>");
    shopViewProdContRow2Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='6' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow2Col5Div = $("#shopViewProductsRow2Col5Id"); var shopViewProdContRow2Col5Table = $("#shopViewProdContRow2Col5Id");
    if(productsCon1Id.length > 7 && consept1Images[7] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[7];
    var consept1ProNR1dDisplay = productsCon1Names[7]; var consept1ProQR1dDisplay = productsCon1Quantity[7]; var consept1ProPR1dDisplay = productsCon1Price[7].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow2Col5Div.append("<a href='#' id='furButton8'> <div class='shopViewProductsClass top_adjustment_15'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='7' type='hidden'/> </div></a>");
    shopViewProdContRow2Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='7' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow2Col6Div = $("#shopViewProductsRow2Col6Id"); var shopViewProdContRow2Col6Table = $("#shopViewProdContRow2Col6Id");
    if(productsCon1Id.length > 8 && consept1Images[8] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[8];
    var consept1ProNR1dDisplay = productsCon1Names[8]; var consept1ProQR1dDisplay = productsCon1Quantity[8]; var consept1ProPR1dDisplay = productsCon1Price[8].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow2Col6Div.append("<a href='#' id='furButton9'> <div class='shopViewProductsClass top_adjustment_15'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='8' type='hidden'/> </div></a>");
    shopViewProdContRow2Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='8' type='hidden'/> </td></tr></table></div>");
    }
    
    
    /*Row 3 Info*/
    var shopViewProductsRow3Col1Div = $("#shopViewProductsRow3Col1Id"); var shopViewProdContRow3Col1Table = $("#shopViewProdContRow3Col1Id");
    if(productsCon1Id.length > 9 && consept1Images[9] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[9];
    var consept1ProNR1dDisplay = productsCon1Names[9]; var consept1ProQR1dDisplay = productsCon1Quantity[9]; var consept1ProPR1dDisplay = productsCon1Price[9].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow3Col1Div.append("<a href='#' id='furButton10'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='9' type='hidden'/> </div></a>");    
    shopViewProdContRow3Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='9' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow3Col2Div = $("#shopViewProductsRow3Col2Id"); var shopViewProdContRow3Col2Table = $("#shopViewProdContRow3Col2Id");
    if(productsCon1Id.length > 10 && consept1Images[10] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[10];
    var consept1ProNR1dDisplay = productsCon1Names[10]; var consept1ProQR1dDisplay = productsCon1Quantity[10]; var consept1ProPR1dDisplay = productsCon1Price[10].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow3Col2Div.append("<a href='#' id='furButton11'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='10' type='hidden'/> </div></a>");
    shopViewProdContRow3Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='10' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow3Col3Div = $("#shopViewProductsRow3Col3Id"); var shopViewProdContRow3Col3Table = $("#shopViewProdContRow3Col3Id");
    if(productsCon1Id.length > 11 && consept1Images[11] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[11];
    var consept1ProNR1dDisplay = productsCon1Names[11]; var consept1ProQR1dDisplay = productsCon1Quantity[11]; var consept1ProPR1dDisplay = productsCon1Price[11].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow3Col3Div.append("<a href='#' id='furButton12'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='11' type='hidden'/> </div></a>");
    shopViewProdContRow3Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='11' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow3Col4Div = $("#shopViewProductsRow3Col4Id"); var shopViewProdContRow3Col4Table = $("#shopViewProdContRow3Col4Id");
    if(productsCon1Id.length > 12 && consept1Images[12] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[12];
    var consept1ProNR1dDisplay = productsCon1Names[12]; var consept1ProQR1dDisplay = productsCon1Quantity[12]; var consept1ProPR1dDisplay = productsCon1Price[12].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow3Col4Div.append("<a href='#' id='furButton13'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='12' type='hidden'/> </div></a>");
    shopViewProdContRow3Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='12' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow3Col5Div = $("#shopViewProductsRow3Col5Id"); var shopViewProdContRow3Col5Table = $("#shopViewProdContRow3Col5Id");
    if(productsCon1Id.length > 13 && consept1Images[13] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[13];
    var consept1ProNR1dDisplay = productsCon1Names[13]; var consept1ProQR1dDisplay = productsCon1Quantity[13]; var consept1ProPR1dDisplay = productsCon1Price[13].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow3Col5Div.append("<a href='#' id='furButton14'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='13' type='hidden'/> </div></a>");
    shopViewProdContRow3Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='13' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow3Col6Div = $("#shopViewProductsRow3Col6Id"); var shopViewProdContRow3Col6Table = $("#shopViewProdContRow3Col6Id");
    if(productsCon1Id.length > 14 && consept1Images[14] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[14];
    var consept1ProNR1dDisplay = productsCon1Names[14]; var consept1ProQR1dDisplay = productsCon1Quantity[14]; var consept1ProPR1dDisplay = productsCon1Price[14].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow3Col6Div.append("<a href='#' id='furButton15'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='14' type='hidden'/> </div></a>");
    shopViewProdContRow3Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='14' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 4 Info*/
    var shopViewProductsRow4Col1Div = $("#shopViewProductsRow4Col1Id"); var shopViewProdContRow4Col1Table = $("#shopViewProdContRow4Col1Id");
    if(productsCon1Id.length > 15 && consept1Images[15] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[15];
    var consept1ProNR1dDisplay = productsCon1Names[15]; var consept1ProQR1dDisplay = productsCon1Quantity[15]; var consept1ProPR1dDisplay = productsCon1Price[15].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow4Col1Div.append("<a href='#' id='furButton16'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='15' type='hidden'/> </div></a>");    
    shopViewProdContRow4Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='15' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow4Col2Div = $("#shopViewProductsRow4Col2Id"); var shopViewProdContRow4Col2Table = $("#shopViewProdContRow4Col2Id");
    if(productsCon1Id.length > 16 && consept1Images[16] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[16];
    var consept1ProNR1dDisplay = productsCon1Names[16]; var consept1ProQR1dDisplay = productsCon1Quantity[16]; var consept1ProPR1dDisplay = productsCon1Price[16].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow4Col2Div.append("<a href='#' id='furButton17'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='16' type='hidden'/> </div></a>");
    shopViewProdContRow4Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='16' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow4Col3Div = $("#shopViewProductsRow4Col3Id"); var shopViewProdContRow4Col3Table = $("#shopViewProdContRow4Col3Id");
    if(productsCon1Id.length > 17 && consept1Images[17] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[17];
    var consept1ProNR1dDisplay = productsCon1Names[17]; var consept1ProQR1dDisplay = productsCon1Quantity[17]; var consept1ProPR1dDisplay = productsCon1Price[17].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow4Col3Div.append("<a href='#' id='furButton18'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='17' type='hidden'/> </div></a>");
    shopViewProdContRow4Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='17' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow4Col4Div = $("#shopViewProductsRow4Col4Id"); var shopViewProdContRow4Col4Table = $("#shopViewProdContRow4Col4Id");
    if(productsCon1Id.length > 18 && consept1Images[18] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[18];
    var consept1ProNR1dDisplay = productsCon1Names[18]; var consept1ProQR1dDisplay = productsCon1Quantity[18]; var consept1ProPR1dDisplay = productsCon1Price[18].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow4Col4Div.append("<a href='#' id='furButton19'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='18' type='hidden'/> </div></a>");
    shopViewProdContRow4Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='18' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow4Col5Div = $("#shopViewProductsRow4Col5Id"); var shopViewProdContRow4Col5Table = $("#shopViewProdContRow4Col5Id");
    if(productsCon1Id.length > 19 && consept1Images[19] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[19];
    var consept1ProNR1dDisplay = productsCon1Names[19]; var consept1ProQR1dDisplay = productsCon1Quantity[19]; var consept1ProPR1dDisplay = productsCon1Price[19].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow4Col5Div.append("<a href='#' id='furButton20'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='19' type='hidden'/> </div></a>");
    shopViewProdContRow4Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='19' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow4Col6Div = $("#shopViewProductsRow4Col6Id"); var shopViewProdContRow4Col6Table = $("#shopViewProdContRow4Col6Id");
    if(productsCon1Id.length > 20 && consept1Images[20] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[20];
    var consept1ProNR1dDisplay = productsCon1Names[20]; var consept1ProQR1dDisplay = productsCon1Quantity[20]; var consept1ProPR1dDisplay = productsCon1Price[20].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow4Col6Div.append("<a href='#' id='furButton21'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='20' type='hidden'/> </div></a>");
    shopViewProdContRow4Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='20' type='hidden'/> </td></tr></table></div>");
    }
        

    /*Row 5 Info*/
    var shopViewProductsRow5Col1Div = $("#shopViewProductsRow5Col1Id"); var shopViewProdContRow5Col1Table = $("#shopViewProdContRow5Col1Id");
    if(productsCon1Id.length > 21 && consept1Images[21] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[21];
    var consept1ProNR1dDisplay = productsCon1Names[21]; var consept1ProQR1dDisplay = productsCon1Quantity[21]; var consept1ProPR1dDisplay = productsCon1Price[21].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow5Col1Div.append("<a href='#' id='furButton22'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='21' type='hidden'/> </div></a>");    
    shopViewProdContRow5Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='21' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow5Col2Div = $("#shopViewProductsRow5Col2Id"); var shopViewProdContRow5Col2Table = $("#shopViewProdContRow5Col2Id");
    if(productsCon1Id.length > 22 && consept1Images[22] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[22];
    var consept1ProNR1dDisplay = productsCon1Names[22]; var consept1ProQR1dDisplay = productsCon1Quantity[22]; var consept1ProPR1dDisplay = productsCon1Price[22].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow5Col2Div.append("<a href='#' id='furButton23'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='22' type='hidden'/> </div></a>");
    shopViewProdContRow5Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='22' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow5Col3Div = $("#shopViewProductsRow5Col3Id"); var shopViewProdContRow5Col3Table = $("#shopViewProdContRow5Col3Id");
    if(productsCon1Id.length > 23 && consept1Images[23] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[23];
    var consept1ProNR1dDisplay = productsCon1Names[23]; var consept1ProQR1dDisplay = productsCon1Quantity[23]; var consept1ProPR1dDisplay = productsCon1Price[23].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow5Col3Div.append("<a href='#' id='furButton24'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='23' type='hidden'/> </div></a>");
    shopViewProdContRow5Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='23' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow5Col4Div = $("#shopViewProductsRow5Col4Id"); var shopViewProdContRow5Col4Table = $("#shopViewProdContRow5Col4Id");
    if(productsCon1Id.length > 24 && consept1Images[24] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[24];
    var consept1ProNR1dDisplay = productsCon1Names[24]; var consept1ProQR1dDisplay = productsCon1Quantity[24]; var consept1ProPR1dDisplay = productsCon1Price[24].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow5Col4Div.append("<a href='#' id='furButton25'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='24' type='hidden'/> </div></a>");
    shopViewProdContRow5Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='24' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow5Col5Div = $("#shopViewProductsRow5Col5Id"); var shopViewProdContRow5Col5Table = $("#shopViewProdContRow5Col5Id");
    if(productsCon1Id.length > 25 && consept1Images[25] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[25];
    var consept1ProNR1dDisplay = productsCon1Names[25]; var consept1ProQR1dDisplay = productsCon1Quantity[25]; var consept1ProPR1dDisplay = productsCon1Price[25].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow5Col5Div.append("<a href='#' id='furButton26'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='25' type='hidden'/> </div></a>");
    shopViewProdContRow5Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='25' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow5Col6Div = $("#shopViewProductsRow5Col6Id"); var shopViewProdContRow5Col6Table = $("#shopViewProdContRow5Col6Id");
    if(productsCon1Id.length > 26 && consept1Images[26] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[26];
    var consept1ProNR1dDisplay = productsCon1Names[26]; var consept1ProQR1dDisplay = productsCon1Quantity[26]; var consept1ProPR1dDisplay = productsCon1Price[26].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow5Col6Div.append("<a href='#' id='furButton27'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='26' type='hidden'/> </div></a>");
    shopViewProdContRow5Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='26' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 6 Info*/
    var shopViewProductsRow6Col1Div = $("#shopViewProductsRow6Col1Id"); var shopViewProdContRow6Col1Table = $("#shopViewProdContRow6Col1Id");
    if(productsCon1Id.length > 27 && consept1Images[27] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[27];
    var consept1ProNR1dDisplay = productsCon1Names[27]; var consept1ProQR1dDisplay = productsCon1Quantity[27]; var consept1ProPR1dDisplay = productsCon1Price[27].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow6Col1Div.append("<a href='#' id='furButton28'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='27' type='hidden'/> </div></a>");    
    shopViewProdContRow6Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='27' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow6Col2Div = $("#shopViewProductsRow6Col2Id"); var shopViewProdContRow6Col2Table = $("#shopViewProdContRow6Col2Id");
    if(productsCon1Id.length > 28 && consept1Images[28] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[28];
    var consept1ProNR1dDisplay = productsCon1Names[28]; var consept1ProQR1dDisplay = productsCon1Quantity[28]; var consept1ProPR1dDisplay = productsCon1Price[28].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow6Col2Div.append("<a href='#' id='furButton29'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='28' type='hidden'/> </div></a>");
    shopViewProdContRow6Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='28' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow6Col3Div = $("#shopViewProductsRow6Col3Id"); var shopViewProdContRow6Col3Table = $("#shopViewProdContRow6Col3Id");
    if(productsCon1Id.length > 29 && consept1Images[29] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[29];
    var consept1ProNR1dDisplay = productsCon1Names[29]; var consept1ProQR1dDisplay = productsCon1Quantity[29]; var consept1ProPR1dDisplay = productsCon1Price[29].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow6Col3Div.append("<a href='#' id='furButton30'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='29' type='hidden'/> </div></a>");
    shopViewProdContRow6Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='29' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow6Col4Div = $("#shopViewProductsRow6Col4Id"); var shopViewProdContRow6Col4Table = $("#shopViewProdContRow6Col4Id");
    if(productsCon1Id.length > 30 && consept1Images[30] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[30];
    var consept1ProNR1dDisplay = productsCon1Names[30]; var consept1ProQR1dDisplay = productsCon1Quantity[30]; var consept1ProPR1dDisplay = productsCon1Price[30].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow6Col4Div.append("<a href='#' id='furButton31'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='30' type='hidden'/> </div></a>");
    shopViewProdContRow6Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='30' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow6Col5Div = $("#shopViewProductsRow6Col5Id"); var shopViewProdContRow6Col5Table = $("#shopViewProdContRow6Col5Id");
    if(productsCon1Id.length > 31 && consept1Images[31] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[31];
    var consept1ProNR1dDisplay = productsCon1Names[31]; var consept1ProQR1dDisplay = productsCon1Quantity[31]; var consept1ProPR1dDisplay = productsCon1Price[31].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow6Col5Div.append("<a href='#' id='furButton32'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='31' type='hidden'/> </div></a>");
    shopViewProdContRow6Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='31' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow6Col6Div = $("#shopViewProductsRow6Col6Id"); var shopViewProdContRow6Col6Table = $("#shopViewProdContRow6Col6Id");
    if(productsCon1Id.length > 32 && consept1Images[32] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[32];
    var consept1ProNR1dDisplay = productsCon1Names[32]; var consept1ProQR1dDisplay = productsCon1Quantity[32]; var consept1ProPR1dDisplay = productsCon1Price[32].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow6Col6Div.append("<a href='#' id='furButton33'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='32' type='hidden'/> </div></a>");
    shopViewProdContRow6Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='32' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 7 Info*/
    var shopViewProductsRow7Col1Div = $("#shopViewProductsRow7Col1Id"); var shopViewProdContRow7Col1Table = $("#shopViewProdContRow7Col1Id");
    if(productsCon1Id.length > 33 && consept1Images[33] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[33];
    var consept1ProNR1dDisplay = productsCon1Names[33]; var consept1ProQR1dDisplay = productsCon1Quantity[33]; var consept1ProPR1dDisplay = productsCon1Price[33].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow7Col1Div.append("<a href='#' id='furButton34'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='33' type='hidden'/> </div></a>");    
    shopViewProdContRow7Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='33' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow7Col2Div = $("#shopViewProductsRow7Col2Id"); var shopViewProdContRow7Col2Table = $("#shopViewProdContRow7Col2Id");
    if(productsCon1Id.length > 34 && consept1Images[34] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[34];
    var consept1ProNR1dDisplay = productsCon1Names[34]; var consept1ProQR1dDisplay = productsCon1Quantity[34]; var consept1ProPR1dDisplay = productsCon1Price[34].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow7Col2Div.append("<a href='#' id='furButton35'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='34' type='hidden'/> </div></a>");
    shopViewProdContRow7Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='34' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow7Col3Div = $("#shopViewProductsRow7Col3Id"); var shopViewProdContRow7Col3Table = $("#shopViewProdContRow7Col3Id");
    if(productsCon1Id.length > 35 && consept1Images[35] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[35];
    var consept1ProNR1dDisplay = productsCon1Names[35]; var consept1ProQR1dDisplay = productsCon1Quantity[35]; var consept1ProPR1dDisplay = productsCon1Price[35].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow7Col3Div.append("<a href='#' id='furButton36'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='35' type='hidden'/> </div></a>");
    shopViewProdContRow7Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='35' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow7Col4Div = $("#shopViewProductsRow7Col4Id"); var shopViewProdContRow7Col4Table = $("#shopViewProdContRow7Col4Id");
    if(productsCon1Id.length > 36 && consept1Images[36] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[36];
    var consept1ProNR1dDisplay = productsCon1Names[36]; var consept1ProQR1dDisplay = productsCon1Quantity[36]; var consept1ProPR1dDisplay = productsCon1Price[36].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow7Col4Div.append("<a href='#' id='furButton37'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='36' type='hidden'/> </div></a>");
    shopViewProdContRow7Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='36' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow7Col5Div = $("#shopViewProductsRow7Col5Id"); var shopViewProdContRow7Col5Table = $("#shopViewProdContRow7Col5Id");
    if(productsCon1Id.length > 37 && consept1Images[37] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[37];
    var consept1ProNR1dDisplay = productsCon1Names[37]; var consept1ProQR1dDisplay = productsCon1Quantity[37]; var consept1ProPR1dDisplay = productsCon1Price[37].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow7Col5Div.append("<a href='#' id='furButton38'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='37' type='hidden'/> </div></a>");
    shopViewProdContRow7Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='37' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow7Col6Div = $("#shopViewProductsRow7Col6Id"); var shopViewProdContRow7Col6Table = $("#shopViewProdContRow7Col6Id");
    if(productsCon1Id.length > 38 && consept1Images[38] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[38];
    var consept1ProNR1dDisplay = productsCon1Names[38]; var consept1ProQR1dDisplay = productsCon1Quantity[38]; var consept1ProPR1dDisplay = productsCon1Price[38].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow7Col6Div.append("<a href='#' id='furButton39'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='38' type='hidden'/> </div></a>");
    shopViewProdContRow7Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='38' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 8 Info*/
    var shopViewProductsRow8Col1Div = $("#shopViewProductsRow8Col1Id"); var shopViewProdContRow8Col1Table = $("#shopViewProdContRow8Col1Id");
    if(productsCon1Id.length > 39 && consept1Images[39] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[39];
    var consept1ProNR1dDisplay = productsCon1Names[39]; var consept1ProQR1dDisplay = productsCon1Quantity[39]; var consept1ProPR1dDisplay = productsCon1Price[39].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow8Col1Div.append("<a href='#' id='furButton40'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='39' type='hidden'/> </div></a>");    
    shopViewProdContRow8Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='39' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow8Col2Div = $("#shopViewProductsRow8Col2Id"); var shopViewProdContRow8Col2Table = $("#shopViewProdContRow8Col2Id");
    if(productsCon1Id.length > 40 && consept1Images[40] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[40];
    var consept1ProNR1dDisplay = productsCon1Names[40]; var consept1ProQR1dDisplay = productsCon1Quantity[40]; var consept1ProPR1dDisplay = productsCon1Price[40].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow8Col2Div.append("<a href='#' id='furButton41'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='40' type='hidden'/> </div></a>");
    shopViewProdContRow8Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='40' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow8Col3Div = $("#shopViewProductsRow8Col3Id"); var shopViewProdContRow8Col3Table = $("#shopViewProdContRow8Col3Id");
    if(productsCon1Id.length > 41 && consept1Images[41] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[41];
    var consept1ProNR1dDisplay = productsCon1Names[41]; var consept1ProQR1dDisplay = productsCon1Quantity[41]; var consept1ProPR1dDisplay = productsCon1Price[41].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow8Col3Div.append("<a href='#' id='furButton42'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='41' type='hidden'/> </div></a>");
    shopViewProdContRow8Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='41' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow8Col4Div = $("#shopViewProductsRow8Col4Id"); var shopViewProdContRow8Col4Table = $("#shopViewProdContRow8Col4Id");
    if(productsCon1Id.length > 42 && consept1Images[42] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[42];
    var consept1ProNR1dDisplay = productsCon1Names[42]; var consept1ProQR1dDisplay = productsCon1Quantity[42]; var consept1ProPR1dDisplay = productsCon1Price[42].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow8Col4Div.append("<a href='#' id='furButton43'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='42' type='hidden'/> </div></a>");
    shopViewProdContRow8Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='42' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow8Col5Div = $("#shopViewProductsRow8Col5Id"); var shopViewProdContRow8Col5Table = $("#shopViewProdContRow8Col5Id");
    if(productsCon1Id.length > 43 && consept1Images[43] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[43];
    var consept1ProNR1dDisplay = productsCon1Names[43]; var consept1ProQR1dDisplay = productsCon1Quantity[43]; var consept1ProPR1dDisplay = productsCon1Price[43].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow8Col5Div.append("<a href='#' id='furButton44'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='43' type='hidden'/> </div></a>");
    shopViewProdContRow8Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='43' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow8Col6Div = $("#shopViewProductsRow8Col6Id"); var shopViewProdContRow8Col6Table = $("#shopViewProdContRow8Col6Id");
    if(productsCon1Id.length > 44 && consept1Images[44] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[44];
    var consept1ProNR1dDisplay = productsCon1Names[44]; var consept1ProQR1dDisplay = productsCon1Quantity[44]; var consept1ProPR1dDisplay = productsCon1Price[44].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow8Col6Div.append("<a href='#' id='furButton45'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='44' type='hidden'/> </div></a>");
    shopViewProdContRow8Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='44' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 9 Info*/
    var shopViewProductsRow10Col1Div = $("#shopViewProductsRow10Col1Id"); var shopViewProdContRow10Col1Table = $("#shopViewProdContRow10Col1Id");
    if(productsCon1Id.length > 45 && consept1Images[45] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[45];
    var consept1ProNR1dDisplay = productsCon1Names[45]; var consept1ProQR1dDisplay = productsCon1Quantity[45]; var consept1ProPR1dDisplay = productsCon1Price[45].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col1Div.append("<a href='#' id='furButton46'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='45' type='hidden'/> </div></a>");    
    shopViewProdContRow10Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='45' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow10Col2Div = $("#shopViewProductsRow10Col2Id"); var shopViewProdContRow10Col2Table = $("#shopViewProdContRow10Col2Id");
    if(productsCon1Id.length > 46 && consept1Images[46] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[46];
    var consept1ProNR1dDisplay = productsCon1Names[46]; var consept1ProQR1dDisplay = productsCon1Quantity[46]; var consept1ProPR1dDisplay = productsCon1Price[46].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col2Div.append("<a href='#' id='furButton47'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='46' type='hidden'/> </div></a>");
    shopViewProdContRow10Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='46' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow10Col3Div = $("#shopViewProductsRow10Col3Id"); var shopViewProdContRow10Col3Table = $("#shopViewProdContRow10Col3Id");
    if(productsCon1Id.length > 47 && consept1Images[47] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[47];
    var consept1ProNR1dDisplay = productsCon1Names[47]; var consept1ProQR1dDisplay = productsCon1Quantity[47]; var consept1ProPR1dDisplay = productsCon1Price[47].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col3Div.append("<a href='#' id='furButton48'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='47' type='hidden'/> </div></a>");
    shopViewProdContRow10Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='47' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow10Col4Div = $("#shopViewProductsRow10Col4Id"); var shopViewProdContRow10Col4Table = $("#shopViewProdContRow10Col4Id");
    if(productsCon1Id.length > 48 && consept1Images[48] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[48];
    var consept1ProNR1dDisplay = productsCon1Names[48]; var consept1ProQR1dDisplay = productsCon1Quantity[48]; var consept1ProPR1dDisplay = productsCon1Price[48].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col4Div.append("<a href='#' id='furButton49'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='48' type='hidden'/> </div></a>");
    shopViewProdContRow10Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='48' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow10Col5Div = $("#shopViewProductsRow10Col5Id"); var shopViewProdContRow10Col5Table = $("#shopViewProdContRow10Col5Id");
    if(productsCon1Id.length > 49 && consept1Images[49] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[49];
    var consept1ProNR1dDisplay = productsCon1Names[49]; var consept1ProQR1dDisplay = productsCon1Quantity[49]; var consept1ProPR1dDisplay = productsCon1Price[49].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col5Div.append("<a href='#' id='furButton50'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='49' type='hidden'/> </div></a>");
    shopViewProdContRow10Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='49' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow10Col6Div = $("#shopViewProductsRow10Col6Id"); var shopViewProdContRow10Col6Table = $("#shopViewProdContRow10Col6Id");
    if(productsCon1Id.length > 50 && consept1Images[50] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[50];
    var consept1ProNR1dDisplay = productsCon1Names[50]; var consept1ProQR1dDisplay = productsCon1Quantity[50]; var consept1ProPR1dDisplay = productsCon1Price[50].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col6Div.append("<a href='#' id='furButton51'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='50' type='hidden'/> </div></a>");
    shopViewProdContRow10Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='50' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 10 Info*/
    var shopViewProductsRow10Col1Div = $("#shopViewProductsRow10Col1Id"); var shopViewProdContRow10Col1Table = $("#shopViewProdContRow10Col1Id");
    if(productsCon1Id.length > 51 && consept1Images[51] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[51];
    var consept1ProNR1dDisplay = productsCon1Names[51]; var consept1ProQR1dDisplay = productsCon1Quantity[51]; var consept1ProPR1dDisplay = productsCon1Price[51].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col1Div.append("<a href='#' id='furButton52'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='51' type='hidden'/> </div></a>");    
    shopViewProdContRow10Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='51' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow10Col2Div = $("#shopViewProductsRow10Col2Id"); var shopViewProdContRow10Col2Table = $("#shopViewProdContRow10Col2Id");
    if(productsCon1Id.length > 52 && consept1Images[52] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[52];
    var consept1ProNR1dDisplay = productsCon1Names[52]; var consept1ProQR1dDisplay = productsCon1Quantity[52]; var consept1ProPR1dDisplay = productsCon1Price[52].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col2Div.append("<a href='#' id='furButton53'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='52' type='hidden'/> </div></a>");
    shopViewProdContRow10Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='52' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow10Col3Div = $("#shopViewProductsRow10Col3Id"); var shopViewProdContRow10Col3Table = $("#shopViewProdContRow10Col3Id");
    if(productsCon1Id.length > 53 && consept1Images[53] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[53];
    var consept1ProNR1dDisplay = productsCon1Names[53]; var consept1ProQR1dDisplay = productsCon1Quantity[53]; var consept1ProPR1dDisplay = productsCon1Price[53].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col3Div.append("<a href='#' id='furButton54'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='53' type='hidden'/> </div></a>");
    shopViewProdContRow10Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='53' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow10Col4Div = $("#shopViewProductsRow10Col4Id"); var shopViewProdContRow10Col4Table = $("#shopViewProdContRow10Col4Id");
    if(productsCon1Id.length > 54 && consept1Images[54] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[54];
    var consept1ProNR1dDisplay = productsCon1Names[54]; var consept1ProQR1dDisplay = productsCon1Quantity[54]; var consept1ProPR1dDisplay = productsCon1Price[54].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col4Div.append("<a href='#' id='furButton55'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='54' type='hidden'/> </div></a>");
    shopViewProdContRow10Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='54' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow10Col5Div = $("#shopViewProductsRow10Col5Id"); var shopViewProdContRow10Col5Table = $("#shopViewProdContRow10Col5Id");
    if(productsCon1Id.length > 55 && consept1Images[55] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[55];
    var consept1ProNR1dDisplay = productsCon1Names[55]; var consept1ProQR1dDisplay = productsCon1Quantity[55]; var consept1ProPR1dDisplay = productsCon1Price[55].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col5Div.append("<a href='#' id='furButton56'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='55' type='hidden'/> </div></a>");
    shopViewProdContRow10Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='55' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow10Col6Div = $("#shopViewProductsRow10Col6Id"); var shopViewProdContRow10Col6Table = $("#shopViewProdContRow10Col6Id");
    if(productsCon1Id.length > 56 && consept1Images[56] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[56];
    var consept1ProNR1dDisplay = productsCon1Names[56]; var consept1ProQR1dDisplay = productsCon1Quantity[56]; var consept1ProPR1dDisplay = productsCon1Price[56].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow10Col6Div.append("<a href='#' id='furButton57'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='56' type='hidden'/> </div></a>");
    shopViewProdContRow10Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='56' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 11 Info*/
    var shopViewProductsRow11Col1Div = $("#shopViewProductsRow11Col1Id"); var shopViewProdContRow11Col1Table = $("#shopViewProdContRow11Col1Id");
    if(productsCon1Id.length > 57 && consept1Images[57] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[57];
    var consept1ProNR1dDisplay = productsCon1Names[57]; var consept1ProQR1dDisplay = productsCon1Quantity[57]; var consept1ProPR1dDisplay = productsCon1Price[57].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow11Col1Div.append("<a href='#' id='furButton58'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='57' type='hidden'/> </div></a>");    
    shopViewProdContRow11Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='57' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow11Col2Div = $("#shopViewProductsRow11Col2Id"); var shopViewProdContRow11Col2Table = $("#shopViewProdContRow11Col2Id");
    if(productsCon1Id.length > 58 && consept1Images[58] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[58];
    var consept1ProNR1dDisplay = productsCon1Names[58]; var consept1ProQR1dDisplay = productsCon1Quantity[58]; var consept1ProPR1dDisplay = productsCon1Price[58].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow11Col2Div.append("<a href='#' id='furButton59'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='58' type='hidden'/> </div></a>");
    shopViewProdContRow11Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='58' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow11Col3Div = $("#shopViewProductsRow11Col3Id"); var shopViewProdContRow11Col3Table = $("#shopViewProdContRow11Col3Id");
    if(productsCon1Id.length > 59 && consept1Images[59] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[59];
    var consept1ProNR1dDisplay = productsCon1Names[59]; var consept1ProQR1dDisplay = productsCon1Quantity[59]; var consept1ProPR1dDisplay = productsCon1Price[59].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow11Col3Div.append("<a href='#' id='furButton60'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='59' type='hidden'/> </div></a>");
    shopViewProdContRow11Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='59' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow11Col4Div = $("#shopViewProductsRow11Col4Id"); var shopViewProdContRow11Col4Table = $("#shopViewProdContRow11Col4Id");
    if(productsCon1Id.length > 60 && consept1Images[60] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[60];
    var consept1ProNR1dDisplay = productsCon1Names[60]; var consept1ProQR1dDisplay = productsCon1Quantity[60]; var consept1ProPR1dDisplay = productsCon1Price[60].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow11Col4Div.append("<a href='#' id='furButton61'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='60' type='hidden'/> </div></a>");
    shopViewProdContRow11Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='60' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow11Col5Div = $("#shopViewProductsRow11Col5Id"); var shopViewProdContRow11Col5Table = $("#shopViewProdContRow11Col5Id");
    if(productsCon1Id.length > 61 && consept1Images[61] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[61];
    var consept1ProNR1dDisplay = productsCon1Names[61]; var consept1ProQR1dDisplay = productsCon1Quantity[61]; var consept1ProPR1dDisplay = productsCon1Price[61].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow11Col5Div.append("<a href='#' id='furButton62'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='61' type='hidden'/> </div></a>");
    shopViewProdContRow11Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='61' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow11Col6Div = $("#shopViewProductsRow11Col6Id"); var shopViewProdContRow11Col6Table = $("#shopViewProdContRow11Col6Id");
    if(productsCon1Id.length > 62 && consept1Images[62] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[62];
    var consept1ProNR1dDisplay = productsCon1Names[62]; var consept1ProQR1dDisplay = productsCon1Quantity[62]; var consept1ProPR1dDisplay = productsCon1Price[62].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow11Col6Div.append("<a href='#' id='furButton63'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='62' type='hidden'/> </div></a>");
    shopViewProdContRow11Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='62' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 12 Info*/
    var shopViewProductsRow12Col1Div = $("#shopViewProductsRow12Col1Id"); var shopViewProdContRow12Col1Table = $("#shopViewProdContRow12Col1Id");
    if(productsCon1Id.length > 63 && consept1Images[63] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[63];
    var consept1ProNR1dDisplay = productsCon1Names[63]; var consept1ProQR1dDisplay = productsCon1Quantity[63]; var consept1ProPR1dDisplay = productsCon1Price[63].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow12Col1Div.append("<a href='#' id='furButton64'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='63' type='hidden'/> </div></a>");    
    shopViewProdContRow12Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='63' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow12Col2Div = $("#shopViewProductsRow12Col2Id"); var shopViewProdContRow12Col2Table = $("#shopViewProdContRow12Col2Id");
    if(productsCon1Id.length > 64 && consept1Images[64] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[64];
    var consept1ProNR1dDisplay = productsCon1Names[64]; var consept1ProQR1dDisplay = productsCon1Quantity[64]; var consept1ProPR1dDisplay = productsCon1Price[64].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow12Col2Div.append("<a href='#' id='furButton65'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='64' type='hidden'/> </div></a>");
    shopViewProdContRow12Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='64' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow12Col3Div = $("#shopViewProductsRow12Col3Id"); var shopViewProdContRow12Col3Table = $("#shopViewProdContRow12Col3Id");
    if(productsCon1Id.length > 65 && consept1Images[65] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[65];
    var consept1ProNR1dDisplay = productsCon1Names[65]; var consept1ProQR1dDisplay = productsCon1Quantity[65]; var consept1ProPR1dDisplay = productsCon1Price[65].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow12Col3Div.append("<a href='#' id='furButton66'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='65' type='hidden'/> </div></a>");
    shopViewProdContRow12Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='65' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow12Col4Div = $("#shopViewProductsRow12Col4Id"); var shopViewProdContRow12Col4Table = $("#shopViewProdContRow12Col4Id");
    if(productsCon1Id.length > 66 && consept1Images[66] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[66];
    var consept1ProNR1dDisplay = productsCon1Names[66]; var consept1ProQR1dDisplay = productsCon1Quantity[66]; var consept1ProPR1dDisplay = productsCon1Price[66].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow12Col4Div.append("<a href='#' id='furButton67'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='66' type='hidden'/> </div></a>");
    shopViewProdContRow12Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='66' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow12Col5Div = $("#shopViewProductsRow12Col5Id"); var shopViewProdContRow12Col5Table = $("#shopViewProdContRow12Col5Id");
    if(productsCon1Id.length > 67 && consept1Images[67] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[67];
    var consept1ProNR1dDisplay = productsCon1Names[67]; var consept1ProQR1dDisplay = productsCon1Quantity[67]; var consept1ProPR1dDisplay = productsCon1Price[67].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow12Col5Div.append("<a href='#' id='furButton68'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='67' type='hidden'/> </div></a>");
    shopViewProdContRow12Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='67' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow12Col6Div = $("#shopViewProductsRow12Col6Id"); var shopViewProdContRow12Col6Table = $("#shopViewProdContRow12Col6Id");
    if(productsCon1Id.length > 68 && consept1Images[68] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[68];
    var consept1ProNR1dDisplay = productsCon1Names[68]; var consept1ProQR1dDisplay = productsCon1Quantity[68]; var consept1ProPR1dDisplay = productsCon1Price[68].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow12Col6Div.append("<a href='#' id='furButton69'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='68' type='hidden'/> </div></a>");
    shopViewProdContRow12Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='68' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 13 Info*/
    var shopViewProductsRow13Col1Div = $("#shopViewProductsRow13Col1Id"); var shopViewProdContRow13Col1Table = $("#shopViewProdContRow13Col1Id");
    if(productsCon1Id.length > 69 && consept1Images[69] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[69];
    var consept1ProNR1dDisplay = productsCon1Names[69]; var consept1ProQR1dDisplay = productsCon1Quantity[69]; var consept1ProPR1dDisplay = productsCon1Price[69].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow13Col1Div.append("<a href='#' id='furButton70'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='69' type='hidden'/> </div></a>");    
    shopViewProdContRow13Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='69' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow13Col2Div = $("#shopViewProductsRow13Col2Id"); var shopViewProdContRow13Col2Table = $("#shopViewProdContRow13Col2Id");
    if(productsCon1Id.length > 70 && consept1Images[70] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[70];
    var consept1ProNR1dDisplay = productsCon1Names[70]; var consept1ProQR1dDisplay = productsCon1Quantity[70]; var consept1ProPR1dDisplay = productsCon1Price[70].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow13Col2Div.append("<a href='#' id='furButton71'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='70' type='hidden'/> </div></a>");
    shopViewProdContRow13Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='70' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow13Col3Div = $("#shopViewProductsRow13Col3Id"); var shopViewProdContRow13Col3Table = $("#shopViewProdContRow13Col3Id");
    if(productsCon1Id.length > 71 && consept1Images[71] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[71];
    var consept1ProNR1dDisplay = productsCon1Names[71]; var consept1ProQR1dDisplay = productsCon1Quantity[71]; var consept1ProPR1dDisplay = productsCon1Price[71].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow13Col3Div.append("<a href='#' id='furButton72'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='71' type='hidden'/> </div></a>");
    shopViewProdContRow13Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='71' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow13Col4Div = $("#shopViewProductsRow13Col4Id"); var shopViewProdContRow13Col4Table = $("#shopViewProdContRow13Col4Id");
    if(productsCon1Id.length > 72 && consept1Images[72] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[72];
    var consept1ProNR1dDisplay = productsCon1Names[72]; var consept1ProQR1dDisplay = productsCon1Quantity[72]; var consept1ProPR1dDisplay = productsCon1Price[72].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow13Col4Div.append("<a href='#' id='furButton73'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='72' type='hidden'/> </div></a>");
    shopViewProdContRow13Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='72' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow13Col5Div = $("#shopViewProductsRow13Col5Id"); var shopViewProdContRow13Col5Table = $("#shopViewProdContRow13Col5Id");
    if(productsCon1Id.length > 73 && consept1Images[73] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[73];
    var consept1ProNR1dDisplay = productsCon1Names[73]; var consept1ProQR1dDisplay = productsCon1Quantity[73]; var consept1ProPR1dDisplay = productsCon1Price[73].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow13Col5Div.append("<a href='#' id='furButton74'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='73' type='hidden'/> </div></a>");
    shopViewProdContRow13Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='73' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow13Col6Div = $("#shopViewProductsRow13Col6Id"); var shopViewProdContRow13Col6Table = $("#shopViewProdContRow13Col6Id");
    if(productsCon1Id.length > 74 && consept1Images[74] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[74];
    var consept1ProNR1dDisplay = productsCon1Names[74]; var consept1ProQR1dDisplay = productsCon1Quantity[74]; var consept1ProPR1dDisplay = productsCon1Price[74].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow13Col6Div.append("<a href='#' id='furButton75'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='74' type='hidden'/> </div></a>");
    shopViewProdContRow13Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='74' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 14 Info*/
    var shopViewProductsRow14Col1Div = $("#shopViewProductsRow14Col1Id"); var shopViewProdContRow14Col1Table = $("#shopViewProdContRow14Col1Id");
    if(productsCon1Id.length > 75 && consept1Images[75] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[75];
    var consept1ProNR1dDisplay = productsCon1Names[75]; var consept1ProQR1dDisplay = productsCon1Quantity[75]; var consept1ProPR1dDisplay = productsCon1Price[75].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow14Col1Div.append("<a href='#' id='furButton76'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='75' type='hidden'/> </div></a>");    
    shopViewProdContRow14Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='75' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow14Col2Div = $("#shopViewProductsRow14Col2Id"); var shopViewProdContRow14Col2Table = $("#shopViewProdContRow14Col2Id");
    if(productsCon1Id.length > 76 && consept1Images[76] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[76];
    var consept1ProNR1dDisplay = productsCon1Names[76]; var consept1ProQR1dDisplay = productsCon1Quantity[76]; var consept1ProPR1dDisplay = productsCon1Price[76].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow14Col2Div.append("<a href='#' id='furButton77'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='76' type='hidden'/> </div></a>");
    shopViewProdContRow14Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='76' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow14Col3Div = $("#shopViewProductsRow14Col3Id"); var shopViewProdContRow14Col3Table = $("#shopViewProdContRow14Col3Id");
    if(productsCon1Id.length > 77 && consept1Images[77] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[77];
    var consept1ProNR1dDisplay = productsCon1Names[77]; var consept1ProQR1dDisplay = productsCon1Quantity[77]; var consept1ProPR1dDisplay = productsCon1Price[77].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow14Col3Div.append("<a href='#' id='furButton78'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='77' type='hidden'/> </div></a>");
    shopViewProdContRow14Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='77' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow14Col4Div = $("#shopViewProductsRow14Col4Id"); var shopViewProdContRow14Col4Table = $("#shopViewProdContRow14Col4Id");
    if(productsCon1Id.length > 78 && consept1Images[78] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[78];
    var consept1ProNR1dDisplay = productsCon1Names[78]; var consept1ProQR1dDisplay = productsCon1Quantity[79]; var consept1ProPR1dDisplay = productsCon1Price[78].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow14Col4Div.append("<a href='#' id='furButton79'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='78' type='hidden'/> </div></a>");
    shopViewProdContRow14Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='78' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow14Col5Div = $("#shopViewProductsRow14Col5Id"); var shopViewProdContRow14Col5Table = $("#shopViewProdContRow14Col5Id");
    if(productsCon1Id.length > 79 && consept1Images[79] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[79];
    var consept1ProNR1dDisplay = productsCon1Names[79]; var consept1ProQR1dDisplay = productsCon1Quantity[79]; var consept1ProPR1dDisplay = productsCon1Price[79].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow14Col5Div.append("<a href='#' id='furButton80'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='79' type='hidden'/> </div></a>");
    shopViewProdContRow14Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='79' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow14Col6Div = $("#shopViewProductsRow14Col6Id"); var shopViewProdContRow14Col6Table = $("#shopViewProdContRow14Col6Id");
    if(productsCon1Id.length > 80 && consept1Images[80] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[80];
    var consept1ProNR1dDisplay = productsCon1Names[80]; var consept1ProQR1dDisplay = productsCon1Quantity[80]; var consept1ProPR1dDisplay = productsCon1Price[80].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow14Col6Div.append("<a href='#' id='furButton81'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='80' type='hidden'/> </div></a>");
    shopViewProdContRow14Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='80' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 15 Info*/
    var shopViewProductsRow15Col1Div = $("#shopViewProductsRow15Col1Id"); var shopViewProdContRow15Col1Table = $("#shopViewProdContRow15Col1Id");
    if(productsCon1Id.length > 81 && consept1Images[81] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[81];
    var consept1ProNR1dDisplay = productsCon1Names[81]; var consept1ProQR1dDisplay = productsCon1Quantity[81]; var consept1ProPR1dDisplay = productsCon1Price[81].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow15Col1Div.append("<a href='#' id='furButton82'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='81' type='hidden'/> </div></a>");    
    shopViewProdContRow15Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='81' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow15Col2Div = $("#shopViewProductsRow15Col2Id"); var shopViewProdContRow15Col2Table = $("#shopViewProdContRow15Col2Id");
    if(productsCon1Id.length > 82 && consept1Images[82] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[82];
    var consept1ProNR1dDisplay = productsCon1Names[82]; var consept1ProQR1dDisplay = productsCon1Quantity[82]; var consept1ProPR1dDisplay = productsCon1Price[82].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow15Col2Div.append("<a href='#' id='furButton83'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='82' type='hidden'/> </div></a>");
    shopViewProdContRow15Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='82' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow15Col3Div = $("#shopViewProductsRow15Col3Id"); var shopViewProdContRow15Col3Table = $("#shopViewProdContRow15Col3Id");
    if(productsCon1Id.length > 83 && consept1Images[83] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[83];
    var consept1ProNR1dDisplay = productsCon1Names[83]; var consept1ProQR1dDisplay = productsCon1Quantity[83]; var consept1ProPR1dDisplay = productsCon1Price[83].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow15Col3Div.append("<a href='#' id='furButton84'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='83' type='hidden'/> </div></a>");
    shopViewProdContRow15Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='83' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow15Col4Div = $("#shopViewProductsRow15Col4Id"); var shopViewProdContRow15Col4Table = $("#shopViewProdContRow15Col4Id");
    if(productsCon1Id.length > 84 && consept1Images[84] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[84];
    var consept1ProNR1dDisplay = productsCon1Names[84]; var consept1ProQR1dDisplay = productsCon1Quantity[84]; var consept1ProPR1dDisplay = productsCon1Price[84].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow15Col4Div.append("<a href='#' id='furButton85'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='84' type='hidden'/> </div></a>");
    shopViewProdContRow15Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='84' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow15Col5Div = $("#shopViewProductsRow15Col5Id"); var shopViewProdContRow15Col5Table = $("#shopViewProdContRow15Col5Id");
    if(productsCon1Id.length > 85 && consept1Images[85] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[85];
    var consept1ProNR1dDisplay = productsCon1Names[85]; var consept1ProQR1dDisplay = productsCon1Quantity[85]; var consept1ProPR1dDisplay = productsCon1Price[85].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow15Col5Div.append("<a href='#' id='furButton86'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='85' type='hidden'/> </div></a>");
    shopViewProdContRow15Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='85' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow15Col6Div = $("#shopViewProductsRow15Col6Id"); var shopViewProdContRow15Col6Table = $("#shopViewProdContRow15Col6Id");
    if(productsCon1Id.length > 86 && consept1Images[86] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[86];
    var consept1ProNR1dDisplay = productsCon1Names[86]; var consept1ProQR1dDisplay = productsCon1Quantity[86]; var consept1ProPR1dDisplay = productsCon1Price[86].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow15Col6Div.append("<a href='#' id='furButton87'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='86' type='hidden'/> </div></a>");
    shopViewProdContRow15Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='86' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 16 Info*/
    var shopViewProductsRow16Col1Div = $("#shopViewProductsRow16Col1Id"); var shopViewProdContRow16Col1Table = $("#shopViewProdContRow16Col1Id");
    if(productsCon1Id.length > 87 && consept1Images[87] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[87];
    var consept1ProNR1dDisplay = productsCon1Names[87]; var consept1ProQR1dDisplay = productsCon1Quantity[87]; var consept1ProPR1dDisplay = productsCon1Price[87].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow16Col1Div.append("<a href='#' id='furButton88'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='87' type='hidden'/> </div></a>");    
    shopViewProdContRow16Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='87' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow16Col2Div = $("#shopViewProductsRow16Col2Id"); var shopViewProdContRow16Col2Table = $("#shopViewProdContRow16Col2Id");
    if(productsCon1Id.length > 88 && consept1Images[88] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[88];
    var consept1ProNR1dDisplay = productsCon1Names[88]; var consept1ProQR1dDisplay = productsCon1Quantity[88]; var consept1ProPR1dDisplay = productsCon1Price[88].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow16Col2Div.append("<a href='#' id='furButton89'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='88' type='hidden'/> </div></a>");
    shopViewProdContRow16Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='88' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow16Col3Div = $("#shopViewProductsRow16Col3Id"); var shopViewProdContRow16Col3Table = $("#shopViewProdContRow16Col3Id");
    if(productsCon1Id.length > 89 && consept1Images[89] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[89];
    var consept1ProNR1dDisplay = productsCon1Names[89]; var consept1ProQR1dDisplay = productsCon1Quantity[89]; var consept1ProPR1dDisplay = productsCon1Price[89].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow16Col3Div.append("<a href='#' id='furButton90'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='89' type='hidden'/> </div></a>");
    shopViewProdContRow16Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='89' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow16Col4Div = $("#shopViewProductsRow16Col4Id"); var shopViewProdContRow16Col4Table = $("#shopViewProdContRow16Col4Id");
    if(productsCon1Id.length > 90 && consept1Images[90] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[90];
    var consept1ProNR1dDisplay = productsCon1Names[90]; var consept1ProQR1dDisplay = productsCon1Quantity[90]; var consept1ProPR1dDisplay = productsCon1Price[90].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow16Col4Div.append("<a href='#' id='furButton91'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='90' type='hidden'/> </div></a>");
    shopViewProdContRow16Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='90' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow16Col5Div = $("#shopViewProductsRow16Col5Id"); var shopViewProdContRow16Col5Table = $("#shopViewProdContRow16Col5Id");
    if(productsCon1Id.length > 91 && consept1Images[91] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[91];
    var consept1ProNR1dDisplay = productsCon1Names[91]; var consept1ProQR1dDisplay = productsCon1Quantity[91]; var consept1ProPR1dDisplay = productsCon1Price[91].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow16Col5Div.append("<a href='#' id='furButton92'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='91' type='hidden'/> </div></a>");
    shopViewProdContRow16Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='91' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow16Col6Div = $("#shopViewProductsRow16Col6Id"); var shopViewProdContRow16Col6Table = $("#shopViewProdContRow16Col6Id");
    if(productsCon1Id.length > 92 && consept1Images[92] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[92];
    var consept1ProNR1dDisplay = productsCon1Names[92]; var consept1ProQR1dDisplay = productsCon1Quantity[92]; var consept1ProPR1dDisplay = productsCon1Price[92].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow16Col6Div.append("<a href='#' id='furButton93'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='92' type='hidden'/> </div></a>");
    shopViewProdContRow16Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='92' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 17 Info*/
    var shopViewProductsRow17Col1Div = $("#shopViewProductsRow17Col1Id"); var shopViewProdContRow17Col1Table = $("#shopViewProdContRow17Col1Id");
    if(productsCon1Id.length > 93 && consept1Images[93] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[93];
    var consept1ProNR1dDisplay = productsCon1Names[93]; var consept1ProQR1dDisplay = productsCon1Quantity[93]; var consept1ProPR1dDisplay = productsCon1Price[93].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow17Col1Div.append("<a href='#' id='furButton94'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='93' type='hidden'/> </div></a>");    
    shopViewProdContRow17Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='93' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow17Col2Div = $("#shopViewProductsRow17Col2Id"); var shopViewProdContRow17Col2Table = $("#shopViewProdContRow17Col2Id");
    if(productsCon1Id.length > 94 && consept1Images[94] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[94];
    var consept1ProNR1dDisplay = productsCon1Names[94]; var consept1ProQR1dDisplay = productsCon1Quantity[94]; var consept1ProPR1dDisplay = productsCon1Price[94].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow17Col2Div.append("<a href='#' id='furButton95'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='94' type='hidden'/> </div></a>");
    shopViewProdContRow17Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='94' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow17Col3Div = $("#shopViewProductsRow17Col3Id"); var shopViewProdContRow17Col3Table = $("#shopViewProdContRow17Col3Id");
    if(productsCon1Id.length > 95 && consept1Images[95] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[95];
    var consept1ProNR1dDisplay = productsCon1Names[95]; var consept1ProQR1dDisplay = productsCon1Quantity[95]; var consept1ProPR1dDisplay = productsCon1Price[95].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow17Col3Div.append("<a href='#' id='furButton96'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='95' type='hidden'/> </div></a>");
    shopViewProdContRow17Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='95' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow17Col4Div = $("#shopViewProductsRow17Col4Id"); var shopViewProdContRow17Col4Table = $("#shopViewProdContRow17Col4Id");
    if(productsCon1Id.length > 96 && consept1Images[96] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[96];
    var consept1ProNR1dDisplay = productsCon1Names[96]; var consept1ProQR1dDisplay = productsCon1Quantity[96]; var consept1ProPR1dDisplay = productsCon1Price[96].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow17Col4Div.append("<a href='#' id='furButton97'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='96' type='hidden'/> </div></a>");
    shopViewProdContRow17Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='96' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow17Col5Div = $("#shopViewProductsRow17Col5Id"); var shopViewProdContRow17Col5Table = $("#shopViewProdContRow17Col5Id");
    if(productsCon1Id.length > 97 && consept1Images[97] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[97];
    var consept1ProNR1dDisplay = productsCon1Names[97]; var consept1ProQR1dDisplay = productsCon1Quantity[97]; var consept1ProPR1dDisplay = productsCon1Price[97].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow17Col5Div.append("<a href='#' id='furButton98'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='97' type='hidden'/> </div></a>");
    shopViewProdContRow17Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='97' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow17Col6Div = $("#shopViewProductsRow17Col6Id"); var shopViewProdContRow17Col6Table = $("#shopViewProdContRow17Col6Id");
    if(productsCon1Id.length > 98 && consept1Images[98] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[98];
    var consept1ProNR1dDisplay = productsCon1Names[98]; var consept1ProQR1dDisplay = productsCon1Quantity[98]; var consept1ProPR1dDisplay = productsCon1Price[98].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow17Col6Div.append("<a href='#' id='furButton99'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='98' type='hidden'/> </div></a>");
    shopViewProdContRow17Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='98' type='hidden'/> </td></tr></table></div>");
    }
    

    /*Row 18 Info*/
    var shopViewProductsRow18Col1Div = $("#shopViewProductsRow18Col1Id"); var shopViewProdContRow18Col1Table = $("#shopViewProdContRow18Col1Id");
    if(productsCon1Id.length > 99 && consept1Images[99] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[99];
    var consept1ProNR1dDisplay = productsCon1Names[99]; var consept1ProQR1dDisplay = productsCon1Quantity[99]; var consept1ProPR1dDisplay = productsCon1Price[99].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow18Col1Div.append("<a href='#' id='furButton100'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='99' type='hidden'/> </div></a>");    
    shopViewProdContRow18Col1Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='99' type='hidden'/> </td></tr></table></div>");
    }
    
    var shopViewProductsRow18Col2Div = $("#shopViewProductsRow18Col2Id"); var shopViewProdContRow18Col2Table = $("#shopViewProdContRow18Col2Id");
    if(productsCon1Id.length > 100 && consept1Images[100] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[100];
    var consept1ProNR1dDisplay = productsCon1Names[100]; var consept1ProQR1dDisplay = productsCon1Quantity[100]; var consept1ProPR1dDisplay = productsCon1Price[100].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow18Col2Div.append("<a href='#' id='furButton101'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='100' type='hidden'/> </div></a>");
    shopViewProdContRow18Col2Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='100' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow18Col3Div = $("#shopViewProductsRow18Col3Id"); var shopViewProdContRow18Col3Table = $("#shopViewProdContRow18Col3Id");
    if(productsCon1Id.length > 101 && consept1Images[101] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[101];
    var consept1ProNR1dDisplay = productsCon1Names[101]; var consept1ProQR1dDisplay = productsCon1Quantity[101]; var consept1ProPR1dDisplay = productsCon1Price[101].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow18Col3Div.append("<a href='#' id='furButton102'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='101' type='hidden'/> </div></a>");
    shopViewProdContRow18Col3Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='101' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow18Col4Div = $("#shopViewProductsRow18Col4Id"); var shopViewProdContRow18Col4Table = $("#shopViewProdContRow18Col4Id");
    if(productsCon1Id.length > 102 && consept1Images[102] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[102];
    var consept1ProNR1dDisplay = productsCon1Names[102]; var consept1ProQR1dDisplay = productsCon1Quantity[102]; var consept1ProPR1dDisplay = productsCon1Price[102].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow18Col4Div.append("<a href='#' id='furButton103'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='102' type='hidden'/> </div></a>");
    shopViewProdContRow18Col4Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='102' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow18Col5Div = $("#shopViewProductsRow18Col5Id"); var shopViewProdContRow18Col5Table = $("#shopViewProdContRow18Col5Id");
    if(productsCon1Id.length > 103 && consept1Images[103] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[103];
    var consept1ProNR1dDisplay = productsCon1Names[103]; var consept1ProQR1dDisplay = productsCon1Quantity[103]; var consept1ProPR1dDisplay = productsCon1Price[103].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow18Col5Div.append("<a href='#' id='furButton104'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='103' type='hidden'/> </div></a>");
    shopViewProdContRow18Col5Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='103' type='hidden'/> </td></tr></table></div>");
    }

    var shopViewProductsRow18Col6Div = $("#shopViewProductsRow18Col6Id"); var shopViewProdContRow18Col6Table = $("#shopViewProdContRow18Col6Id");
    if(productsCon1Id.length > 104 && consept1Images[104] !== ""){
    var consept1ImageR1Display = "data:image/jpg;base64," + consept1Images[104];
    var consept1ProNR1dDisplay = productsCon1Names[104]; var consept1ProQR1dDisplay = productsCon1Quantity[104]; var consept1ProPR1dDisplay = productsCon1Price[104].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    shopViewProductsRow18Col6Div.append("<a href='#' id='furButton105'> <div class='shopViewProductsClass top_adjustment_50'><img class='popupWindowImageClass dsn_prod_img_reso_div_cls' src=" + consept1ImageR1Display + " alt='' /> <input id='104' type='hidden'/> </div></a>");
    shopViewProdContRow18Col6Table.append("<div class='prod_price_box'> <table class='content_dsp_table'> <tr><td class='con_prod_name_dsp'>" + consept1ProNR1dDisplay + "</td></tr> <tr><td class='con_prod_qnty_dsp'> <font class='rec_qnt_dsp'>RECOMMENDED QUANTITY:</font> " + consept1ProQR1dDisplay + "</td></tr>   <tr><td class='con_prod_prices_dsp'>$" + consept1ProPR1dDisplay + "</td></tr>   <tr><td class='con_prod_add_cart_dsp'> <input id='104' type='hidden'/> </td></tr></table></div>");
    }
    
    
    
    
    
	
              
    $(".popupWindowImageClass").click(function(){    
	var idOfHiddenInput = $(this).parent().find('input:hidden:first').attr('id');
	
	$('#productImageID').attr('src', $(this).attr("src"));		
	$("#productNameID").html(productsCon1Names[idOfHiddenInput]);
	$("#productQuantityID").html(productsCon1Quantity[idOfHiddenInput]);
	$("#productPriceID").html(productsCon1Price[idOfHiddenInput].replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	$("#productDescID").html(productsCon1Des[idOfHiddenInput]);
	$("#productAssReqID").html(productsCon1AssReq[idOfHiddenInput]);
	
	document.popupProductsName.popUpRefName.value = productsCon1Id[idOfHiddenInput];
	var id = '#dialog';
	$('#mask').css({'width':$(window).width(),'height':$(document).height()});
	$('#mask').fadeIn(100);	
	$('#mask').fadeTo("fast",0.9);
	$(id).css('top',  $(window).height()/2-$(id).height()/2);
	$(id).css('left', $(window).width()/2-$(id).width()/2);
	$(id).fadeIn(500);
	$('.window .closeBut').click(function(e) {
	e.preventDefault();
	$('#mask, .window').hide();
	});
	
	$("#noOfProductsId").val("1");
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
    
    });


	function numeralsOnly(e) {
    var key; var keychar;
    if (window.event) key = window.event.keyCode;
    else if (e) key = e.which;
    else return true;
    keychar = String.fromCharCode(key);
    if ((key === null) || (key === 0) || (key === 8) ||  (key === 9) || (key === 13) || (key === 27) || keychar === "." || keychar === ",") return true;
    else if ((("0123456789").indexOf(keychar) > -1)) return true;
    else return false;
    }
