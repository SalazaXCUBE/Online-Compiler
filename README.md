[readme.md](https://github.com/user-attachments/files/25472441/readme.md)
# Online Code Compiler - README

## 📝 Overview
Web application that safely executes user code in isolated Docker containers. Users write code in browser, get output in real-time.

## 🚀 Quick Start

### **Prerequisites**
- Java 8+, Tomcat 9+, Docker
- Pull images: `openjdk:17-slim`, `python:3.9-slim`, `node:18-alpine`

### Deploy
git clone https://github.com/SalazaXCUBE/Online-Compiler.git

cd EscapeRoom/

docker-compose

Access
http://localhost:8080/EscapeRoom/compile

Usage
1. Select language (Java/Python/JavaScript)
2. Write code
3. Click "Run"
4. View output

## 🔒 Security
- ✅ Docker container isolation
- ✅ 256MB memory limit
- ✅ No network access
- ✅ 80s timeout
- ✅ Auto-cleanup



Returns: Plain text output/error

## ⚙️ How It Works
1. Servlet receives code → Creates temp file
2. Launches Docker container with limits
3. Executes code → Captures output
4. Returns result → Cleans up



## 🛠️ **Tech Stack**
- Backend: Java Servlet
- Frontend: HTML/JavaScript
- Runtime: Docker containers
- Server: Apache Tomcat


```


