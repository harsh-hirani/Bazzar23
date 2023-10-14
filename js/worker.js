document.getElementById("stocklistcover").style.height = (window.innerHeight - 50 - document.getElementById("nav").clientHeight) + "px";


function graphchange(e,graph){
    changeto('mainStock');
    if(graph==currentGraph) return;
    $.post("http://localhost/bazzar/server/stockapi.php",{stockId:graph},(data)=>{
        GRAPH.valueSeries.data.clear();
        GRAPH.volumeSeries.data.clear();
        GRAPH.sbSeries.data.clear();
            GRAPH.valueSeries.data.setAll(data.data);
            GRAPH.volumeSeries.data.setAll(data.data);
            GRAPH.sbSeries.data.setAll(data.data);
    });
    currentGraph = graph;
}


function loadbuy() {

    buysendbutton.style.opacity = 0;
    operation = 0;
    $.post("http://localhost/bazzar/server/checker.php",{stockId:currentGraph},(data)=>{
        buysendbutton.style.opacity = 1;
        buystatus.innerHTML = data.data.allowed;
    });
}
function buy(e) {
e.disabled = true;
e.style.opacity = 0

buystatus.innerHTML = "Processing...";
$.post("http://localhost/bazzar/server/setportfolio.php",{stockId:currentGraph,operation:'buy',quantity:buystockQuantity.value},(data)=>{  
    buystatus.innerHTML = data.data.message+".";

    if(data.data.message=="success"){
        currentBalanceBox.innerHTML = parseInt(currentBalanceBox.innerHTML) - (parseInt(data.data.quantity)*parseInt(data.data.price));
        setTimeout(()=>{
            buyoffcanvasclosebutton.click();
            e.disabled = false;
        },2000)
    }
});

}

function loadsell(){
    sellsendbutton.style.opacity = 0;
    $.post("http://localhost/bazzar/server/checker.php",{stockId:currentGraph},(data)=>{
        sellsendbutton.style.opacity = 1;
        sellstatus.innerHTML = data.data.allowed;
    });
}
function sell(e) {
e.disabled = true;
e.style.opacity = 0;
sellstatus.innerHTML = "Processing...";
$.post("http://localhost/bazzar/server/setportfolio.php",{stockId:currentGraph,operation:'sell',quantity:sellstockQuantity.value},(data)=>{
    sellstatus.innerHTML = data.data.message+".";
    if(data.data.message=="success"){
        currentBalanceBox.innerHTML = parseInt(currentBalanceBox.innerHTML) + (parseInt(data.data.quantity)*parseInt(data.data.price));
        setTimeout(()=>{
            selloffcanvasclosebutton.click();
        },2000)
    }
});

}