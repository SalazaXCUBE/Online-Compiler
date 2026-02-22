
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Network Programming | E-Learning</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- AOS Animations -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background: #020617;
            color: #e5e7eb;
        }
        header {
            padding: 4rem 2rem;
            background: radial-gradient(circle at top, #22d3ee55, transparent 60%);
        }
        header h1 { font-size: 3rem; font-weight: 700; }
        header p { max-width: 600px; color: #bae6fd; }
        .container { max-width: 1200px; margin: auto; padding: 2rem; }
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 1.5rem;
        }
        .card {
            background: rgba(15, 23, 42, 0.85);
            border-radius: 16px;
            padding: 1.5rem;
            box-shadow: 0 20px 40px rgba(0,0,0,0.4);
            transition: transform .3s ease;
        }
        .card:hover { transform: translateY(-8px); }
        .card i { font-size: 2rem; color: #38bdf8; margin-bottom: 1rem; }
        h2 { font-size: 2rem; margin-bottom: 1.5rem; }
        footer { text-align: center; padding: 2rem; color: #94a3b8; font-size: .9rem; }
        .step {
            background: #020617;
            border-left: 4px solid #22d3ee;
            padding: 1rem 1.5rem;
            border-radius: 12px;
        }
        code { color: #7dd3fc; }
    </style>
</head>
<body>

<header>
    <div class="container" data-aos="fade-up">
        <h1>Network Programming</h1>
        <p>Advanced Programming – Java Sockets & Networking Fundamentals</p>
    </div>
</header>

<div class="container">

    <section data-aos="fade-up">
        <h2>Learning Outcomes</h2>
        <div class="grid">
            <div class="card"><i class="fa-solid fa-network-wired"></i>Java networking concepts</div>
            <div class="card"><i class="fa-solid fa-plug"></i>Socket types & usage</div>
            <div class="card"><i class="fa-solid fa-server"></i>Client-server applications</div>
            <div class="card"><i class="fa-solid fa-code"></i>TCP & UDP programming</div>
        </div>
    </section>

    <section data-aos="fade-up">
        <h2>Java Networking Overview</h2>
        <p>Java networking enables communication between multiple computing devices using TCP (connection-oriented) and UDP (connection-less) protocols.</p>
    </section>

    <section data-aos="fade-up">
        <h2>Networking Terminology</h2>
        <div class="grid">
            <div class="card"><i class="fa-solid fa-location-dot"></i>IP Address</div>
            <div class="card"><i class="fa-solid fa-shield"></i>Protocol</div>
            <div class="card"><i class="fa-solid fa-door-open"></i>Port Number</div>
            <div class="card"><i class="fa-solid fa-microchip"></i>MAC Address</div>
        </div>
    </section>

    <section data-aos="fade-up">
        <h2>Socket Programming</h2>
        <p>A socket is an endpoint for communication between two processes. Java supports both connection-oriented (TCP) and connection-less (UDP) socket programming.</p>
    </section>

    <section data-aos="fade-up">
        <h2>Connection-Oriented Sockets (TCP)</h2>
        <div class="grid">
            <div class="card"><i class="fa-solid fa-server"></i><b>ServerSocket</b><br>Listens for incoming client connections</div>
            <div class="card"><i class="fa-solid fa-laptop-code"></i><b>Socket</b><br>Client-side communication endpoint</div>
        </div>
        <p><code>ServerSocket serverSocket = new ServerSocket(port);</code></p>
        <p><code>Socket socket = serverSocket.accept();</code></p>
    </section>

    <section data-aos="fade-up">
        <h2>Client Connection</h2>
        <p><code>Socket socket = new Socket("www.example.com", 8000);</code></p>
        <p>DNS resolves hostnames into IP addresses automatically.</p>
    </section>

    <section data-aos="fade-up">
        <h2>Data Communication</h2>
        <p>Java uses I/O streams on top of sockets to transmit data.</p>
        <p><code>InputStream input = socket.getInputStream();</code></p>
        <p><code>OutputStream output = socket.getOutputStream();</code></p>
    </section>

    <section data-aos="fade-up">
        <h2>Multithreaded Servers</h2>
        <p>Each client connection is handled by a separate thread, allowing concurrent communication.</p>
    </section>

    <section data-aos="fade-up">
        <h2>Connection-less Communication (UDP)</h2>
        <p>UDP uses datagram packets without establishing a persistent connection.</p>
        <div class="grid">
            <div class="card"><i class="fa-solid fa-envelope"></i>DatagramPacket</div>
            <div class="card"><i class="fa-solid fa-broadcast-tower"></i>DatagramSocket</div>
        </div>
    </section>

</div>

<footer>
    © 2025 · Network Programming · Servlet-Based 
</footer>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>AOS.init({ once: true, duration: 900 });</script>

</body>
</html>