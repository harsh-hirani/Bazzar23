<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Permissions-Policy"content="interest-cohort=()" >
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <style>
            <?php
    include "css/layout.css";
    include "css/sidebar.css";
    include "css/style.css";
    include "css/buttons.css";
    include "css/stocklist.css";
    include "css/ranking.css"
    ?>
        #chartcontrols {
  height: auto;
  padding: 5px 5px 0 16px;
  max-width: 100%;
    }</style>
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
                       <?php include 'sidebar.php';?>
                    </div>

                    <div id="info">
                    </div>
                    <div id="chart">
                        <div id="mainStock" class="active">
                           <?php include 'graph.php';?>

                        </div>
                        <div id="portfolio">
                           <?php include 'portfolio.php';?>
                        </div>
                        <div id="news">news</div>
                        <div id="ranking">
                            <?php include 'ranking.php';?>
                        </div>
                        <div id="query">
                            <?php include 'query.php';?>
                        </div>
                        <div id="contact" class="contact">
                            <div class="contact-div hidden">
                                <div class="heading">
                                    <h1>CONTACT <span>ME</span> </h1>
                                </div>
                                <div class="info">
                                    <label for="name">Name</label><br>
                                    <input type="text" name="name" id="name" placeholder="Enter your Name..."><br>
                                    <label for="email">Email</label><br>
                                    <input type="email" name="email" id="email" placeholder="name@gmail.com...">
                                    <br>
                                    <label for="msg">Massage</label>
                                    <br>
                                    <textarea name="msg" id="msg" cols="30" rows="5"
                                        placeholder="Enter Your Massage Here..."></textarea>
                                    <br>
                                    <button class='glowing-btn'><span class='glowing-txt'>SU<span
                                                class='faulty-letter'>B</span>MIT</span></button>
                                </div>
                            </div>
                        </div>
                        <!-- div# -->
                    </div>
                    <div id="stockList" class="stocks">
                     <?php include 'stocklist.php';?>
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
        if(window.innerWidth > 768){
            document.getElementById("chartdiv").style.height = (document.getElementById("chartContainer").clientHeight - 30)+"px";
        } else{
            document.getElementById("chartdiv").style.height = 300+"px";

        }
        var orignal = document.getElementsByClassName('orignal');
        let cvalue = 1;

        const change = () =>{
            orignal.classList.remove('active');
            event.target.classList.add('active');
            cvalue = event.target.value;
        }




        var open = document.getElementById("open");
        var close = document.getElementById("close");
        var menu = document.getElementById("menu");
        var sidebar = document.getElementById('sidebar');
        var links = document.getElementById('links');
        const extent = () => {
            sidebar.style.height = "auto";
            links.style.transform = `translateY(${0}vh)`;
            open.style.right = -100 + "px";
            close.style.right = -35 + "px";
            links.style.transition = "transform 0.3s ease";
        }

        const srink = () => {
            sidebar.style.height = 10 + "vh";
            open.style.right = -35 + "px";
            close.style.right = -100 + "px";
            links.style.transform = "translateY(-100vh)";
        }



    </script>
  <?php

  include 'injs.php';
  ?>
</body>

</html>