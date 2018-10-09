<?php
echo "hello";
require_once("db.php");
require_once("functions.php");
session_start();
if(!empty($_POST["email"]))
{
    echo "hello";
    $email=$_POST['email'];
    $password=$_POST['password'];
    
    $email=mysqli_real_escape_string($connection,$email);
    $password=mysqli_real_escape_string($connection,$password);
    
    $query="SELECT * FROM users WHERE U_EMAIL = '$email' and PASSWORD = '$password'";
    // print_r($query);
    // exit;

    $select_user_details = mysqli_query($connection,$query);
    
//    proceed if there is data returned otherwise there would be errors

    checkQueryResult($select_user_details);
    // print_r($select_user_details);
    // exit;

    if(mysqli_num_rows($select_user_details)>1){
        die("ERROR 2");
        //not valid if same email exists for mmore than 1 account
    }

    if($row=mysqli_fetch_assoc($select_user_details)){
//        i have 1 row
        $db_password = $row['PASSWORD'];
        $uid = $row['UID'];
        $_SESSION['UID']=$uid;
        header("Location: ../../index.php");
    }
    else
    {
        $db_password="";
       header("Location: ../../login.html");
    }
}
?>