<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Advanced Programming LMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- AOS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background: radial-gradient(circle at top, #2563eb55, transparent 60%), #020617;
            color: #e5e7eb;
        }
        header {
            padding: 2rem 3rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: rgba(15, 23, 42, 0.85);
            backdrop-filter: blur(10px);
            position: sticky;
            top: 0;
            z-index: 10;
        }
        header h1 { font-size: 1.5rem; }
        header nav a {
            margin-left: 1.5rem;
            color: #c7d2fe;
            text-decoration: none;
            font-weight: 500;
        }
        .hero {
            padding: 6rem 3rem;
            max-width: 1200px;
            margin: auto;
        }
        .hero h2 {
            font-size: 3.2rem;
            font-weight: 700;
            line-height: 1.2;
        }
        .hero p {
            max-width: 600px;
            color: #94a3b8;
            margin-top: 1.5rem;
        }
        .hero button {
            margin-top: 2rem;
            padding: 0.9rem 1.5rem;
            border-radius: 14px;
            border: none;
            background: linear-gradient(135deg, #2563eb, #3b82f6);
            color: #fff;
            font-weight: 600;
            cursor: pointer;
        }
        .section {
            max-width: 1200px;
            margin: auto;
            padding: 4rem 3rem;
        }
        .section h3 { font-size: 2.2rem; margin-bottom: 2rem; }
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 1.8rem;
        }
        .card {
            background: rgba(15, 23, 42, 0.85);
            border-radius: 20px;
            padding: 2rem;
            box-shadow: 0 30px 60px rgba(0,0,0,0.6);
            transition: transform .3s ease;
        }
        .card:hover { transform: translateY(-10px); }
        .card i {
            font-size: 2.2rem;
            color: #60a5fa;
            margin-bottom: 1rem;
        }
        .card span {
            display: block;
            margin-top: 0.8rem;
            color: #94a3b8;
            font-size: 0.9rem;
        }
        footer {
            text-align: center;
            padding: 2rem;
            color: #64748b;
            font-size: .9rem;
        }
    </style>
</head>
<body>

<header>
    <h1><i class="fa-solid fa-graduation-cap"></i> Advanced Programming</h1>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="NetworkProgramming.jsp">NetworkProgramming</a>
        <a href="DistributedProgramming.jsp">DistributedProgramming</a>
        <a href="online.jsp">Online Compiler</a>
        <a href="logout">Logout</a>
    </nav>
</header>

<section class="hero" data-aos="fade-up">
    <h2>Build. Compile. Distribute.<br>Advanced Java Programming</h2>
    <p>
        Master network programming, distributed systems, and real-world Java technologies
        with interactive labs and an online compiler.
    </p>
    <button onclick="location.href='chapter4'">
        <i class="fa-solid fa-rocket"></i> Start Learning
    </button>
</section>

<section class="section" data-aos="fade-up">
    <h3>Course Chapters</h3>
    <div class="grid">
        <div class="card" onclick="location.href='chapter4'">
            <i class="fa-solid fa-network-wired"></i>
            <b>Chapter 4</b>
            <span>Network Programming & Sockets</span>
        </div>
        <div class="card" onclick="location.href='chapter5'">
            <i class="fa-solid fa-diagram-project"></i>
            <b>Chapter 5</b>
            <span>Distributed Programming (RMI)</span>
        </div>
    </div>
</section>

<section class="section" data-aos="fade-up">
    <h3>Hands-on Labs</h3>
    <div class="grid">
        <div class="card">
            <i class="fa-solid fa-flask"></i>
            <b>Socket Programming Lab</b>
            <span>TCP/UDP client-server practice</span>
        </div>
        <div class="card">
            <i class="fa-solid fa-flask-vial"></i>
            <b>RMI Lab</b>
            <span>Build distributed Java applications</span>
        </div>
    </div>
</section>

<section class="section" data-aos="fade-up">
    <h3>Online Compiler</h3>
    <div class="grid">
        <div class="card">
            <i class="fa-solid fa-terminal"></i>
            <b>Java Online Compiler</b>
            <span>Write, compile, and run Java code directly in the browser</span>
        </div>
    </div>
</section>

<footer>
    © 2025 · Advanced Programming  · Servlet Based Platform
</footer>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>AOS.init({ once: true, duration: 900 });</script>

</body>
</html>