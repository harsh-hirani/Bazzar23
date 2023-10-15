document.getElementById("stocklistcover").style.height = (window.innerHeight - 50 - document.getElementById("nav").clientHeight) + "px";
//initial load
$.post('http://localhost/bazzar/server/initial.php',{},(data)=>{
    console.log(data);
    currentBalanceBox.innerHTML = data.data.balance;
});

function changeto(e) {
    if (e == showing) return;
    if(e== 'portfolio'){
        $.post("http://localhost/bazzar/server/getportfolio.php",{},(data)=>{
            console.log(data);
            // document.getElementById("portfolio").innerHTML = data.data;
            var load = ``;
            data.data.forEach(element => {
                console.log(stockarray[parseInt(element.stockId)-1]);
                load += `<tr>
                <th scope="row" class="text-center">1</th>
                <td class="text-center">${stockarray[parseInt(element.stockId)-1].name}</td>
                <td class="text-center">${element.quantity}</td>
                <td class="text-center">${element.value}</td>
                <td class="text-center">${element.cost}</td>
                <td class="text-center">${element.pal}</td>
                <td class="text-center">${element.buyDate}</td>
                        </tr>`;
            });
            portfoliotablebody.innerHTML = load;
        });
    }
    document.getElementById(showing).classList.remove("active");
    document.getElementById(e).classList.add("active");
    showing = e;
}
function closecansav(){
    offcanvas = false;
}
function graphchange(e,graph){
    if(offcanvas==true){
        closecansav();
        if(operation==0){
            buyoffcanvasclosebutton.click();

        }else{
            selloffcanvasclosebutton.click();
        }
    }
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
    buystockQuantity.value = 1;
    operation = 0;
    offcanvas = true;
    $.post("http://localhost/bazzar/server/checker.php",{stockId:currentGraph},(data)=>{
        buysendbutton.style.opacity = 1;
        buystockname.value = data.data.name;
        buystatus.innerHTML = "Holdings: " + data.data.allowed;
        buystockprice.value = data.data.price
    });
}
function buy(e) {
e.disabled = true;
e.style.opacity = 0

buystatus.innerHTML = "Processing...";
$.post("http://localhost/bazzar/server/setportfolio.php",{stockId:currentGraph,operation:'buy',quantity:buystockQuantity.value},(data)=>{  
    buystatus.innerHTML = data.data.message+".";
    buystatus.innerHTML = data.data.quantity+" bought at "+(data.data.price*data.data.quantity)+".";
    if(data.data.message=="success"){
        currentBalanceBox.innerHTML = data.data.balance;
        setTimeout(()=>{
            e.disabled = false;
            buyoffcanvasclosebutton.click();
            closecansav()
            e.disabled = false;
        },2000)
    }
});

}

function loadsell(){
    sellsendbutton.style.opacity = 0;
    sellstockQuantity.value = 1;
    operation = 1;
    offcanvas = true;
    $.post("http://localhost/bazzar/server/checker.php",{stockId:currentGraph},(data)=>{
        sellsendbutton.style.opacity = 1;
        sellstockname.value = data.data.name;
        sellstatus.innerHTML = "Holdings: "+data.data.allowed;
        sellstockprice.value = data.data.price;
    });
}
function sell(e) {
e.disabled = true;
e.style.opacity = 0;
sellstatus.innerHTML = "Processing...";
$.post("http://localhost/bazzar/server/setportfolio.php",{stockId:currentGraph,operation:'sell',quantity:sellstockQuantity.value},(data)=>{
    sellstatus.innerHTML = data.data.message+".";
    sellstatus.innerHTML = data.data.quantity+" sold at "+(data.data.price*data.data.quantity)+".";
    if(data.data.message=="success"){
        currentBalanceBox.innerHTML = data.data.balance;

        setTimeout(()=>{
            e.disabled=false;
            closecansav()
            selloffcanvasclosebutton.click();
        },2000)
    }
});

}


// GRAPH refresher
setInterval(()=>{
    $.post("http://localhost/bazzar/server/stockapi.php",{stockId:currentGraph},(data)=>{
        // GRAPH.valueSeries.data.clear();
        // GRAPH.volumeSeries.data.clear();
        // GRAPH.sbSeries.data.clear();
            GRAPH.valueSeries.data.setAll(data.data);
            GRAPH.volumeSeries.data.setAll(data.data);
            GRAPH.sbSeries.data.setAll(data.data);
    });
},2.5*60000)