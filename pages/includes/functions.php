<?php
require_once("db.php");
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
    $query = "SELECT * FROM ngo";
    $ngo=mysqli_query($connection,$query);
    if($row=mysqli_fetch_all($ngo)){
        return($row);
    }
}
function getngoevents(){
    global $connection;
    $query = "SELECT * FROM ngoevents";
    $ngo=mysqli_query($connection,$query);
    if($row=mysqli_fetch_all($ngo)){
        return($row);
    }
}
function getngodonations(){
    global $connection;
    $query = "SELECT * FROM donations";
    $ngo=mysqli_query($connection,$query);
    if($row=mysqli_fetch_all($ngo)){
        return($row);
    }
}

function addngoevent($nid,$desc){
    global $connection;
    $query = "INSERT INTO ngoevents (NID, E_DESCRIPTION) VALUES ($nid,'$desc')";
    $resultset = mysqli_query($connection,$query);
    checkQueryResult($resultset);
    return $resultset;
}

function addngodonation($damt,$nid,$decs){
    global $connection;
    $query = "INSERT INTO donations (DAMOUNT, NID, D_DESCRIPTION) VALUES ($damt,$nid,'$decs')";
    $resultset = mysqli_query($connection,$query);
    checkQueryResult($resultset);
    return $resultset;
}
?>