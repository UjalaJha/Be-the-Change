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
function addusertoevent($eid,$vid){
    global $connection;
    $query = "INSERT INTO  ngoeventspartcpn (EID,VID) VALUES ($eid,$vid)";
    $resultset = mysqli_query($connection,$query);
    checkQueryResult($resultset);
    return $resultset;
}
function adduserdonation($dnid,$did,$amnt){
    global $connection;
    $query = "INSERT INTO  donationtransaction (DNID,DID,AMOUNT) VALUES ($dnid,$did,$amnt)";
    $resultset = mysqli_query($connection,$query);
    checkQueryResult($resultset);
    return $resultset;
}
function getdonationsexe($nid=null){
    global $connection;
    $query = "SELECT * FROM donationtransaction";
    if(!empty($nid))
    {
        $query = " where DNID=(SELECT EID FROM donations where NID=$nid);";  
    }
    $ngo=mysqli_query($connection,$query);
    if($row=mysqli_fetch_all($ngo)){
        return($row);
    }
}
function geteventsexe($nid=null){
    global $connection;
    $query = "SELECT * FROM ngoeventspartcpn";
    if(!empty($nid))
    {
        $query = " where EID=(SELECT EID FROM ngoevents where NID=$nid);";  
    }
    print_r($query);
    echo "\n\n\n";
    $ngo=mysqli_query($connection,$query);
    print_r($ngo);
    if($row=mysqli_fetch_all($ngo)){
        return($row);
    }
}
?>