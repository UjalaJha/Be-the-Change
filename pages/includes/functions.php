<?php
require_once("db.php");
require_once("constants.php");
function checkQueryResult($resultset){
    global $connection;
    if(!$resultset){
        die("QUERY FAILED : ".mysqli_error($connection));
    }
    
}
function getNGO(){
    global $connection;
    $query = "SELECT * FROM ngo";
    $ngo=mysqli_query($connection,$query);
    if($row=mysqli_fetch_all($ngo)){
        return($row);
    }
}

?>