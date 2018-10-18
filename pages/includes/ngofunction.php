<?php
require_once("db.php");
session_start();
require_once("constants.php");

$connection = mysqli_connect(SERVER,USER,PASSWORD,DB);
if(!$connection){
    echo "Some issue in connecting ".mysqli_connect_error($connection);
}

function checkQueryResult($resultset){
    global $connection;
    if(!$resultset){
        die("QUERY FAILED : ".mysqli_error($connection));
    }
    
}
function getngo(){
    global $connection;
    $nid=$_SESSION['nid'];
    $query = "SELECT * FROM ngo where nid=$nid";
    // echo $query;
    $ngo=mysqli_query($connection,$query);
    if($row=mysqli_fetch_assoc($ngo)){
        print_r($row);
    }

}