from flask import Flask, render_template_string, request, redirect, url_for

app = Flask(__name__)

# Simple in-memory "user database"
users = {
    "admin": "password123",
    "user": "mypassword"
}

# HTML template (inline for simplicity)
login_page = """
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: white;
            padding: 2em;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        input {
            margin-bottom: 1em;
            width: 100%;
            padding: 0.5em;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 0.5em 1em;
            border-radius: 4px;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <form method="POST">
        <h2>Login</h2>
        {% if error %}
        <p class="error">{{ error }}</p>
        {% endif %}
        <input type="text" name="username" placeholder="Username" required /><br>
        <input type="password" name="password" placeholder="Password" required /><br>
        <button type="submit">Login</button>
    </form>
</body>
</html>
"""

welcome_page = """
<!DOCTYPE html>
<html>
<head><title>Welcome</title></head>
<body style="font-family: Arial; text-align: center; margin-top: 100px;">
    <h1>Welcome, {{ user }}!</h1>
    <a href="{{ url_for('login') }}">Logout</a>
</body>
</html>
"""

@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')

        if username in users and users[username] == password:
            return render_template_string(welcome_page, user=username)
        else:
            return render_template_string(login_page, error="Invalid credentials")

    return render_template_string(login_page, error=None)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)
