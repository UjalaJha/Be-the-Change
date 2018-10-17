<?php
require_once("pages/includes/functions.php");
//session_start();
//print_r($_SESSION);
//if($_SESSION['nid']==NULL)
//{
//    header("Location: index.php");
//}

$donations=getngodonations();
// print_r($donations);
?>

<html>
    <head>
        <title>blog</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i" rel="stylesheet">
    <link rel="stylesheet" href="vendors/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/assets/owl.theme.default.css">
        <link rel="stylesheet" href="vendors/OwlCarousel2-2.3.4/dist/assets/owl.theme.blue.css">
        
    
    <link href="vendors/WOW-master/dist/wow.min.js">
    <link rel="stylesheet" href="css/add-event.css">
    </head>
    <body>
        <div class="header-strip">
        <div class="dot">
        <span class="icon"><img src="img/call-answer%20(1).png" height="20px" width="20px"></span><span class="number">+88 0987654334567</span>
        <span class="icon1"><img src="img/close-envelope.png" height="20px" width="20px"></span><span class="number">info@example.com</span>
        </div>
        </div>
        <div class="clearfix"></div>
        <nav class="navbar navbar navbar-inverse" style="border-radius: 0px;height:90px;">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="container">
            <div class="navbar-header margin" style="border-radius: 0px;">
                <a class="navbar-brand" href="index.php"><img src="css/img/mylogo.png" style="margin-top:-70px;"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">

                <ul class="nav navbar-nav navbar-right change">

                    <li class="big"><a href="#" style="color:white;">HOME</a></li>
                    <?php if(empty($_SESSION['nid']))
                    {
                        ?>

                            <li><a href="#" style="color:white;">PROFILE</a></li>
                            <li><a href="#" style="color:white;">ABOUT</a></li>
                            <li><a href="pages/includes/logout.php" style="color:white;" id="logout">LOGOUT</a></li>
                        <?php

                    }
                    ?>
                   
                   
                    


                </ul>


            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>
    
    <div class="img-overlay">
        <div class="cover bg-parallax">
        <div class="overlay"></div>
          <div class="containers">
           <div class="something">
               <div class="heading">
                   <span class="blog-text">NGO PROFILE</span>
               </div>
               <div class="same-section">
                <span class="add"></span><span class="text">CHANGE IS READY FOR YOU</span>
               </div>
                
            
            
            
            
           </div>
        </div>
    </div>
<div class="clearfix"></div>
<div class="new-section">
        <div class="sidebar-container pull-left">
            <div class="box">
               <div class="content">
                <h1 class="text-center">5236</h1>
                <h2 class="text-center">Total Volunteers</h2>
                </div>
            </div>
            <div class="box">
               <div class="content">
                <h1 class="text-center">95862</h1>
                <h2 class="text-center">Donations Done</h2>
                </div>
            </div>
            <div class="box">
               <div class="content">
                <h1 class="text-center">289</h1>
                <h2 class="text-center">Total NGO's</h2>
                </div>
            </div>
            <div class="box">
               <div class="content">
                <h1 class="text-center">7264</h1>
                <h2 class="text-center">New Donations</h2>
                </div>
            </div>
            <div class="box">
               <div class="content">
                <h1 class="text-center">3294</h1>
                <h2 class="text-center">New Volunteers</h2>
                </div>
            </div>
            
        </div>
        <div class="right-container pull-left">
           <div class="right-wala">
                <div class="add-event-form">
            <div class="card-container">
           <h1>ADD EVENT</h1>
           <hr class="rule">
            <form>
                
                Name of Event : <input type="text" class="form-control" id="name"><br>
                Date of Event : <input type="date" class="form-control" id="name"><br>
                Time of Event : <input type="text" class="form-control" id="name"><br>
                Location of Event : <input type="text" class="form-control" id="name"><br>
                Description of Event : <textarea type="text" class="form-control" cols=10 rows=10></textarea><br>
                Limit of People : <input type="text" class="form-control" id="name"><br>
                <button class="btn" style="background:#fda401;border-radius:0px;color:white;float:left;">ADD EVENT</button>
                
                
                
            </form>
            </div>
                </div>
    </div>
</div>

        
       <script src="vendors/jquery/jquery-3.3.1.min.js"></script>
        <!--Bootstrap Script-->
        <script src="vendors/bootstrap/js/bootstrap.min.js"></script>
        <!--END OF CORE JS-->
        <!--Custom Js-->
        <script src="vendors/WOW-master/dist/wow.min.js"></script>
        <script src="vendors/jquery.magnific-popup.min.js"></script>
        <script src="vendors/owl.carousel.min.js"></script>
        <script src="vendors/jquery.waypoints.min.js"></script>
        <script src="vendors/jquery.counterup.min.js"></script>
        <script src="vendors/jquery-ui.min.js"></script>
        <script src="js/script.js"></script>
        
        <script>
            // Get the modal
            var modal = document.getElementById('donorModal');

            // Get the button that opens the modal
            var btn = document.getElementById("Btn Donate");

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks the button, open the modal 
            btn.onclick = function() {
                modal.style.display = "block";
            }

            // When the user clicks on <span> (x), close the modal
            span.onclick = function() {
                modal.style.display = "none";
            }

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>

        <script>
            $("form").submit(function(){
                var form_data = $(this).closest("form");
                $dnid = form_data[0]["dnid"].value;
                $amnt = form_data[1]["amnt"].value;
                    
                var data = form_data.split("&");
                console.log(form_data[0]["dnid"].value);

                //fetching all the other values from database using ajax ans loading them onto their respective edit fields!
                // console.log($eid);
                $.ajax({
                    url: "http://localhost/be-the-change/getDonations.php",
                    method:"POST",
                    data:{dnid:$dnid,amnt:$amnt},
                    dataType:"json",
                    success:function(response){
                    if(response.done==true)
                    {
                        alert("You Have Succesfullty donated for this event");
                    }else if(response.done==false){
                        alert("something went wrong1");
                    }else{
                        alert(response.done);
                    }
                    
                    },
                    error: function () {
                        alert("something went wrong 2");
                    }  
                        
                    
                });
            });
        </script>
</html>

 
    