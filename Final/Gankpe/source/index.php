<?php

require("./flag.php");
if(isset($_GET['source'])){
    highlight_file(__FILE__);  
}

$UPLOADS = 'uploads/';
if(!empty($_FILES['uploaded_file'])) {
   $paths = scandir($UPLOADS);
   $now = time();
   foreach($paths as $path) {
       if ($path == '.') {
           continue;
       }
       $mtime = filemtime($UPLOADS . $path);
       if ($now - $mtime > 120) {
           shell_exec('rm -rf ' . $UPLOADS . $path);
       }
   }
   $path = $UPLOADS . uniqid('upl') . '/';
   if(!mkdir($path, 0777, true)) {
       die('mkdir failed');
   }
   $zip = $path . uniqid('zip');
   if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $zip)) {
       shell_exec('unzip -j -n ' . $zip . ' -d ' . $path);
       unlink($zip);
       header('Location: uploads/'. basename($path) . '/');
   } else {
       echo 'There was an error uploading the file, please try again!';
   }
}
include("home.html");
?>

