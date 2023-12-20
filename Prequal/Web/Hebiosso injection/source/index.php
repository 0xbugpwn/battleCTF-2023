<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500" rel="stylesheet" />
    <style>
      body {
        font-family: Arial, sans-serif;
        background: url('ami.jpg') no-repeat center center fixed;
        background-size: cover;
        color: #fff;
      }
      .s129 {
        min-height: 50vh;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-pack: center;
            justify-content: center;
        -ms-flex-align: center;
            align-items: center;
        font-family: 'Montserrat', sans-serif;
        background-size: cover;
        background-position: center center;
        padding: 15px;
      }

      .s129 form {
        width: 100%;
        max-width: 390px;
      }

      .s129 form .inner-form {
        width: 100%;
      }

      .s129 form .inner-form .input-field {
        height: 80px;
        width: 100%;
        position: relative;
      }

      .s129 form .inner-form .input-field input {
        height: 100%;
        width: 100%;
        background: transparent;
        border: 0;
        border-bottom: 2px solid rgba(255, 255, 255, 0.5);
        display: block;
        width: 100%;
        padding: 10px 32px 10px 70px;
        font-size: 18px;
        color: #fff;
        transition: all .2s ease-out, color .2s ease-out;
      }

      .s129 form .inner-form .input-field input.placeholder {
        color: #fff;
        font-size: 18px;
      }

      .s129 form .inner-form .input-field input:-moz-placeholder {
        color: #fff;
        font-size: 18px;
      }

      .s129 form .inner-form .input-field input::-webkit-input-placeholder {
        color: #fff;
        font-size: 18px;
      }

      .s129 form .inner-form .input-field input:hover, .s129 form .inner-form .input-field input:focus {
        box-shadow: none;
        outline: 0;
        border-bottom-color: #fff;
      }

      .s129 form .inner-form .input-field .btn-search {
        width: 70px;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
            align-items: center;
        position: absolute;
        left: 0;
        height: 100%;
        background: transparent;
        border: 0;
        padding: 0;
        cursor: pointer;
      }

      .s129 form .inner-form .input-field .btn-search svg {
        fill: #fff;
        width: 50px;
        height: 50px;
      }

      .s129 form .inner-form .input-field .btn-search:hover, .s129 form .inner-form .input-field .btn-search:focus {
        outline: 0;
        box-shadow: none;
      }

      @media screen and (max-width: 767px) {
        .s129 form .inner-form .input-field {
          margin-bottom: 20px;
          height: 50px;
        }
        .s129 form .inner-form .input-field input {
          padding-left: 45px;
          font-size: 16px;
        }
        .s129 form .inner-form .input-field .btn-search svg {
          width: 36px;
          height: 36px;
        }
      }
      .displ{
        width:100%;
        height:300px;
        overflow:auto; 
      }
      .displ table{
        margin: 0 auto;
        width: 70%;
      }
      .displ table th{
        color:rgb(84, 84, 233);
      }
      .displ table td{
        text-align: center;
      }
      .displ table tr{
        font-size: 20px;
      }
    </style>
  </head>
  <body>
    <div class="s129">
      <form action="index.php" method="post" enctype="multipart/form-data">
        <div class="inner-form">
          <div class="input-field">
            <button class="btn-search" type="button">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
              </svg>
            </button>
            <input id="search" name="query" type="text" placeholder="What are you looking for?" />
          </div>
        </div>
      </form>
    </div>
    <div class="displ">
      	<?php
		// Check if a search query was submitted
		if (isset($_POST['query']) && !empty($_POST['query'])) {
			
			// Replace the database credentials with your own
			$host = 'mysql';
			$dbname = 'hebiosso';
			$username = 'hebiosso';
			$password = 'hebiosso';

			$db = mysqli_connect($host, $username, $password, $dbname);
			$name = $_POST['query'];
			$sql = "SELECT * FROM african_musician WHERE name LIKE '%" . $name . "%'";

			$results = mysqli_query($db, $sql);
			mysqli_close($db);
			echo "<table>";
			echo " <tr>";
			echo "  <th>Name</th>";
			echo "  <th>Country</th>";
			echo "  <th>Genre</th>";
			echo "  <th>Birth Year</th>";
			echo 	"</tr>";
		
			foreach($results as $result) {
				echo "<tr>";
				echo "<td>" . $result['name'] . "</td>";
				echo "<td>" . $result['country'] . "</td>";
				echo "<td>" . $result['genre'] . "</td>";
				echo "<td>" . $result['birth_year'] . "</td>";
				echo "</tr>";
			}
					
				echo "</table>";
			
		}
		?>

    </div>
    
  </body>
</html>
