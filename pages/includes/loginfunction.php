<?php
require_once("db.php");
require_once("functions.php");
session_start();
if(isset($_POST["submit"]))
{
    $username=$_POST['username'];
    $password=$_POST['password'];
    
    $username=mysqli_real_escape_string($connection,$username);
    $password=mysqli_real_escape_string($connection,$password);
    
    $query="SELECT * FROM users WHERE U_EMAIL = '$username'";
    
    $select_user_details = mysqli_query($connection,$query);
    
//    proceed if there is data returned otherwise there would be errors
    
    checkQueryResult($select_user_details);
    
    if(mysqli_num_rows($select_user_details)>1){
        die("ERROR 2");
//        later we would create a error wala page
//        and will print the error in user friendly manner
//        header();
        
    }
//    if i m coming here that means i have exactly 0/1 row!
//    $db_password="";
    
    if($row=mysqli_fetch_assoc($select_user_details)){
//        i have 1 row
        $db_password = $row['UPASSWORD'];
        $employee_id = $row['UID'];
        
    }
    else
    {
        $db_password="";
        
    }
    if(password_verify($password,$db_password)){
        $_SESSION['UID']=$uid;
        header("Location: ../login.php");
    }
    else{
        die("ERROR 2");
        
    }
    
}
?>