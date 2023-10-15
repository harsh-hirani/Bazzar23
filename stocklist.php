<!-- <div class="stock" onclick="graphchange(this,'axis')">
    <div class="stock-image">
        <img src="assets/download.png" height="100%"alt="">
    </div>
    <div class="stock-info">
        <div class="stock-name">
            <div class="stock-full-name">Axis</div>
            <div class="stock-code">AX</div>
        </div>
        <div class="stock-price">
            <div class="stock-price-current">155.2</div>
            <div class="stock-price-change">-0.2%</div>
        </div>
    </div>
</div>

<div class="stock">
    <div class="stock-image">
        <img src="assets/download.png" height="100%"alt="">
    </div>
    <div class="stock-info">
        <div class="stock-name">
            <div class="stock-full-name">NAME</div>
            <div class="stock-code">MN</div>
        </div>
        <div class="stock-price">
            <div class="stock-price-current">155.2</div>
            <div class="stock-price-change">-0.2%</div>
        </div>
    </div>
</div> -->
<div id="stocklistcover">

    <div class="search">
        <input type="text" name="search" id="searchbar" class="my-4 searchbar"
            placeholder="search here...">
    </div>
    <div class="stocklists">

    <?php

    $array = array(
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        ),
        array(
            "name"=>"axis",
            "scode"=>"AXS"
        ),array(
            "name"=>"HDFC",
            "scode"=>"HDF"
        )

    );
    for($i=0;$i<12;$i++)
    {
    ?>
    <div class="iteam" onclick="graphchange(this,'<?php echo ($i+1);?>')">
        <div class="img">
            <img src="/download.png" alt="">
        </div>
        <div class="stockname">
            <p class="mainName"><?php echo $array[$i]['name'];?></p>
            <p><?php echo $array[$i]['scode'];?></p>
        </div>
        <div class="stockprize">
            <p style="font-weight: 700;">500 Rs.</p>
            <p class="down">-1.10%</p>
        </div>
    </div>
    <div class="line"></div>
    <?php }
    ?>
    </div>
</div>