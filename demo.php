<?php
require_once("pages/includes/functions.php");
// echo "hello";

$ngo=getngo();

$events=getngoevents();

$donations=getngodonations();


$eventsexe=geteventsexe();

$donationsexe=getdonationsexe();

$nid=3;
$eventsexe=geteventsexe($nid);

$donationsexe=getdonationsexe($nid);

// $nid=3;
// $desc='Save Old Age Homes';
// $addngoevents=addngoevent($nid,$desc);

// $nid=3;
// $damt=3000;
// $decs='COntribute for Healthy India';
// $addngodonation=addngodonation($damt,$nid,$decs);

// $eid=3;
// $vid=2;
// $op='COntribute for Healthy India';
// $addusertoevent=addusertoevent($eid,$vid);

// $did=2;
// $dnid=3;
// $amnt=1300;
// $adduserdonation=adduserdonation($dnid,$did,$amnt);



// echo "<pre>";
// print_r($ngo);
// print_r($events);
// print_r($donations);
// print_r($eventsexe);
// print_r($donationsexe);
?>