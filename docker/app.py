from flask import Flask
import socket
import datetime

app = Flask(__name__)

@app.route("/")
def container_details():
    container_name = socket.gethostname()
    container_ip = socket.gethostbyname(container_name)
    current_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    return f"""
        <h2>Container Details</h2>
        <p><b>Container Name:</b> {container_name}</p>
        <p><b>Container IP:</b> {container_ip}</p>
        <p><b>Date & Time:</b> {current_time}</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
