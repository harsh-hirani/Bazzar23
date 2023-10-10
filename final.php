<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="layout.css">
    <link rel="stylesheet" href="sidebar.css"> -->
    <style>
        #chartcontrols {
  height: auto;
  padding: 5px 5px 0 16px;
  max-width: 100%;
    }
    <?php 
    include 'layout.css';
    include 'sidebar.css';
    ?>

    </style>
    <title>Bazzar23 - Bulls & Bears</title>
</head>

<body>

    <div id="screen">

        <div id="popup">

        </div>

        <div id="content">
            <nav id="nav"> </nav>
            <main id="main">
                <div id="notification"></div>
                <div id="game">
                    <div id="sidebar">
                        <div class="name">NAME</div>
                        <div class="hr ruler"></div>
                        <div class="link-list">
                            <div class="links c1" onclick="changeto('portfolio');">
                                <i class="bi bi-table"></i>
                                Portfolio
                            </div>
                            <div class="links c2" onclick="changeto('news');">
                                <i class="bi bi-newspaper"></i> 
                                News
                            </div>
                            <div class="links c3" onclick="changeto('ranking');">
                                <i class="bi bi-list-stars"></i> 
                                Ranking
                            </div>
                            <div class="hr ruler"></div>
                            <div class="links c4" onclick="changeto('query');">
                                <i class="bi bi-question-circle"></i> 
                                Query
                            </div>
                            <div class="links c5" onclick="changeto('contact');">
                                <i class="bi bi-person-circle"></i> 
                                Contact
                            </div>
                            <div class="links c6">
                                <i class="bi bi-box-arrow-left"></i> 
                                Log out
                            </div>
                        </div>
                    </div>
                    <div id="info"></div>
                    <div id="chart">
                        <div id="mainStock" class="active">
                            <div id="chartContainer">
                                <div id="chartcontrols"></div>
                                <div id="chartdiv"></div>
                            </div>
                            <div id="actions">
                                <div class="buy-btn">
                                    <button type="button">
                                        <i class="bi bi-graph-up-arrow"></i>
                                        Buy
                                    </button>
                                </div>
                                <div class="sell-btn">
                                    <button type="button ">
                                        <i class="bi bi-graph-down-arrow"></i>
                                        Sell
                                    </button>
                                </div>
                            
                            </div>
                            
    
                        </div>
                        <div id="portfolio" > portfolio</div>
                        <div id="news">news</div>
                        <div id="ranking">ranking</div>
                        <div id="query">query</div>
                        <div id="contact">contact</div>
                        <!-- div# -->
                    </div>
                    <div id="stockList">
                        
                    </div>
                </div>
            </main>
        </div>
    </div>



    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script>
        document.getElementById("chartdiv").style.height = document.getElementById("chartContainer").clientHeight+"px";
        var showing = "mainStock";
    function changeto(e){
        // console.log(e);
        // console.log(showing);
        if(e==showing) return;
        document.getElementById(showing).classList.remove("active");
        document.getElementById(e).classList.add("active");
        showing = e;
    }
    
</script>
    <!-- am chart js -->
    <script src="https://cdn.amcharts.com/lib/5/index.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/stock.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
    <!-- <script src="chartload.js"></script> -->

    <script>
<?php include 'finalchartstock.js';?>
    </script>
</body>

</html>