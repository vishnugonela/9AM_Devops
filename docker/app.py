from flask import Flask
import socket, datetime, subprocess

app = Flask(__name__)

@app.route('/')
def container_info():
    # Get container hostname (container name)
    container_name = socket.gethostname()

    # Get container IP
    ip_address = subprocess.getoutput("hostname -I").strip()

    # Get current date and time
    date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    html = f"""
    <html>
      <head><title>Container Details</title></head>
      <body style='font-family: Arial; margin: 40px;'>
        <h2>🧩 Container Details</h2>
        <p><b>Container Name:</b> {container_name}</p>
        <p><b>Container IP:</b> {ip_address}</p>
        <p><b>Date:</b> {date}</p>
      </body>
    </html>
    """
    return html

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
