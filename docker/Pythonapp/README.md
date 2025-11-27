# Python Dockerized Web App
## Project Overview
This project is a Python-based web application containerized using Docker.  
It demonstrates building, packaging, and running a Python app inside a Docker container.

---

## Features
- Containerized Python application  
- Modular folder structure (`Myapp` as a Python package)  
- Easy to build and run with Docker

## Tech Stack
- Python 3.14  
- Flask (or any Python web framework inside `Myapp.main`)  
- Docker  
- Linux 


# Project structure
pythonapp
├── Dockerfile
└── Myapp
    ├── __init__.py
    ├── main.py
    └── requirments.txt
# Running with Docker
Build the Docker image
docker build -t mypythonimage1

Run the container on port 8080
docker run -d -p 8080:5000 my-python-app
# any port can be used ,untill it is vacant 

# Access the app
Open a browser and go to
http://localhost:8080

Check logs
docker logs <container id>

License

MIT License

Contact details 
EMAIL : Bhavyashree2201036@gmail.com

