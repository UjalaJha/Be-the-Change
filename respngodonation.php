<?php
require_once("pages/includes/functions.php");
session_start();
// print_r($_SESSION);
$nid=$_SESSION['nid'];
if($_SESSION['nid']==NULL)
{
    header("Location: index.php");
}

$events=ngodonations($nid);
// echo "<pre>";
// print_r($events);
// exit;
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
    <link rel="stylesheet" href="css/ngo1.css">
    <style>
   
</style>
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
                    <?php if(!empty($_SESSION['nid']))
                    {
                        ?>

                            <li><a href="profile.php" style="color:white;">PROFILE</a></li>
                            <li><a href="about.html" style="color:white;">ABOUT</a></li>
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
              
           <?php 
              foreach ($events as $key => $value) {
                // print_r($value[2]);
                ?>
                <div class="first1">          
                    <!-- <img src="css/img/img3phone.jpg" height="239px" width="330px"> -->
                   <!-- <div class="mapouter"><div class="gmap_canvas"><iframe width="330" height="239" id="gmap_canvas" src="https://maps.google.com/maps?q=.'<?php print_r($value[4]) ?>'.&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.pureblack.de">webdesign agentur</a></div><style>.mapouter{text-align:right;height:239px;width:330px;}.gmap_canvas {overflow:hidden;background:none!important;height:239px;width:330px;}</style></div>  -->
                    <img src="css/img/pic5.jpg" height="239px" width="330px">
                   
                   <div class="bottom-container">
                       
                       <p class="bold1"><?php print_r($value[4]) ?></p>
                       
                       <p class="bold2"><?php print_r($value[5]) ?></p>
                       
                        <?php 
                             if($value[7]==1){
                        ?>
                            <span><a href="#"><label class="btn read-more">Ongoing donation</label></a></span> 
                        <?php
                            }
                            else{
                        ?>
                            <span><a href="#"><label class="btn read-more">Donation successful</label></a></span> 
                        <?php
                            }
                        ?>
                   </div>
               </div>
                <?php
              }
              ?>
            
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
        
    </body>    
        
</html>

 
    