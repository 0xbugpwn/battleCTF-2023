<?php
session_start();

// connect to the database
$dbhost = "mysql";
$dbuser = "timing";
$dbpass = "timing";
$dbname = "timing";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

// check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // search for the user in the database
    $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) == 1) {
        // user found, redirect to the dashboard
        $_SESSION['username'] = $username;
        header("Location: dashboard.php");
        exit();
    } else {
        // user not found, display an error message
        $error = "<p style='color: red;'>Invalid username or password</p>";
    }
}
?>

<!DOCTYPE html>
<html>
  <head>
    <title>Login Page</title>
    <style>
	body {
  margin: 0;
  padding: 0;
  background: url(login.jpg) no-repeat center center fixed;
  background-size: cover;
  font-family: sans-serif;
}

.login-box {
  width: 320px;
  height: 420px;
  background: rgba(0, 0, 0, 0.5);
  color: #fff;
  top: 50%;
  left: 50%;
  position: absolute;
  transform: translate(-50%, -50%);
  box-sizing: border-box;
  padding: 70px 30px;
}

.avatar {
  width: 100px;
  height: 100px;
  border-radius: 50%;
  position: absolute;
  top: -50px;
  left: calc(50% - 50px);
}

h1 {
  margin: 0;
  padding: 0 0 20px;
  text-align: center;
  font-size: 22px;
}

.login-box p {
  margin: 0;
  padding: 0;
  font-weight: bold;
}

.login-box input {
  width: 100%;
  margin-bottom: 20px;
}

.login-box input[type="text"],
.login-box input[type="password"] {
  border: none;
  border-bottom: 1px solid #fff;
  background: transparent;
  outline: none;
  height: 40px;
  color: #fff;
  font-size: 16px;
}

.login-box input[type="submit"] {
  border: none;
  outline: none;
  height: 40px;
  background: #1c8adb;
  color: #fff;
  font-size: 18px;
  border-radius: 20px;
}

.login-box input[type="submit"]:hover {
  cursor: pointer;
  background: #39dc79;
  color: #000;
}

.login-box a {
  text-decoration: none;
  font-size: 14px;
  color: #fff;
  line-height: 20px;
}

.login-box a:hover {
  color: #39dc79;
}

   </style>
  </head>
  <body>
    <div class="login-box">
      <img src="avatar.png" class="avatar">
      <h1>Login Here</h1>
      	<?php if (isset($error)): ?>
        	<p><?php echo $error; ?></p>
    	<?php endif; ?>
      <form action="index.php" method="post" enctype="multipart/form-data">
        <br><p>Username</p>
        <input type="text" name="username" placeholder="Enter Username">
        <p>Password</p>
        <input type="password" name="password" placeholder="Enter Password">
        <input type="submit" name="" value="Login">
      </form>
    </div>
  </body>
</html>
