<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<style>
		body {
	font-family: Arial, sans-serif;
}

header {
	background-color: #333;
	color: #fff;
	padding: 20px;
}

nav {
	background-color: #eee;
	padding: 10px;
}

nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

nav li {
	display: inline-block;
	margin-right: 10px;
}

nav a {
	color: #333;
	text-decoration: none;
	padding: 5px;
}

section {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.widget {
	background-color: #fff;
	border: 1px solid #ccc;
	box-shadow: 1px 1px 3px #ccc;
	margin: 10px;
	padding: 10px;
	width: 300px;
}

.widget h2 {
	margin-top: 0;
}

.chart {
	height: 200px;
}

.table {
	height: 200px;
	overflow: auto;
}

	</style>
</head>
<body>
	<header>
		<h1>Dashboard</h1>
	</header>
	<nav>
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#">Products</a></li>
			<li><a href="#">Sales</a></li>
			<li><a href="#">Customers</a></li>
		</ul>
	</nav>
	<section>
		<div class="widget">
			<h2>Product Sales</h2>
			<div class="chart">
				<!-- Add chart code here -->
			</div>
		</div>
		<div class="widget">
			<h2>Customer Satisfaction</h2>
			<div class="table">
				<!-- Add table code here -->
			</div>
		</div>
	</section>
	<footer>
		<p>&copy; 2023 Dashboard Co.</p>
	</footer>
</body>
</html>
