<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Compiler | Advanced Programming LMS</title>
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
            background: radial-gradient(circle at top, #22d3ee55, transparent 60%), #020617;
            color: #e5e7eb;
        }

        header {
            padding: 1.8rem 3rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: rgba(15, 23, 42, 0.85);
            backdrop-filter: blur(10px);
        }

        header h1 {
            font-size: 1.4rem;
        }

        header a {
            color: #c7d2fe;
            text-decoration: none;
            margin-left: 1.5rem;
        }

        .container {
            max-width: 1400px;
            margin: auto;
            padding: 3rem;
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 2rem;
        }

        .panel {
            background: rgba(15, 23, 42, 0.9);
            border-radius: 20px;
            padding: 1.8rem;
            box-shadow: 0 30px 60px rgba(0,0,0,0.6);
        }

        textarea {
            width: 100%;
            height: 420px;
            background: #020617;
            border: none;
            border-radius: 14px;
            color: #e5e7eb;
            padding: 1rem;
            font-family: monospace;
            font-size: 0.95rem;
            resize: none;
            outline: none;
        }

        select, button {
            width: 100%;
            padding: 0.9rem;
            border-radius: 12px;
            border: none;
            margin-top: 1rem;
            font-weight: 600;
        }

        select {
            background: #020617;
            color: #e5e7eb;
        }

        button {
            background: linear-gradient(135deg, #22d3ee, #3b82f6);
            color: #020617;
            cursor: pointer;
        }

        pre {
            background: #020617;
            padding: 1rem;
            border-radius: 14px;
            height: 420px;
            overflow-y: auto;
            font-size: 0.9rem;
            white-space: pre-wrap;
        }

        footer {
            text-align: center;
            padding: 1.5rem;
            color: #64748b;
            font-size: .9rem;
        }
    </style>
</head>

<body>

<header>
    <h1><i class="fa-solid fa-terminal"></i> Online Compiler</h1>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="compile">Compiler</a>
        <a href="logout">Logout</a>
    </nav>
</header>

<div class="container" data-aos="fade-up">

    <!-- LEFT: CODE EDITOR -->
    <div class="panel">
        <h3><i class="fa-solid fa-code"></i> Code Editor</h3>

        <form method="post" action="compile">

            <textarea name="code" required><%
                String code = (String) request.getAttribute("code");
                if (code != null) {
                    out.print(code);
                } else {
            %>
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello from Compiler");
    }
}
<%
                }
            %></textarea>

            <select name="language" required>
                <option value="java"
                    <%= "java".equals(request.getAttribute("language")) ? "selected" : "" %>>
                    Java
                </option>
                <option value="python"
                    <%= "python".equals(request.getAttribute("language")) ? "selected" : "" %>>
                    Python
                </option>
                <option value="javascript"
                    <%= "javascript".equals(request.getAttribute("language")) ? "selected" : "" %>>
                    JavaScript
                </option>
            </select>

            <button type="submit">
                <i class="fa-solid fa-play"></i> Run Code
            </button>
        </form>
    </div>

    <!-- RIGHT: OUTPUT -->
    <div class="panel">
        <h3><i class="fa-solid fa-bug"></i> Output</h3>
        <pre><%
            String output = (String) request.getAttribute("output");
            if (output != null) {
                out.print(output+"\n done");
            } else {
                out.print("Program output will appear here...");
            }
        %></pre>
    </div>

</div>

<footer>
    © 2025 · Advanced Programming LMS · Secure Docker-Based Compiler
</footer>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init({ once: true, duration: 900 });
</script>

</body>
</html>
