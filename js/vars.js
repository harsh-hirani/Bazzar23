
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
var freezed = 0;
var updaterarraycount=0;
var currentprices= [];
var objids=[];
// stock list
stockarray = [
    {id:1,
    name:"TCS"},
    {id:2,
    name: "JFS"},
    {id:3,
    name: "Infosys"},
    {id:4,
    name: "Wipro"},
    {id:5,
    name: "LIC"},
    {id:6,
    name: "HDFC"},
    {id:7,
    name: "SBI"},
    {id:8,
    name: "Bajaj Finance"},
    {id:9,
    name: "YES"},

    {id:10,
    name: "Maruti Suzuki"},
    {id:11,
    name: "Tata Motors"},
    {id:12,
    name: "Bajaj Auto"},
    {id:13,
    name: "Bharat Forge"},

    {id:14,
    name: "Sun Pharma"},
    {id:15,
    name: "Dr. Reddy"},
    {id:16,
    name: "Zydus"},
    {id:17,
    name: "Cipla"},

    {id:18,
    name: "Titan Company"},
    {id:19,
    name: "Page Industries"},
    {id:20,
    name: "HUL"},
    {id:21,
    name: "Tata Cons. Products"},

    {id:22,
    name: "Adani Enterprise"},
    {id:23,
    name: "Jindal Steel"},
    {id:24,
    name: "Tata Steel"},
    {id:25,
    name: "Coal India"},

    {id:26,
    name: "Adani Ports"},
    {id:27,
    name: "Ambuja Cements"},
    {id:28,
    name: "L&T"},
    {id:29,
    name: "Tata Power"},
    {id:30,
    name: "Ultratech Cements"},

    {id:31,
    name: "Reliance Ind."},
    {id:32,
    name: "Reliance Ind."},
    {id:33,
    name: "IOC"},
    {id:34,
    name: "GAIL"},
];

var globalStockData = [];
function getFinalData(){
    return globalStockData;
}
function setFinalData(d){
    globalStockData = d;
}