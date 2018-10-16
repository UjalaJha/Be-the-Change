<?php
//echo "hello";
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
    
    // print_r($stmt);
    // echo "Hello3";
    $uname=$_POST['username'];
    $u_email=$_POST['email'];
    $password=$_POST['password'];
    $u_phone = $_POST['phone'];
    
    
    $stmt= $connection->prepare("INSERT INTO users (UNAME, U_EMAIL, PASSWORD,U_PHONE) VALUES (?,?,?,?);");
    $stmt->bind_param('sssi', $uname, $u_email, $password,$u_phone);
    $stmt->execute();
    $stmt->close();

    $sql = "SELECT UID FROM users where U_EMAIL = '$u_email' and PASSWORD = '$password'";
    $result = $connection->query($sql);

    if ($result->num_rows == 1) 
    {
        // output data of each row
        if($role==1)
        {
            $_SESSION['did'] = $uid;
            $_SESSION['vid'] = NULL;
            $_SESSION['nid'] = NULL;
            $_SESSION['uname'] = $uname;
            header("Location: ../../donors.php");
        }
        elseif($role==2)
        {
            $_SESSION['did'] = NULL;
            $_SESSION['vid'] = $uid;
            $_SESSION['nid'] = NULL;
            $_SESSION['uname'] = $uname;
            header("Location: ../../volunteers.php");
        }
        else{
            $_SESSION['did'] = NULL;
            $_SESSION['vid'] = NULL;
            $_SESSION['nid'] = $uid;
            $_SESSION['uname'] = $uname;
            header("Location: ../../index.php");
        }
    }

    header("Location: ../../index.php");
    
?>