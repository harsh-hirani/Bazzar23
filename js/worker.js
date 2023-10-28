document.getElementById("stocklistcover").style.height = (window.innerHeight - 50 - document.getElementById("nav").clientHeight) + "px";
//initial load
stockarray.forEach((element,index) => {
    stocklistsContainer.innerHTML += `
    <div class="iteam" id="stock${element.id}" onclick="graphchange(this,${element.id})">
        <!----------------------------------------------------------------
        <div class="img">
            <img src="assets/download.png" alt="">
        </div>
        ---------------------------------------------------------------->
        <div class="stockname">
            <p class="mainName"> ${element.name}</p> </p>
        </div>
        <div class="stockprize">
            <p style="font-weight: 700;" class="unixprice"></p>
            <p class="unixchange"></p>
        </div>
    </div>
    <div class="line"></div>
    `;
});

$.post(baseurl+'/server/initial.php',{},(data)=>{
    console.log(data);
    currentBalanceBox.innerHTML = parseFloat(data.data.balance).toFixed(2);

    document.getElementById("stock1").click();
    pricesTabs = document.getElementsByClassName("unixprice");
    changeTabs = document.getElementsByClassName("unixchange");
    invenstmentBox.innerHTML = parseFloat(data.data.investment).toFixed(2)+" Rs";
    profitBox.innerHTML = parseFloat(data.data.pal).toFixed(2)+" Rs";
    taxBox.innerHTML = parseFloat(data.data.tax).toFixed(2)+" Rs";

    $.post(baseurl+"/server/stockprice.php",{},(data)=>{
        data.data.forEach((element,index) => {
            pricesTabs[index].innerHTML = element.nextValue;
            let change = element.nextValue - element.prevValue;
            if(change < 0){
                //loosing
                changeTabs[index].classList.add("down");
                changeTabs[index].classList.remove("up");
            }else{
                changeTabs[index].classList.remove("down");
                changeTabs[index].classList.add("up");
            }
            changeTabs[index].innerHTML = (100*change/element.prevValue).toFixed(2)+"%";
        });
    }); 
});


// functions
function getTimestampDifference(timestamp1, timestamp2) {
    // Calculate the difference in milliseconds.
    const differenceInMs = parseInt(timestamp1) - parseInt(timestamp2);
    console.log(differenceInMs);
    // Convert the difference in milliseconds to minutes, hours, or days.
    const second = Math.floor(differenceInMs / 1000);
    const minutes = Math.floor(second / 60);
    const hours = Math.floor(minutes / 60);
    const days = Math.floor(hours / 24);
    
    // Return the difference in a human-readable format.
    if (days > 0) {
      return `${days} days`;
    } else if (hours > 0) {
      return `${hours} hour, ${minutes%60} min`;
    }else{
        return `${minutes%60} min, ${second%60} sec`;
    }   
  }
