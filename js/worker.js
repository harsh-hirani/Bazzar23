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
function initupdates(){
    
    $.post(baseurl+'/server/initial.php',{},(data)=>{
        console.log(data);
        currentBalanceBox.innerHTML = parseFloat(data.data.balance).toFixed(2);
        freezed = data.data.freezed;

        invenstmentBox.innerHTML = parseFloat(data.data.investment).toFixed(2)+" Rs";
        profitBox.innerHTML = parseFloat(data.data.pal).toFixed(2)+" Rs";
        taxBox.innerHTML = parseFloat(data.data.tax).toFixed(2)+" Rs";
    });
}
$.post(baseurl+'/server/initial.php',{},(data)=>{
    console.log(data);
    currentBalanceBox.innerHTML = parseFloat(data.data.balance).toFixed(2);
    freezed = data.data.freezed;
    document.getElementById("stock1").click();
    pricesTabs = document.getElementsByClassName("unixprice");
    changeTabs = document.getElementsByClassName("unixchange");
    invenstmentBox.innerHTML = parseFloat(data.data.investment).toFixed(2)+" Rs";
    profitBox.innerHTML = parseFloat(data.data.pal).toFixed(2)+" Rs";
    taxBox.innerHTML = parseFloat(data.data.tax).toFixed(2)+" Rs";
    $.post(baseurl +"/server/realprice.php",{},(data)=>{currentprices=data.data})
    $.post(baseurl+"/server/stockprice.php",{},(data)=>{console.log(data)
        currentcandleprices = data.data;
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

 function showportfolio(code){
    var tr = '';
    if(code==0){
        tr= `<th scope="col"></th>
        <th scope="col" class="text-center">NAME</th>
        <th scope="col" class="text-center">QUANTITY</th>
        <th scope="col" class="text-center">BUYING PRICE</th>
        <th scope="col" class="text-center">COST</th>
        <th scope="col" class="text-center">SELLING PRICE</th>
        <th scope="col" class="text-center">P&L</th>
        <th scope="col" class="text-center">HOLDING AMOUNT</th>`;
    }else{
        tr= `<th scope="col"></th>
        <th scope="col" class="text-center">NAME</th>
        <th scope="col" class="text-center">QUANTITY</th>
        <th scope="col" class="text-center">SELLING PRICE</th>
        <th scope="col" class="text-center">COST</th>
        <th scope="col" class="text-center">BUYING PRICE</th>
        <th scope="col" class="text-center">P&L</th>
        <th scope="col" class="text-center">HOLDING AMOUNT</th>`;
    }
    myTableTitles.innerHTML = tr;
    $.post(baseurl+"/server/getportfolio.php",{fixcode:code},(data)=>{
        let colorCode = "text-white";
        console.log(data);
        var load = ``;
        objids = []
        updaterarraycount = 0;
        data.data.forEach((element,index) => {
            if(element.fixed == 0 || element.fixed == 2){
                colorCode = "text-white";
                updaterarraycount++;
                console.log(element);
                objids.push( parseInt(element.stockId));
            }
                colorCode = (element.pal <0 )?"text-danger":"text-success";
            
            // console.log(stockarray[parseInt(element.stockId)-1]);
            currprice = parseInt(currentprices[parseInt(element.stockId)-1].price);
            buyprice = parseFloat(element.value);
            load += `<tr class="${colorCode} fw-bold">
            <th scope="row" class="text-center">${index+1}</th>
            <td class="text-center">${stockarray[parseInt(element.stockId)-1].name}</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="qqq${updaterarraycount}"`:''}>${element.quantity}</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="vvv${updaterarraycount}"`:''}>${element.value}</td>
            <td class="text-center">${parseFloat(element.value*element.quantity).toFixed(2)}</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="ccc${updaterarraycount}">`+parseFloat(currprice).toFixed(2):">"+parseFloat(element.cost).toFixed(2)}</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="ppp${updaterarraycount}">`+parseFloat((currprice - buyprice)*element.quantity).toFixed(2):">"+parseFloat(element.pal).toFixed(2) }</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="hhh${updaterarraycount}">`+(currprice)*element.quantity:">"+'Settled'}</td>
                    </tr>`;
        });
        portfoliotablebody.innerHTML = load;
    });
 }
function changeto(e) {
    srink();
    if (e == showing) return;
    if(e== 'portfolio'){
       showportfolio(portfoliocode);
    }else if(e=='ranking'){
        $.post(baseurl+"/server/ranking.php",{},(data)=>{
            console.log(data);
            var load = ``;
            data.data.forEach((element,index) => {
                load += `<article class="leaderboard__profile">
                            <span class="leaderboard__name">#${index+1} ${element.name}</span>
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
    initupdates();
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

            // GRAPH.valueSeries.data.setAll(data.data);
            setFinalData(data.data);
            setSeriesType(currentGraphType)
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
    offsetstockprice.disabled = true;
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
        case "Square OFF":
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

        offsetstatus.innerHTML = "Holdings: " + data.data.allowed + ` ${(operation == 2)?`{freezable: ${parseFloat(data.data.price)}}`:""}`;
        offsetstockprice.value = data.data.price;
        loadedStockPrice = data.data.price;
        loadedStockHolding = data.data.allowed;
        if(operation == 2 ){offsetstockprice.disabled=false;}
    });
}


function buychecker(e){
    if(e.value!=''){
        
        // console.log(e.value);
        if(e.value<1){
            e.value = 1;
        }else {
            let currentStockPrice=  parseFloat(loadedStockPrice);
            let cuttableAmmount = parseFloat(e.value)*currentStockPrice;
            let currentBalance = parseFloat(currentBalanceBox.innerText);
            if(cuttableAmmount> currentBalance-freezed){
                e.value = Math.floor((currentBalance-freezed)/currentStockPrice);
                // alert("Please select a less quantity")
            }
        }
        offsetstockprice.value = parseFloat(loadedStockPrice)*parseFloat(e.value);
    }
}

function shortsellchecker(e) {
    
    if(e.value!=''){
        if(e.value<1){
            e.value = 1;
        }else{
            let currentBalance = parseFloat(currentBalanceBox.innerText);
            let usable = currentBalance - freezed;
            if(e.value*parseFloat(offsetstockprice.value)>usable){
                e.value= Math.floor( usable/offsetstockprice.value );
            }

        }
    }
    offsetstatus.innerHTML = "Holdings: "+loadedStockHolding+". {freezable: "+ e.value * parseFloat(offsetstockprice.value) +" }";
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
    if(e.value!=''){

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
        shortsellchecker(q);
    }else if (operation == 3){
        sellchecker(q);
    }
}

function shortsell(e){
    e.disabled = true;
    e.style.opacity = 0;
    offsetstatus.innerHTML = "Processing...";
    $.post(baseurl+"/server/setportfolio.php",{stockId:currentGraph,operation:'shortsell',quantity:offsetstockQuantity.value,atprice:offsetstockprice.value},(data)=>{
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
        if(parseFloat(offsetstockprice.value) - parseFloat(loadedStockPrice) >= 0){
            alert("can't set price higher than or same as stock price");
        }else{
            shortsellchecker(offsetstockQuantity)
            shortsell(e);
        }
        
        
        
    }else if(operation == 3){
        shortbuy(e);
    }
    
}
function release(t,id,q){
    document.getElementById('stock'+id).click()
    if(t== 0){
        sellbtn.click();
    }else{
        ssbtn.click();
    }
}
// GRAPH refresher
setInterval(()=>{
    $.post(baseurl+"/server/stockapi.php",{stockId:currentGraph},(data)=>{
     
        setFinalData(data.data);
        setSeriesType(currentGraphType)
            GRAPH.volumeSeries.data.setAll(data.data);
            GRAPH.sbSeries.data.setAll(data.data);
    });
    $.post(baseurl+"/server/stockprice.php",{},(data)=>{
        currentcandleprices = data.data;
    }); 
},33000)
setInterval(()=>{
    $.post(baseurl+"/server/realprice.php",{},(data)=>{
        currentprices = data.data;
        data.data.forEach((element,index)=>{
            pricesTabs[index].innerHTML = parseFloat(element.price).toFixed(2);
            let change = element.price - currentcandleprices[index].nextValue;
            if(change < 0){
                //loosing
                changeTabs[index].classList.add("down");
                changeTabs[index].classList.remove("up");
            }else{
                changeTabs[index].classList.remove("down");
                changeTabs[index].classList.add("up");
            }
            changeTabs[index].innerHTML = (100*change/currentcandleprices[index].prevValue).toFixed(2)+"%";
        });
    });
    if (showing == 'portfolio') {
        for (var i = 1; i<= updaterarraycount;i++) {
            let q = parseInt(document.getElementById('qqq'+i).innerHTML);
            let v = parseFloat(document.getElementById('vvv'+i).innerHTML);
            let nv = parseFloat( currentprices[objids[i-1]-1].price);
            document.getElementById('ccc'+i).innerHTML = nv.toFixed(2);
            document.getElementById('ppp'+i).innerHTML = (q*(nv - v)).toFixed(2);
            document.getElementById('hhh'+i).innerHTML = (q*nv).toFixed(2);
        }
    }

},1300)