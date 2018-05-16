from flask import Flask, render_template

app = Flask(__name__)


@app.route("/membership/")
def membership():
	return render_template("index.html")


@app.route("/signup/")
def signup():
	return render_template("signup.html")

@app.route("/login/")
def login():
	return render_template("login.html")


app.run(debug=True, port=5001, host="0.0.0.0")