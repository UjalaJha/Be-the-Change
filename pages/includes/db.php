<?php
require_once("constants.php");
//hello
$connection = mysqli_connect(SERVER,USER,PASSWORD,DB);
if(!$connection){
    echo "Some issue in connecting ".mysqli_error($connection);
    
}


?>