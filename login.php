<html>
    <head>
        <title>Forms</title>
        <link rel="stylesheet" href="css/login1.css">
        <link rel="stylesheet" href="vendors/bootstrap/css/bootstrap.min.css">
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/login.js"></script>
    </head>
    <body style="background-color:#fda401;">
       <div id="box">
       
           <div id="main"></div>
           
            <div id="login_form">
              <img src="css/img/black-logo.png" height="200px"; width="200px";>
               <h1>Login</h1>
               <form action="pages/includes/loginfunction.php" method="POST">
                    <input type="email" placeholder="Email" name="email" required>
                    <input type="password" placeholder="Password" name="password" required><br>
                   <button type="submit">LOGIN</button>
               </form>
              
            </div>
            <div id="signup_form">
               <img src="css/img/black-logo.png" height="200px"; width="200px";>
                <h1>Sign Up</h1>
                <form action="pages/includes/signupfunction.php" method="POST">
                    <input type="text" placeholder="Name" name="username" required=""><br>
                    <input type="email" placeholder="Email" name="email" required=""><br>
                    <input type="password" placeholder="Password" name="password" required=""><br>
                    <input type="phone" placeholder="PhoneNumber" name="phone" required=""><br>
                    
<!-- 
                    <span><input type="radio" value="1" name="role">Be A Donor<br>
                    <input type="radio" value="2" name="role">Be A Volunteer<br>
                    <input type="radio" value="3" name="role">NGO<br></span>
 -->
               <button type="submit">SIGN UP</button>
            </form>
            </div>
            <div id="login_msg">Have an Account?</div>
            <div id="signup_msg">Don't have an Account?</div>
        <button id="log_button">LOGIN</button>
        <button id="signup_button">SIGN UP</button>
        </div>
        
    </body>
</html>