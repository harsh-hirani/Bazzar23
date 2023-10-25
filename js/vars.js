
//urls

var baseurl = "http://localhost/bazzar";

//dom
var pricesTabs = [];
var changeTabs = [];
var leaderboardRanking = document.getElementById("leaderboardRanking"); 
var stocklistsContainer = document.getElementById("stocklistsContainer");
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