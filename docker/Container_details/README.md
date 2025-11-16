# Container Info App

A lightweight Dockerized Nginx application that displays container details (hostname and IP) dynamically using a Bash startup script.

---

## 🚀 Overview
This project auto-generates an `index.html` file during container startup and serves it through Nginx.  
It demonstrates Dockerfile best practices, container automation, Bash scripting, and Nginx customization.

---

## 🛠 Tech Stack
- Docker  
- Nginx (Alpine)  
- Bash Script  
- Linux  

---

## 📂 Project Structure
container-info-app/
├── Dockerfile
├── index.sh
└── README.md


---

## ▶️ How to Build & Run

### Build
```bash
docker build -t container-info-app .

Run
docker run -d -p 8080:80 container-info-app

Access
Open browser:
http://localhost:8080

🔑 Key Concepts Demonstrated

ENTRYPOINT scripting
Dynamic HTML generation
Nginx as container web server
Docker container networking
Automation using Bash

📄 License
MIT License

👤 Author
Bhavyashree
DevOps | Cloud | Automation


