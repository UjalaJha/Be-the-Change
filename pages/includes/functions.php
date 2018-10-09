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

function geteventsexe($nid=null,$vid=null){
    global $connection;
    $query = "SELECT * FROM ngoeventspartcpn";
    do{
        
        if(!empty($nid)&&isset($nid)&&!empty($vid)&&isset($vid))
        {
            $query = $query." where VID=$vid and EID=(SELECT EID FROM ngoevents where NID=$nid)";
            break;  
        }elseif(!empty($vid)&&isset($vid))
        {
            $query = $query." where VID=$vid";  
            break;
        }elseif(!empty($nid)&&isset($nid)){
            $query = $query. " where EID=(SELECT EID FROM ngoevents where NID=$nid)";
            break;
        }
    }while(0);
    // print_r($query);
    $ngo=mysqli_query($connection,$query);
    if($row=mysqli_fetch_all($ngo)){
        return($row);
    }
}
function getdonationsexe($nid=null,$did=null){
    global $connection;
    $query = "SELECT * FROM donationtransaction";
    do{
        if(!empty($nid)&&isset($nid)&&!empty($did)&&isset($did))
        {
            $query = $query." where DID=$did and DNID=(SELECT DNID FROM donations where NID=$nid)";
            break;  
        }
        elseif(!empty($did)&&isset($did))
        {
            $query = $query." where DID=$did"; 
            break; 
        }elseif(!empty($nid)&&isset($nid)){
            $query = $query. " where DNID=(SELECT DNID FROM donations where NID=$nid)";
            break;
        }
        
    }while(0);
    // echo "<br>";
    // print_r($query);
    $ngo=mysqli_query($connection,$query);
    if($row=mysqli_fetch_all($ngo)){
        return($row);
    }
}
?>