<?php
// echo "hello";
require_once("db.php");
require_once("functions.php");
session_start();

// echo "hello";


// {
    // if($role==1)
    // {
    //     $role="Donor";
    // }
    // elseif($role==2)
    // {
    //     $role="Volunteer";
    // }
    // else{
    //     $role="NGO";
    // }
    
    if($connection->connect_error){
        echo "Connection failed";
    }
    
    $stmt= $connection->prepare("INSERT INTO users (UNAME, U_EMAIL, PASSWORD, U_TYPE) VALUES (?,?,?,?);");
    $stmt->bind_param('sssi', $uname, $u_email, $password, $u_type);
    $stmt->execute();
    // print_r($stmt);
    // echo "Hello3";
    $uname=$_POST['username'];
    $u_email=$_POST['email'];
    $password=$_POST['password'];
    $u_type=$_POST['role'];
    $stmt->close();
    
    header("Location: ../../index.php");
    
?>