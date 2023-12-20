<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>URL Fetcher</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 400px;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        #result {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f7f7f7;
            word-wrap: break-word;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>URL Fetcher</h1>
        <form method="GET" action="">
            <input type="text" name="url" placeholder="Enter URL">
            <button type="submit">Fetch</button>
        </form>
    </div>
    <?php
    if(isset($_GET['url'])) {
        $curlVar = curl_init();
        curl_setopt($curlVar, CURLOPT_URL, $_GET['url']);
        curl_setopt($curlVar, CURLOPT_HEADER, 0);
        curl_exec($curlVar);
        curl_close($curlVar);
    }
	?>

</body>
</html>
