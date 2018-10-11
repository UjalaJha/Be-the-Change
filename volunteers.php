<?php
require_once("pages/includes/functions.php");
session_start();
if($_SESSION['vid']!=NULL)
{
    header("Location: index.php");
}


$events=getngoevents();
// echo "<pre>";
// print_r($events);
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
    <link rel="stylesheet" href="css/volunteers.css">
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

                    <li class="big"><a href="index.php" style="color:white;">HOME</a></li>
                    
                    <li><a href="login.html" style="color:white;">LOGIN</a></li>
                    
                    <li><a href="profile.html" style="color:white;">ABOUT</a></li>
                    
                    


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
                   <span class="blog-text">VOLUNTEERS</span>
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
                <h1 class="text-center">2235</h1>
                <h2 class="text-center">All Volunteers</h2>
                </div>
            </div>
            <div class="box">
               <div class="content">
                <h1 class="text-center">45895</h1>
                <h2 class="text-center">New Volunteers</h2>
                </div>
            </div>
            <div class="box">
               <div class="content">
                <h1 class="text-center">789</h1>
                <h2 class="text-center">Children Volunteers</h2>
                </div>
            </div>
            <div class="box">
               <div class="content">
                <h1 class="text-center">7264</h1>
                <h2 class="text-center">New Joinees</h2>
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
                    <img src="css/img/img3phone.jpg" height="239px" width="330px">
                    
                   
                   <div class="bottom-container">
                       
                       <p class="bold1"><?php print_r($value[2]) ?></p>
                       
                       <p class="bold2"><?php print_r($value[3]) ?></p>
                       <form action="javascript:void(0);" >
                          <span><a href="#"><button class="btn read-more">Read More</button></a></span> 
                          <input type="hidden" name="evid" id="evid" value=<?php  echo ($value[0]) ?> >
                          <input type="hidden" name="vid" id="vid" value="8">
                          <button class="btn read-more mores" type="submit">Participate</button></span> 
                        </form>
                       
                   </div>
               </div>
                <?php
              }
              ?>
            
          </div>
      </div>
</div>

<section id="testimonials" style="margin-top:-18px;">
           <div class="testimonial-cover bg-parallax">
            <div class="content-box">
                <div class="content-title wow animated fadeInDown">
                    <h3 class="text-heading text-heading-white">What Our Volunteer Say</h3>
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
        <script type="text/javascript">
           
            $("form").submit(function(){
            var form_data = $(this).closest("form");
            $eid = form_data[0]["evid"].value;
            $vid = form_data[0]["vid"].value;
            
            // var data = form_data.split("&");
            // console.log(form_data[0]["evid"].value);

            //fetching all the other values from database using ajax ans loading them onto their respective edit fields!
            // console.log($eid);
            $.ajax({
                url: "http://localhost:88/be-the-change/getResults.php",
                method:"POST",
                data:{eid:$eid,vid:$vid},
                dataType:"json",
                success:function(response){
                  if(response.done==true)
                  {
                    alert("You Have Succesfullty registered for this event");
                  }else if(response.done==false){
                    alert("something went wrong");
                  }else{
                    alert(response.done);
                  }
                  
                },
                error: function () {
                    alert("something went wrong");
                }  
                    
                
            });
        });
        </script>
        
    
    </body>
</html>
