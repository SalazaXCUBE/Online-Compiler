<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Distributed Programming | E-Learning</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- AOS Animations -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #020617, #020617);
            color: #e5e7eb;
        }
        header {
            padding: 4rem 2rem;
            background: radial-gradient(circle at top, #2563eb55, transparent 60%);
        }
        header h1 {
            font-size: 3rem;
            font-weight: 700;
        }
        header p {
            max-width: 600px;
            color: #c7d2fe;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 2rem;
        }
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
        }
        .card {
            background: rgba(15, 23, 42, 0.8);
            border-radius: 16px;
            padding: 1.5rem;
            box-shadow: 0 20px 40px rgba(0,0,0,0.4);
            transition: transform .3s ease;
        }
        .card:hover { transform: translateY(-8px); }
        .card i {
            font-size: 2rem;
            color: #60a5fa;
            margin-bottom: 1rem;
        }
        h2 {
            font-size: 2rem;
            margin-bottom: 1.5rem;
        }
        footer {
            text-align: center;
            padding: 2rem;
            color: #94a3b8;
            font-size: .9rem;
        }
        .step {
            background: #020617;
            border-left: 4px solid #3b82f6;
            padding: 1rem 1.5rem;
            border-radius: 12px;
        }
    </style>
</head>
<body>

<header>
    <div class="container" data-aos="fade-up">
        <h1>Distributed Programming</h1>
        <p>Advanced Programming (CSE 3312) – Java RMI E-Learning Module</p>
    </div>
</header>

<div class="container">

    <section data-aos="fade-up">
        <h2>Learning Objectives</h2>
        <div class="grid">
            <div class="card"><i class="fa-solid fa-network-wired"></i>RMI fundamentals</div>
            <div class="card"><i class="fa-solid fa-diagram-project"></i>RMI architecture</div>
            <div class="card"><i class="fa-solid fa-box"></i>Serialization</div>
            <div class="card"><i class="fa-solid fa-code"></i>Build RMI applications</div>
        </div>
    </section>

    <section data-aos="fade-up">
        <h2>What is Java RMI?</h2>
        <p>Java RMI enables method invocation on objects residing in different JVMs. It abstracts socket-level communication while preserving object-oriented semantics.</p>
    </section>

    <section data-aos="fade-up">
        <h2>RMI Components</h2>
        <div class="grid">
            <div class="card"><i class="fa-solid fa-server"></i><b>Server</b><br>Hosts and registers remote objects</div>
            <div class="card"><i class="fa-solid fa-database"></i><b>Registry</b><br>Maps names to stubs</div>
            <div class="card"><i class="fa-solid fa-laptop-code"></i><b>Client</b><br>Invokes remote methods</div>
        </div>
    </section>

    <section data-aos="fade-up">
        <h2>Serialization</h2>
        <p>Serialization converts objects into byte streams for network transfer. Classes must implement <code>Serializable</code>.</p>
    </section>

    <section data-aos="fade-up">
        <h2>RMI Development Steps</h2>
        <div class="grid">
            <div class="step">1. Define remote interface</div>
            <div class="step">2. Implement remote object</div>
            <div class="step">3. Create client</div>
            <div class="step">4. Compile & generate stubs</div>
            <div class="step">5. Start registry</div>
            <div class="step">6. Run server & client</div>
        </div>
    </section>

</div>

<footer>
    © 2025 · Distributed Programming · Servlet-Based LMS
</footer>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>AOS.init({ once: true, duration: 900 });</script>

</body>
</html>
