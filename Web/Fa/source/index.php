<?php
	include("flag.php");

	if(isset($_GET['source'])){
		highlight_file(__FILE__);
	}
    
	class africa {
		var $boknn;
		var $du;
	}
   
	if (isset($_GET['fa'])) {
		$vodoo = $_GET['fa'];
	   
		$fa = unserialize($vodoo);
	   
		if ($fa) {
			$fa->du=$flag;
		    if ($fa->du === $fa->boknn)
		        echo "Congratulation! You've got the best interpretation: <b>".$fa->du."</b>";
		    else
		        echo "Oh no...";
		}
		else echo "you dey smoke igbo?";
	}
	include("home.html");

?>

