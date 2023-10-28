
//urls

var baseurl = ".";

//dom
var pricesTabs = [];
var changeTabs = [];
var lefter = document.getElementById("lefter");
var righter = document.getElementById("righter");  
var invenstmentBox = document.getElementById("info1");
var profitBox = document.getElementById("info2");
var taxBox = document.getElementById("info3");

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
var sellbtn = document.getElementById("sellbtn");
var ssbtn = document.getElementById("ssbtn");
var loadedStockPrice = 0;
var loadedStockHolding = 0;
var portfoliotablebody = document.getElementById("portfoliotablebody");
// global variables




// current variables
var offcanvas = false;
var currentGraph = 0;
var currentGraphType = 'candlestick';
var operation = 0; // buy = 0, sell = 1, shortsell = 2, shortbuy = 3
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

var globalStockData = [];
function getFinalData(){
    return globalStockData;
}
function setFinalData(d){
    globalStockData = d;
}