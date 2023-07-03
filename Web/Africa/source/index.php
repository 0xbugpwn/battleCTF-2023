<?php
$flag = 'battleCTF{Control_1s_A_1!!u510n_dd14a23ccc847ec718482f4e4903a2aes}';
function getIP()
{
	if (@$_SERVER["HTTP_X_FORWARDED_FOR"]){
		$ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
	}else if (@$_SERVER["HTTP_CLIENT_IP"]){
		$ip = $_SERVER["HTTP_CLIENT_IP"];
	}else if (@$_SERVER["REMOTE_ADDR"]){
		$ip = $_SERVER["REMOTE_ADDR"];
	}else if (@getenv("HTTP_X_FORWARDED_FOR")){
		$ip = getenv("HTTP_X_FORWARDED_FOR");
	}else if (@getenv("HTTP_CLIENT_IP")){
		$ip = getenv("HTTP_CLIENT_IP");
	}else if (@getenv("REMOTE_ADDR")){
		$ip = getenv("REMOTE_ADDR");
	}else{
		$ip = "you dey smoke igbo?";
	}
	return $ip;
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Welcome to Africa</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		body {
			background-image: url("ami.jpg");
			background-size: cover;
			background-position: center center;
			font-family: Arial, sans-serif;
			color: #fff;
			margin: 0;
			padding: 0;
			height: 100vh;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
		h1 {
			font-size: 5rem;
			margin: 0;
			text-align: center;
			text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.6);
		}
		p {
			font-size: 1.5rem;
			margin: 1rem 0;
			text-align: center;
			text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.6);
		}
      .container {
        max-width: 800px;
        margin: 0 auto;
        text-align: center;
        padding: 50px;
        background-color: rgba(0, 0, 0, 0.5);
      }
      
	</style>
</head>
<body>
	<h1>Welcome to Africa</h1>
	<p>Discover the beauty of the continent</p>
  <body>
    <div class="container">
      <p>Africa is the world's second-largest and second-most populous continent, located primarily in the eastern hemisphere. It is rich in natural resources, with diverse cultures and languages that make it one of the most unique places on earth. From the Sahara Desert to the savannas, rainforests, and coastal areas, Africa is home to a variety of flora and fauna, including the "Big Five" game animals. Despite its many challenges, Africa is a continent with great potential for growth and development, and its people are resilient, resourceful, and proud of their heritage.</p>
      <br>
      <?php
      	if ($_SERVER['HTTP_USER_AGENT'] != "africa"){
		die("Warning: This site is only for africa people.");
		}
		if (getIP() != "127.0.0.1"){
			die("Warning: Go away! Attacker! This page is only for local client!");
		}
		if ($_SERVER['REMOTE_PORT'] != 5460){
			//die("Only port 5460 is allowed!");
		}
		if ( !isset($_SERVER['HTTP_REFERER']) || $_SERVER['HTTP_REFERER'] != "battlectf.online"){
			die("Warning: I don't trust users who are not from battlectf.online");
		}
		if (!isset($_SERVER['HTTP_DNT']) || $_SERVER['HTTP_DNT'] != 1){
			die("Warning: you can be tracked, we don't trust you.");
		}
		echo $flag;
      ?>
    </div>
</body>
</html>
