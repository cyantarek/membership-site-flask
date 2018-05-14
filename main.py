from flask import Flask, render_template

app = Flask(__name__, static_folder="static")


@app.route("/membership/")
def membership():
	return render_template("index.html")


app.run(debug=True, port=5001, host="0.0.0.0")