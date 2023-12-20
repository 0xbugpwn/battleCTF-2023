<?php

if (!empty($_FILES)):

$ext = pathinfo($_FILES['file_upload']['name'], PATHINFO_EXTENSION);
if (!in_array($ext, ['gif', 'png', 'jpg', 'jpeg'])) {
    die('Unsupported filetype uploaded.');
}

$new_name = __DIR__ . '/uploadfiles/' . $_FILES['file_upload']['name'];
if(!move_uploaded_file($_FILES['file_upload']['tmp_name'], $new_name)){
    die('Error uploading file - check destination is writeable.');
}


echo "<a href='/uploadfiles/{$_FILES['file_upload']['name']}'>{$_FILES['file_upload']['name']}</a>";
endif;

include("home.html");
