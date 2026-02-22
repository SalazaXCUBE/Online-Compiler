<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register | E‑Learning </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background: radial-gradient(circle at top, #2563eb55, transparent 60%), #020617;
            color: #e5e7eb;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        .auth-card {
            width: 420px;
            background: rgba(15, 23, 42, 0.9);
            border-radius: 20px;
            padding: 2.5rem;
            box-shadow: 0 30px 60px rgba(0,0,0,0.6);
        }
        .auth-card h1 {
            text-align: center;
            margin-bottom: 0.5rem;
        }
        .auth-card p {
            text-align: center;
            color: #94a3b8;
            margin-bottom: 2rem;
        }
        .field {
            position: relative;
            margin-bottom: 1.5rem;
        }
        .field i {
            position: absolute;
            top: 50%;
            left: 15px;
            transform: translateY(-50%);
            color: #60a5fa;
        }
        .field input {
            width: 100%;
            padding: 0.9rem 0.9rem 0.9rem 2.8rem;
            border-radius: 12px;
            border: none;
            background: #020617;
            color: #e5e7eb;
            outline: none;
        }
        .field input:focus {
            box-shadow: 0 0 0 2px #3b82f6;
        }
        button {
            width: 100%;
            padding: 0.9rem;
            border-radius: 12px;
            border: none;
            background: linear-gradient(135deg, #2563eb, #3b82f6);
            color: #fff;
            font-weight: 600;
            cursor: pointer;
            margin-top: 1rem;
        }
        button:hover { opacity: 0.9; }
        .switch {
            text-align: center;
            margin-top: 1.5rem;
            font-size: 0.9rem;
        }
        .switch a { color: #60a5fa; text-decoration: none; }
    </style>
</head>
<body>

<div class="auth-card" data-aos="zoom-in">
    <h1><i class="fa-solid fa-user-plus"></i> Create Account</h1>
    <p>Join the e‑learning platform</p>

    <form method="post" action="register">
        <div class="field">
            <i class="fa-solid fa-user"></i>
            <input type="text" name="FirstName" placeholder="First Name" required>
        </div>
        <div class="field">
            <i class="fa-solid fa-user"></i>
            <input type="text" name="LastName" placeholder="Last Name" required>
        </div>
        <div class="field">
            <i class="fa-solid fa-envelope"></i>
            <input type="email" name="email" placeholder="Email address" required>
        </div>
        <div class="field">
            <i class="fa-solid fa-lock"></i>
            <input type="password" name="Password" placeholder="Password" required>
        </div>
        <button type="submit"><i class="fa-solid fa-user-check"></i> Register</button>
    </form>

    <div class="switch">
        Already registered? <a href="login.jsp">Login</a>
    </div>
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>AOS.init({ once: true, duration: 900 });</script>

</body>
</html>