function changeto(e) {
    srink();
    if (e == showing) return;
    if(e== 'portfolio'){
        $.post(baseurl+"/server/getportfolio.php",{},(data)=>{
            let colorCode = "text-white";
            console.log(data);
            var load = ``;
            data.data.forEach((element,index) => {
                if(element.fixed == 0 || element.fixed == 2){
                    colorCode = "text-white";
                }else if(element.fixed == 1){
                    colorCode = (element.pal <0 )?"text-danger":"text-success";
                }else if(element.fixed == 3){
                    colorCode = (element.pal <0 )?"text-success":"text-danger";
                }
                console.log(stockarray[parseInt(element.stockId)-1]);
                load += `<tr class="${colorCode} fw-bold">
                <th scope="row" class="text-center">${index+1}</th>
                <td class="text-center">${stockarray[parseInt(element.stockId)-1].name}</td>
                <td class="text-center">${element.quantity}</td>
                <td class="text-center">${element.value}</td>
                <td class="text-center">${(element.fixed % 2 == 0)?'NA':element.cost}</td>
                <td class="text-center">${(element.fixed % 2 == 0)?'NA':element.pal }</td>
                <td class="text-center">${(element.fixed % 2 == 0)?'not setteled':getTimestampDifference(element.sellDate,element.buyDate)}</td>
                        </tr>`;
            });
            portfoliotablebody.innerHTML = load;
        });
    }else if(e=='ranking'){
        $.post(baseurl+"/server/ranking.php",{},(data)=>{
            console.log(data);
            var load = ``;
            data.data.forEach((element,index) => {
                load += `<article class="leaderboard__profile">
                            <span class="leaderboard__name"> ${element.name}</span>
                            <span class="leaderboard__value">${parseFloat(element.balance).toFixed(2)}<span>Rs</span></span>
                        </article>`;
            });
            leaderboardRanking.innerHTML = load;
        });
    }
    document.getElementById(showing).classList.remove("active");
    document.getElementById(e).classList.add("active");
    showing = e;
}
function closecansav(){
    offcanvas = false;
}
function doneworker(graph=currentGraph){
    $.post(baseurl+"/server/checker.php",{stockId:graph,operationcode:5},(data)=>{
        
        if (data.data.allowed0 == 0 && data.data.allowed2 == 0){
            lefter.innerHTML = `<button class="buy" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom" onclick="loadoffset('Buy')"><i class="bi bi-graph-up-arrow"></i>
            Buy</button>`;
            righter.innerHTML = `<button class="sell" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom"
            onclick="loadoffset('Short Sell')"><i class="bi bi-graph-up-arrow"></i>
           Short Sell</button>`;
        }else if(data.data.allowed0 > 0 ){
            lefter.innerHTML = `<button class="buy" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom" onclick="loadoffset('Buy')"><i class="bi bi-graph-up-arrow"></i>
            Buy</button>`;
            righter.innerHTML = `<button class="sell" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom"
            onclick="loadoffset('Sell')"><i class="bi bi-graph-down-arrow"></i>
           Sell</button>`;
        }else if(data.data.allowed2 > 0){
            lefter.innerHTML = `<button class="buy" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom" 
            onclick="loadoffset('Short Buy')"><i class="bi bi-graph-up-arrow"></i>
            SOF</button>`;
            righter.innerHTML = `<button class="sell" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom"
            onclick="loadoffset('Short Sell')"><i class="bi bi-graph-up-arrow"></i>
           Short Sell</button>`;
        }
    });
}

function graphchange(e,graph){
    if(offcanvas==true){
        closecansav();
        offcanvasclosebutton.click();

    }
    
    changeto('mainStock');
    if(graph==currentGraph) {doneworker(); return};
    e.classList.add("active");
    if (currentGraph === 0){}else{
    document.getElementById("stock"+currentGraph).classList.remove("active");}

   
    $.post(baseurl+"/server/stockapi.php",{stockId:graph},(data)=>{
        GRAPH.valueSeries.data.clear();
        GRAPH.volumeSeries.data.clear();
        GRAPH.sbSeries.data.clear();
            GRAPH.valueSeries.data.setAll(data.data);
            GRAPH.volumeSeries.data.setAll(data.data);
            GRAPH.sbSeries.data.setAll(data.data);
    });
    currentGraph = graph;
    doneworker(graph);
}


function loadoffset(title) {
    offsettitle.innerHTML = title;
    offsetsendbutton.style.opacity = 0;
    offsetstockQuantity.value = 1;
    switch (title) {
        case "Buy":
            operation = 0;
            break;
        case "Sell":
            operation = 1;
            break;
        case "Short Sell":
            operation = 2;
            break;
        case "Short Buy":
            operation = 3;
            break;
        default:
            break;
    }
    offsetButton.innerHTML = title;
    offcanvas = true;
    console.log('object');
    let sendop = (operation<2)?0:2;
    console.log(sendop);
    $.post(baseurl+"/server/checker.php",{stockId:currentGraph,operationcode:sendop},(data)=>{
        console.log(data);
        offsetsendbutton.style.opacity = 1;
        offsetstockname.value = stockarray[currentGraph-1].name;
        offsetstatus.innerHTML = "Holdings: " + data.data.allowed;
        offsetstockprice.value = data.data.price;
        loadedStockPrice = data.data.price;
        loadedStockHolding = data.data.allowed;
    });
}


function buychecker(e){
    // console.log(e.value);
    if(e.value<1){
        e.value = 1;
    }else {
        let currentStockPrice=  parseFloat(loadedStockPrice);
        let cuttableAmmount = parseFloat(e.value)*currentStockPrice;
        let currentBalance = parseFloat(currentBalanceBox.innerText);
        if(cuttableAmmount> currentBalance){
            e.value = Math.floor(currentBalance/currentStockPrice);
            // alert("Please select a less quantity")
        }
    }
    offsetstockprice.value = parseFloat(loadedStockPrice)*parseFloat(e.value);
}
function buy(e) {
    e.disabled = true;
    e.style.opacity = 0
    offsetstatus.innerHTML = "Processing...";
    $.post(baseurl+"/server/setportfolio.php",{stockId:currentGraph,operation:'buy',quantity:offsetstockQuantity.value},(data)=>{
        console.log(data);  
        offsetstatus.innerHTML = data.data.quantity+" bought at "+(data.data.price*data.data.quantity)+".";
        if(data.data.message=="success"){
            currentBalanceBox.innerHTML = parseFloat(data.data.balance).toFixed(2);
            doneworker();
            setTimeout(()=>{
                e.disabled = false;
                offcanvasclosebutton.click();
                closecansav()
                e.disabled = false;
            },2000)
        }
    });

}


