
<!-- <button class="sell">

</button> -->

<button class="sell" type="button" data-bs-toggle="offcanvas" data-bs-target="#sellcanvasBottom" aria-controls="offcanvasBottom" onclick="loadsell()">
    <i class="bi bi-graph-up-arrow"></i>
Sell</button>

<div class="offcanvas offcanvas-bottom" tabindex="-1" id="sellcanvasBottom" aria-labelledby="offcanvasBottomLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title px-4" id="offcanvasBottomLabel">Sell</h5>
    <button type="button" class="btn-close text-reset" style="width: 70%;" data-bs-dismiss="offcanvas" aria-label="Close" id="selloffcanvasclosebutton" onclick="closecansav()"></button>
  </div>
  <div class="offcanvas-body small ">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-3">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control disable" id="sellstockname" value="Axix bank" disabled>
                            <label for="sellstockname">Stock</label>
                        </div>
                        
                    </div>
                    <div class="col-5">
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" id="sellstockQuantity" placeholder="name@example.com">
                            <label for="sellstockQuantity">Quantity</label>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" id="sellstockprice" placeholder="name@example.com" disabled>
                            <label for="sellstockprice">Price</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2">
                <button class="send" style="width: 80%;max-width: 140px;" id="sellsendbutton" onclick="sell(this)">
                    <div class="svg-wrapper-1">
                        <div class="svg-wrapper">
                            <svg height="24" width="24" viewBox="0 0 24 24"
                                xmlns="http://www.w3.org/2000/svg">
                                <path d="M0 0h24v24H0z" fill="none"></path>
                                <path
                                    d="M1.946 9.315c-.522-.174-.527-.455.01-.634l19.087-6.362c.529-.176.832.12.684.638l-5.454 19.086c-.15.529-.455.547-.679.045L12 14l6-8-8 6-8.054-2.685z"
                                    fill="currentColor"></path>
                            </svg>
                        </div>
                    </div>
                    <span>Sell</span>
                </button>
            </div>
        </div>
    </div>
    <h3 class="px-4" id="sellstatus">loading ...</h3>
 
  </div>
</div>