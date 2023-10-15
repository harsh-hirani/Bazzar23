//dom
var currentBalanceBox = document.getElementById("currentBalanceBox");
var buysendbutton = document.getElementById("buysendbutton");
var sellsendbutton = document.getElementById("sellsendbutton");
var buystatus = document.getElementById("buystatus");
var sellstatus = document.getElementById("sellstatus");
var buystockQuantity = document.getElementById("buystockQuantity");
var sellstockQuantity = document.getElementById("sellstockQuantity")
var buystockprice = document.getElementById("buystockprice");
var sellstockprice = document.getElementById("sellstockprice")
var buystockname = document.getElementById("buystockname");
var sellstockname = document.getElementById("sellstockname");
var buyoffcanvasclosebutton = document.getElementById("buyoffcanvasclosebutton");
var selloffcanvasclosebutton = document.getElementById("selloffcanvasclosebutton");
// global variables




// current variables
var offcanvas = false;
var currentGraph = 0;
var operation = 0; // buy = 0, sell = 1