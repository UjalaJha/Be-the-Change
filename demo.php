<?php
require_once("pages/includes/functions.php");
echo "hello";

$ngo=getngo();

$events=getngoevents();

$donations=getngodonations();

// $nid=3;
// $desc='Save Old Age Homes';
// $addngoevents=addngoevent($nid,$desc);

// $nid=3;
// $damt=3000;
// $decs='COntribute for Healthy India';
// $addngoevents=addngodonation($damt,$nid,$decs);




echo "<pre>";
print_r($ngo);
print_r($events);
print_r($donations);
?>