from flask import *

app = Flask(__name__)

@app.route("/")
def home():
	cobalt = "<p>The Democratic Republic of the Congo produces an estimated 70% of the world's cobalt, and most of it comes from the city of Kolwezi. Cobalt is an indispensable element for the manufacture of strategic technologies including advanced batteries, jet engines, rare-earth permanent magnets, petroleum catalysts, and tool parts that enable construction, manufacturing, and mining.</p>"
	capital = request.args.get('capital')
	if capital is None: tmp="<h3>Guess the African Country Capital</h3>"
	elif capital.lower() == "kinshasa": tmp=f"<h3> You won, the Country is Democratic Republic of the Congo, also known as Congo-Kinshasa and its Capital is {capital.capitalize()}.</h3><br> {cobalt}"
	else:tmp=f"<h3>Oh no, Try again: {capital}</h3>"
        
	template = '''<!DOCTYPE html><html>
	  <head>
		<title>Guess the African Country Capital</title>
		<style>
		  body {
			background-image:  url({{ url_for('static', filename='country.jpg') }});
			background-position: center;
			font-family: Arial, sans-serif;
			color: #fff;
		  }
		  .container {
			max-width: 800px;
			margin: 0 auto;
			text-align: center;
			padding: 50px;
			background-color: rgba(0, 0, 0, 0.5);
		  }
		  h1 {
			font-size: 50px;
			margin-bottom: 30px;
		  }
		  p {
			font-size: 24px;
			margin-bottom: 20px;
		  }
		  input[type="text"] {
			padding: 10px;
			font-size: 20px;
			border: none;
			border-radius: 5px;
			margin-bottom: 20px;
		  }
		  button {
			padding: 10px 20px;
			font-size: 20px;
			background-color: #fff;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		  }
		  button:hover {
			background-color: #eee;
		  }
		</style>
		</head>
		<body>
		<!-- IP?capital=Benin -->
		<!-- battleCTF{N0_d3y_f33r} -->
		<div class="container">
		  <h1>Guess the African Country Capital</h1>
		  <p>Enter the capital of the country shown in the background image.</p>
		  <br>'''+tmp+'''<br>
		</div>
		</body>
		</html>
		'''

	return render_template_string(template)

if __name__ == "__main__":
	app.run()
