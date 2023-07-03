<!DOCTYPE html>
<html>
<head>
	<title>User Search</title>
	<style>
		body {
			font-family: Arial, sans-serif;
		}
		h1 {
			text-align: center;
		}
		form {
			margin: 20px auto;
			max-width: 500px;
			padding: 20px;
			border: 2px solid #ddd;
			border-radius: 10px;
		}
		input[type="text"] {
			padding: 10px;
			font-size: 16px;
			border-radius: 5px;
			border: 1px solid #ddd;
			width: 100%;
			margin-bottom: 10px;
			box-sizing: border-box;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			font-size: 16px;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}
		table {
			border-collapse: collapse;
			width: 100%;
		}
		th, td {
			text-align: left;
			padding: 8px;
		}
		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		th {
			background-color: #4CAF50;
			color: white;
		}
	</style>
</head>
<body>
	<h1>User Search</h1>
	<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
		<label for="search">Search:</label>
		<input type="text" name="search" id="search">
		<input type="submit" value="Submit">
	</form>
	<?php
	// Database connection settings
	$host = "mysql";
	$username = "weakness";
	$password = "weakness";
	$dbname = "weakness";
	
	function   filter($str){
        $black_list = array("union", "select", "from", "UNION", "SELECT", "FROM");
        foreach ($black_list as $key) {
            $str = str_replace($key, "", $str);
        }
        return $str;
	}

	// Establishing database connection
	$conn = mysqli_connect($host, $username, $password, $dbname);

	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	// Initialize variables
	$search = "";

	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		$search = filter($_POST["search"]);

		// SQL query
		$sql = "SELECT * FROM users_6711f799eb9198afaba01c3218d1f7fd WHERE username='$search'";

		// Execute query
		$result = mysqli_query($conn, $sql);

		// Check if any results found
		if (mysqli_num_rows($result) > 0) {
			// Display results in HTML table
			echo "<table>";
			echo "<tr><th>Username</th><th>Email</th></tr>";
			while ($row = mysqli_fetch_assoc($result)) {
				echo "<tr><td>" . $row["username"] . "</td><td>" . $row["email"] . "</td></tr>";
			}
			echo "</table>";
		} else {
			echo "No results found.";
		}
	}

	// Close database connection
	mysqli_close($conn);
	?>
</body>
</html>
