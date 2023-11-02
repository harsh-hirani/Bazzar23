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
        // document.getElementById('freezedAmountBox').innerHTML = parseFloat(data.data.freezed).toFixed(2);;
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
        // currentcandleprices = data.data;
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
        <th scope="col" class="text-center">HOLDING AMOUNT</th>
        <th scope="col" class="text-center">STATUS</th>`;
    }else{
        tr= `<th scope="col"></th>
        <th scope="col" class="text-center">NAME</th>
        <th scope="col" class="text-center">QUANTITY</th>
        <th scope="col" class="text-center">SELLING PRICE</th>
        <th scope="col" class="text-center">COST</th>
        <th scope="col" class="text-center">BUYING PRICE</th>
        <th scope="col" class="text-center">P&L</th>
        <th scope="col" class="text-center">HOLDING AMOUNT</th>
        <th scope="col" class="text-center">STATUS</th>`;
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
                
                
            }else{

                colorCode = (element.pal <0 )?"text-danger":"text-success";
            }
            // console.log(stockarray[parseInt(element.stockId)-1]);
            currprice = parseInt(currentprices[parseInt(element.stockId)-1].price);
            buyprice = parseFloat(element.value);
            load += `<tr class="${colorCode} fw-bold">
            <th scope="row" class="text-center">${index+1}</th>
            <td class="text-center">${stockarray[parseInt(element.stockId)-1].name}</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="qqq${updaterarraycount}"`:''}>${parseFloat(element.quantity).toFixed(2)}</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="vvv${updaterarraycount}"`:''}>${parseFloat(element.value).toFixed(2)}</td>
            <td class="text-center">${parseFloat(element.value*element.quantity).toFixed(2)}</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="ccc${updaterarraycount}">`+parseFloat(currprice).toFixed(2):">"+parseFloat(element.cost).toFixed(2)}</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="ppp${updaterarraycount}">`+
            (
                (element.fixed == 0)?(parseFloat((currprice - buyprice)*element.quantity).toFixed(2)):
                (parseFloat((buyprice - currprice)*element.quantity).toFixed(2))
            )
            
            :">"+parseFloat(element.pal).toFixed(2) }</td>
            <td class="text-center" ${(element.fixed % 2 == 0)?`id="hhh${updaterarraycount}">`+(currprice)*element.quantity:(">"+parseFloat(element.quantity*element.value).toFixed(2))}</td>
            <td class="text-center" ><span ${(element.fixed % 2 == 0)?`class="smallBtn"  onclick="release(${element.fixed},${element.stockId})">Release`:`>Settled`}</span></td>
                    </tr>`;
        });

        portfoliotablebody.innerHTML = load;
        if(code == 0){
            document.getElementById("r").classList.remove('active');
            document.getElementById("l").classList.add('active');
        }else{
            document.getElementById("r").classList.add('active');
            document.getElementById("l").classList.remove('active');

        }
        portfoliocode = code;
    });
 }
function changeto(e) {
    srink();
    if (e == showing) return;
    if(e== 'portfolio'){
       showportfolio(portfoliocode);
    }else if(e=='ranking'){
        $.post(baseurl+"/server/ranking.php",{},(data)=>{
            var rankelement ;
            console.log(data);
            var load = ``;
            data.data.forEach((element,index) => {
                if(element.id==id){rankelement=element;}
                else{

                    load += `<article class="leaderboard__profile">
                    <span class="leaderboard__name">#${element.rank} ${element.name}</span>
                    <span class="leaderboard__value">${parseFloat(element.balance).toFixed(2)}<span>Rs</span></span>
                    </article>`;
                }
            });
            let yourplate = `<article class="leaderboard__profile">
            <span class="leaderboard__name">#${rankelement.rank} ${rankelement.name}</span>
            <span class="leaderboard__value">${parseFloat(rankelement.balance).toFixed(2)}<span>Rs</span></span>
            </article>`;
            leaderboardRanking.innerHTML = yourplate+load;
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
            console.log(data);
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
    offsetstockQuantity.value = "";
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
    document.getElementById("labelchange").innerHTML='Price';
   
    console.log('object');
    let sendop = (operation<2)?0:2;
    console.log(sendop);
    $.post(baseurl+"/server/checker.php",{stockId:currentGraph,operationcode:sendop},(data)=>{
        console.log(data);
        offsetsendbutton.style.opacity = 1;
        offsetstockname.value = stockarray[currentGraph-1].name;

        offsetstatus.innerHTML = "Holdings: " + data.data.allowed + ` ${(operation == 2)?`[freezable: 0 ]`:""}`;
        offsetstockprice.value = parseFloat(data.data.price).toFixed(2);
       
        loadedStockPrice = data.data.price;
        loadedStockHolding = data.data.allowed;
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
                e.value = parseInt((currentBalance-freezed)/currentStockPrice);
                // alert("Please select a less quantity")
            }
        }
        // offsetstockprice.value = parseFloat(loadedStockPrice)*parseFloat(e.value);
        offsetstatus.innerHTML = "Holdings: "+loadedStockHolding+" [Total Amount: "+ parseFloat(e.value * parseFloat(offsetstockprice.value)).toFixed(2) +" ]";

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
    offsetstatus.innerHTML = "Holdings: "+loadedStockHolding+" [freezable: "+ parseFloat(e.value * parseFloat(offsetstockprice.value)).toFixed(2) +" ]";
}

function evehi(){
    shortsellchecker(offsetstockQuantity);
}
function buy(e) {
    e.disabled = true;
    e.style.opacity = 0
    offsetstatus.innerHTML = "Processing...";
    $.post(baseurl+"/server/setportfolio.php",{stockId:currentGraph,operation:'buy',quantity:offsetstockQuantity.value},(data)=>{
        console.log(data);  
        offsetstatus.innerHTML = data.data.quantity+" bought at "+(data.data.price*data.data.quantity).toFixed(2)+".";
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
        // offsetstockprice.value = parseInt(loadedStockPrice)*parseInt(e.value);
        offsetstatus.innerHTML = "Holdings: "+loadedStockHolding+" [Total Amount: "+ parseFloat(e.value * parseFloat(offsetstockprice.value)).toFixed(2) +" ]";

    }
}
function sell(e) {
    e.disabled = true;
    e.style.opacity = 0;
    offsetstatus.innerHTML = "Processing...";
    $.post(baseurl+"/server/setportfolio.php",{stockId:currentGraph,operation:'sell',quantity:offsetstockQuantity.value},(data,s)=>{
        console.log(s,data);
        offsetstatus.innerHTML = data.data.quantity+" sold at "+(data.data.price*data.data.quantity).toFixed(2)+".";       
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
        offsetstatus.innerHTML = data.data.quantity+" Bought at "+(data.data.price*data.data.quantity).toFixed(2)+".";       
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
    if(parseInt(offsetstockQuantity.value)==0 || offsetstockQuantity.value=="" || offsetstockprice.value =="" || parseInt(offsetstockprice.value)==0){
        alert("Please enter a valid number");

    }else{
        if(operation == 0){
            buy(e);
        }else if(operation == 1){
            sell(e);
        }else if(operation == 2){
            // if(parseFloat(offsetstockprice.value) - parseFloat(loadedStockPrice) >= 0){
                // alert("can't set price higher than or same as stock price");
            // }else{
                // shortsellchecker(offsetstockQuantity)
                shortsell(e);
            // }
            
            
            
        }else if(operation == 3){
            shortbuy(e);
        }

    }
    
}
function release(t,id){
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
    // $.post(baseurl+"/server/stockprice.php",{},(data)=>{
    //     currentcandleprices = data.data;
    // }); 
},33000)

function firstrowchange(code){
    var totalq= 0;
    var totalcost=0;
    var totalpal=0;
    var totalhold=0;
    for(var i = 1; i<= updaterarraycount;i++){
        let q = parseInt(document.getElementById('qqq'+i).innerHTML);
        let v = parseFloat(document.getElementById('vvv'+i).innerHTML);
        let nv = parseFloat( currentprices[objids[i-1]-1].price);
        totalq+=q;
        totalcost+=q*v;
        if(code == 0){
            totalpal+= (q*(nv - v));
        }else{
            totalpal+= (q*(v - nv));
        }
        totalhold+=q*nv;
    }
    document.getElementById('ttq').innerText = (totalq);
    document.getElementById('ttc').innerText = parseFloat(totalcost).toFixed(2);
    document.getElementById('ttp').innerText = parseFloat(totalpal).toFixed(2);
    if(totalpal<0){
        document.getElementById('ttp').style.color = "#E5380F";
    }else{
        document.getElementById('ttp').style.color = "#0FE25E";
    }
    document.getElementById('tth').innerText = parseFloat(totalhold).toFixed(2);
}
setInterval(()=>{
    $.post(baseurl+"/server/realprice.php",{},(data)=>{
        currentprices = data.data;
        data.data.forEach((element,index)=>{
            pricesTabs[index].innerHTML = parseFloat(element.price).toFixed(2);
            let change = element.price - currentcandleprices[index];
            if(change < 0){
                //loosing
                changeTabs[index].classList.add("down");
                changeTabs[index].classList.remove("up");
            }else{
                changeTabs[index].classList.remove("down");
                changeTabs[index].classList.add("up");
            }
            changeTabs[index].innerHTML = (100*change/currentcandleprices[index]).toFixed(2)+"%";
        });
    });
    if (showing == 'portfolio') {
        for (var i = 1; i<= updaterarraycount;i++) {
            let q = parseInt(document.getElementById('qqq'+i).innerHTML);
            let v = parseFloat(document.getElementById('vvv'+i).innerHTML);
            let nv = parseFloat( currentprices[objids[i-1]-1].price);
            document.getElementById('ccc'+i).innerHTML = nv.toFixed(2);
            var pll ;
            if(portfoliocode == 0){
                pll = (q*(nv - v)).toFixed(2);
            }else{
                pll = (q*(v - nv)).toFixed(2);
            }
            document.getElementById('ppp'+i).innerHTML = pll;
            if(pll<0){
                document.getElementById('ppp'+i).style.color = "#E5380F";

            }else{
                document.getElementById('ppp'+i).style.color = "#0FE25E";
            }
            document.getElementById('hhh'+i).innerHTML = (q*nv).toFixed(2);
        }
    }
    firstrowchange(portfoliocode)

},1300)