<?php

if (!empty($_FILES)):
$ext = pathinfo($_FILES['file_upload']['name'], PATHINFO_EXTENSION);
if (in_array($ext, ['php'])) {
    die('Unsupported filetype uploaded.');
}

move_uploaded_file($_FILES['file_upload']['tmp_name'], './upload/' . $_FILES['file_upload']['name']);
echo "<a href='/upload/{$_FILES['file_upload']['name']}'>{$_FILES['file_upload']['name']}</a>";

endif;

include("home.html");
?>

