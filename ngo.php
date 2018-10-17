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
    <link rel="stylesheet" href="css/ngo.css">
    <style>
    .pricing-box{
    text-align: center;
    border:solid 3px #fda401;
    
    margin:40px 0;
}
h4.pricing-title{
    background-color: #fda401;
    color:#fff;
    display: inline-block;
    padding: 7px 15px;
    font-size: 14px;
    font-weight: 700;
    text-transform: uppercase;
    margin: 0 0 30px;
}
h3.pricing-value{
    font-size:60px;
    font-weight: 700;
}
h3.pricing-value sup{
    font-size: 28px;
    font-weight: 400;
    vertical-align: super;
}
ul.pricing-spec{
    list-style: none;
    padding-left: 0;
    margin: 20px 0 60px;
}
ul.pricing-spec li p{
    font-weight: 400;
    text-transform: uppercase;
    font-size:16px;
}
.pricing-box-lg{
    padding: 90px 0;
    margin: 0;
    background-color: #fda401;
    
}
.pricing-box-lg h4.pricing-title{
    color:#fda401;
    background-color: #fff;
}
.pricing-box-lg ul.pricing-spec li p{
    color:#fff;
}
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
              
               <h1 style="font-family:roboto;text-align:center;">NGO PROFILE</h1>
               <hr style="background:#fda401;width:100px;height:5px;border-radius:25px;">
               <div class="description-section" style="border:2px solid #fda401;padding:10px;">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, amet dicta eos id odit? Ipsam culpa ex, quo iusto vero repudiandae labore veritatis, adipisci, natus, fugit officiis aperiam. Totam, blanditiis Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi numquam, maxime beatae nulla totam 
                    ipsum sed. Nisi eos ducimus laboriosam cumque officiis, deserunt modi blanditiis a veritatis, iusto ut magni Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi ab in voluptatum quidem amet quisquam blanditiis, ratione aliquam, ipsum quia reprehenderit quae delectus, eius quibusdam sequi incidunt commodi at cum Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam consectetur eaque at praesentium vitae veniam, est voluptates, corporis porro fugiat sunt tenetur, ad eius. Ratione ipsam, ex doloribus deleniti enim!</p>
               </div>
               <section id="pricing">
            <div class="content-box">
                <div class="content-title wow animated fadeInDown" data-wow-duration="1s" data-wow-delay=".3s">
                    
                    <div class="content-title-underline"></div>
                </div>
                <div class="container">
                    <div class="row" style="margin-left:10%;">
                        <div class="col-md-5 animated wow zoomIn" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="pricing-box">
                                
                                <h3 class="pricings" style="background:#fda401;width:100%;height:50px;color:white;margin-top:0%;padding:10px;">NGO EVENT</h3>
                                <ul class="pricing-spec">
                                    <li>
                                        <p>200 Events Achiveved</p>
                                    </li>
                                    <li>
                                        <p>750 Events Ongoing</p>
                                    </li>
                                    
                                </ul> 
                                <div class="pricing-btn">
                                    <a href="#" role="button" class="btn btn-lg btn-general btn-blue">Purchase</a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-5 animated wow zoomIn" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="pricing-box">
                                
                                <h3 class="pricings" style="background:#fda401;width:100%;height:50px;color:white;margin-top:0%;padding:10px;">NGO DONATION</h3>
                                <ul class="pricing-spec">
                                    <li>
                                        <p>200 Donations Achiveved</p>
                                    </li>
                                    <li>
                                        <p>750 Donations Ongoing</p>
                                    </li>
                                    
                                </ul> 
                                <div class="pricing-btn">
                                    <a href="#" role="button" class="btn btn-lg btn-general btn-blue">Purchase</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
            </div>
        </section>
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

 
    