function sellchecker(e){
    // console.log(e.value);
    if(e.value<1){
        e.value = 1;
    }else {
        if(e.value > loadedStockHolding){
            e.value = loadedStockHolding;
            // alert("Please select a less quantity")
        }
    }
    offsetstockprice.value = parseInt(loadedStockPrice)*parseInt(e.value);
}
function sell(e) {
    e.disabled = true;
    e.style.opacity = 0;
    offsetstatus.innerHTML = "Processing...";
    $.post(baseurl+"/server/setportfolio.php",{stockId:currentGraph,operation:'sell',quantity:offsetstockQuantity.value},(data,s)=>{
        console.log(s,data);
        offsetstatus.innerHTML = data.data.quantity+" sold at "+(data.data.price*data.data.quantity)+".";       
        if(data.data.message=="success"){
            currentBalanceBox.innerHTML = data.data.balance.toFixed(2);
            doneworker();
            setTimeout(()=>{
                e.disabled=false;
                closecansav()
                offcanvasclosebutton.click();
            },2000)
        }
    });

}
function handleChecks(q){
    if(operation == 0){
         buychecker(q);
    }else if(operation == 1){
         sellchecker(q);
    }else if (operation == 2){
        buychecker(q);
    }else if (operation == 3){
        sellchecker(q);
    }
}

function shortsell(e){
    e.disabled = true;
    e.style.opacity = 0;
    offsetstatus.innerHTML = "Processing...";
    $.post(baseurl+"/server/setportfolio.php",{stockId:currentGraph,operation:'shortsell',quantity:offsetstockQuantity.value},(data)=>{
        console.log(data);
        offsetstatus.innerHTML = data.data.quantity+" Short sold at "+(data.data.price*data.data.quantity)+".";
        if(data.data.message=="success"){
            currentBalanceBox.innerHTML = parseFloat(data.data.balance).toFixed(2);
            doneworker();
            setTimeout(()=>{
                e.disabled=false;
                closecansav()
                offcanvasclosebutton.click();
            },2000)
        }
    });
}
function shortbuy(e){
    e.disabled = true;
    e.style.opacity = 0;
    offsetstatus.innerHTML = "Processing...";
    $.post(baseurl+"/server/setportfolio.php",{stockId:currentGraph,operation:'shortbuy',quantity:offsetstockQuantity.value},(data)=>{
        console.log(data);
        offsetstatus.innerHTML = data.data.quantity+" sold at "+(data.data.price*data.data.quantity)+".";       
        if(data.data.message=="success"){
            currentBalanceBox.innerHTML = parseFloat(data.data.balance).toFixed(2);
            doneworker();
            setTimeout(()=>{
                e.disabled=false;
                closecansav()
                offcanvasclosebutton.click();
            },2000)
        }
    });    
}
function perform(e){
    if(operation == 0){
        buy(e);
    }else if(operation == 1){
        sell(e);
    }else if(operation == 2){
        shortsell(e);
    }else if(operation == 3){
        shortbuy(e);
    }
    
}
// GRAPH refresher
setInterval(()=>{
    $.post(baseurl+"/server/stockapi.php",{stockId:currentGraph},(data)=>{
        // GRAPH.valueSeries.data.clear();
        // GRAPH.volumeSeries.data.clear();
        // GRAPH.sbSeries.data.clear();
            GRAPH.valueSeries.data.setAll(data.data);
            GRAPH.volumeSeries.data.setAll(data.data);
            GRAPH.sbSeries.data.setAll(data.data);
    });

    $.post(baseurl+"/server/stockprice.php",{},(data)=>{
        data.data.forEach((element,index) => {
            pricesTabs[index].innerHTML = element.nextValue;
            let change = element.nextValue - element.prevValue;
            if(change < 0){
                //loosing
                changeTabs[index].classList.add("down");
                changeTabs[index].classList.remove("up");
            }else{
                changeTabs[index].classList.remove("down");
                changeTabs[index].classList.add("up");
            }
            changeTabs[index].innerHTML = (100*change/element.prevValue).toFixed(2)+"%";
        });
    }); 
},60000)