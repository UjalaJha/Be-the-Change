<?php
session_start();
$phone_number = $_SESSION["phone_number"];
$random_number = rand(1000,9999);
$_POST["random_number"] = $random_number;
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://api.msg91.com/api/sendhttp.php?country=91&sender=CHANGE&route=4&mobiles=".$phone_number."&authkey=242769ABa2cfCGg5bc34724&message=The otp is ".$random_number,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_SSL_VERIFYHOST => 0,
  CURLOPT_SSL_VERIFYPEER => 0,
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);



?>

   <html>
    <head>
        <link rel="stylesheet" href="vendors/bootstrap/css/bootstrap.min.css">
    </head>
    <body>
       <div class="container col-md-4">
            <form action="pages/includes/checkOtp.php" method="post">
                <label>OTP</label>
                <input type="text" value="<?php echo $random_number?>" hidden name="otp">
                <input type="text" class="form-control" placeholder="Enter OTP" name="enteredOtp"><br>
                <button type="submit" class="btn btn-primary">SUBMIT</button>
            </form>
        </div>
    </body>
</html>