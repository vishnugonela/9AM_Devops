from flask import Flask, request, render_template_string

app = Flask(__name__)

# HTML Login Page
login_page = """
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body style="font-family: Arial; text-align: center; margin-top: 80px;">
    <h2>Docker Login Page</h2>
    <form method="POST">
        <label>Enter Name:</label><br>
        <input type="text" name="username" required><br><br>

        <label>Enter Password:</label><br>
        <input type="password" name="password" required><br><br>

        <button type="submit">Login</button>
    </form>
</body>
</html>
"""

# Successful Login Page
welcome_page = """
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body style="font-family: Arial; text-align: center; margin-top: 80px;">
    <h2>Welcome to Docker, {{name}}!</h2>
</body>
</html>
"""


@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == "POST":
        user = request.form['username']
        pwd = request.form['password']

        # Authentication
        if user.lower() == "gagana" and pwd == "1234":
            return render_template_string(welcome_page, name=user)
        else:
            return "<h3 style='color:red; text-align:center;'>Invalid Login! Try again.</h3>" + login_page

    return login_page


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
