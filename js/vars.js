
//urls

var baseurl = ".";

//dom
var pricesTabs = [];
var changeTabs = [];
var leaderboardRanking = document.getElementById("leaderboardRanking"); 
var stocklistsContainer = document.getElementById("stocklistsContainer");
var currentBalanceBox = document.getElementById("currentBalanceBox");
var offsettitle = document.getElementById("offcanvasBottomLabel")
var offsetsendbutton = document.getElementById("sellsendbutton");
var offsetstatus = document.getElementById("sellstatus");
var offsetstockQuantity = document.getElementById("sellstockQuantity")
var offsetstockprice = document.getElementById("sellstockprice")
var offsetstockname = document.getElementById("sellstockname");
var offcanvasclosebutton = document.getElementById("offcanvasclosebutton");
var offsetButton = document.getElementById("offsetButton");
// var buysendbutton = document.getElementById("buysendbutton");
// var buystatus = document.getElementById("buystatus");
// var buystockQuantity = document.getElementById("buystockQuantity");
// var buystockprice = document.getElementById("buystockprice");
// var buystockname = document.getElementById("buystockname");
// var buyoffcanvasclosebutton = document.getElementById("buyoffcanvasclosebutton");
var loadedStockPrice = 0;
var loadedStockHolding = 0;
var portfoliotablebody = document.getElementById("portfoliotablebody");
// global variables




// current variables
var offcanvas = false;
var currentGraph = 0;
var operation = 0; // buy = 0, sell = 1
var showing = "mainStock";
var activeSection = "c1";
// stock list
stockarray = [
    {id:1,
    name:"TATA Cons."},
    {id:2,
    name: "Maruti"},
    {id:3,
    name: "HDFC"},
    {id:4,
    name: "Asian Paints"},
    {id:5,
    name: "UltraTech Cement"},
    {id:6,
    name: "Titan Company"},
    {id:7,
    name: "Plolycab India"},
    {id:8,
    name: "Bajaj Finance"},
    {id:9,
    name: "Hindustan Unilever"},
    {id:10,
    name: "Sun Pharma"},
    {id:11,
    name: "Gail"},
    {id:12,
    name: "Larson & Toubro"},
    {id:13,
    name: "Lic"},
    {id:14,
    name: "Reliance Industries"},
    {id:15,
    name: "TCS"},
    {id:16,
    name: "Infosys"},
    {id:17,
    name: "Page Industries"},
];