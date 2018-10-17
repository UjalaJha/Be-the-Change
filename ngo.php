<?php
require_once("pages/includes/functions.php");
session_start();
print_r($_SESSION);
if($_SESSION['nid']==NULL)
{
    header("Location: index.php");
}

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
    </div>
<div class="clearfix"></div>
<div class="new-section">
        <div class="sidebar-container pull-left">
            <div class="box">
               <div class="content">
                <h1 class="text-center">5236</h1>
                <h2 class="text-center">Volunteer Registered</h2>
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
            foreach($donations as $key =>$value)
            {
             // print_r($value[3]);
            
            ?>

            <div class="first1">
                              
                            <img src="css/img/pic5.jpg" height="239px" width="330px">
                                
                               
                            <div class="bottom-container">
                                   
                                   <p class="bold1"><?php print_r($value[3]) ?></p>
                                   
                                   <p class="bold2"><?php print_r($value[4]) ?></p>
                            
                                    <form action="javascript:void(0);" >
                                    <span><a href="#"><button class="btn read-more">Read More</button></a></span> 
                                    <input type="hidden" name="dnid" id="dnid" value=<?php  echo ($value[0]) ?> >
                                    <input type="hidden" name="amnt" id="amnt" placeholder = "Enter amount"> 
                                    <button class="btn read-more mores" id="Btn Donate" type="submit">Existing Event</button></span> 
                                    </form>
                                

                                   <!-- Trigger/Open The Modal -->
                                   <!-- <button class="btn read-more mores" id="Btn Donate">Donate</button> -->
                                    <!-- The Modal -->
                                    <div id="donorModal" class="modal-main">

                                    <!-- Modal content -->
                                    <div class="modal-content">
                                        <span class="close">&times;</span>
                                        <p class="bold1"><?php print_r($value[3]) ?></p>
                                        
                                        <form action="" method="POST">
                                            <input type="text" name="amnt"> Amount to be donated <br />
                                            <button class="btn pay" type="submit">Contribute</button>
                                        </form>
                                    </div>
                                    </div>
                                   </span>
                               </div>
                           </div>
                           <?php
                            }
                         ?>
                           
                        <div class="clearfix"></div>
        </div>
    </div>
</div>
<section id="testimonials" style="margin-top:-18px;">
           <div class="testimonial-cover bg-parallax">
            <div class="content-box">
                <div class="content-title wow animated fadeInDown">
                    <h3 class="text-heading text-heading-white">What Our Customer Say</h3>
                    <div class="content-title-underline"></div>
                    
                </div>
                <div class="container">
                    <div class="row wow animated fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                        
                    <div class="col-md-12">
                            
                            
                     <div class="customer-testimonials owl-carousel owl-theme">
                               <div class="testimonial">
                                <img src="css/img/client/client-3.jpg" class="img-responsive img-circle">
                                <blockquote>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, nostrum, laborum facilis eveniet iste, ducimus harum quasi officiis suscipit molestiae placeat enim ut saepe at architecto illo aperiam officia tempore</p>
                                </blockquote>
                                <div class="testimonial-author">
                                   <p>
                                       <strong>Sara Smith</strong>
                                       <span>CEO &amp; Founder-Microsoft</span>
                                   </p> 
                                </div>
                            </div>
                            <div class="testimonial">
                                <img src="css/img/client/client-2.jpg" class="img-responsive img-circle">
                                <blockquote>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, nostrum, laborum facilis eveniet iste, ducimus harum quasi officiis suscipit molestiae placeat enim ut saepe at architecto illo aperiam officia tempore</p>
                                </blockquote>
                                <div class="testimonial-author">
                                   <p>
                                       <strong>Sara Smith</strong>
                                       <span>CEO &amp; Founder-Microsoft</span>
                                   </p> 
                                </div>
                            </div>
                            <div class="testimonial">
                                <img src="css/img/client/client-1.jpg" class="img-responsive img-circle">
                                <blockquote>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, nostrum, laborum facilis eveniet iste, ducimus harum quasi officiis suscipit molestiae placeat enim ut saepe at architecto illo aperiam officia tempore</p>
                                </blockquote>
                                <div class="testimonial-author">
                                   <p>
                                       <strong>Sara Smith</strong>
                                       <span>CEO &amp; Founder-Microsoft</span>
                                   </p> 
                                </div>
                            </div>
                            </div>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
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
        
 
    </body>
</html>