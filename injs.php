  <!-- am chart js -->
  <!-- <script src="http://localhost/globle/jq/jquery-3.6.0.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/index.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/stock.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
    <script >
      const id = 
        <?php 
        echo $_COOKIE['userId'].";\n";
        include "js/vars.js";
        //  include 'js/finalchartstock.js';
         include "js/testchart.js";
        include 'js/stocklistGenerater.js';
        include 'js/stocklistUpdater.js';
        include 'js/worker.js';
        ?>
    </script>