<?php
require("./flag.php");
if(isset($_GET['source'])){
    highlight_file(__FILE__);  
}
if(isset($_GET['ami'])){
    $input = $_GET['ami'];
    $cigar = 'africacradlecivilization';
    if (preg_replace("/$cigar/",'',$input) === $cigar) {
        africa();
    }
}
include("home.html");
?>

