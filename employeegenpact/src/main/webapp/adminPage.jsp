<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ADMIN PAGE</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #D7BDE2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #F5EEF8;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 100%;
            max-width: 900px;
        }

        h2 {
            margin-top: 0;
            color: #333;
            font-size: 46px; /* Enlarge the font size */
            text-transform: uppercase; /* Capitalize the title */
        }

        p.description {
            font-size: 20px;
            color: #666;
            margin-bottom: 20px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        ul li {
            margin: 10px 0;
        }

        ul li a {
            text-decoration: none;
            color: #007BFF;
            font-size: 30px;
        }

        ul li a:hover {
            text-decoration: underline;
        }

        a.back {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #fff; /* Text color */
            font-size: 24px;
            border: 1px solid #28a745; /* Green border */
            border-radius: 4px;
            padding: 10px 20px;
            background-color: #28a745; /* Green background */
        }

        a.back:hover {
            background-color: #218838; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <!--
    session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; // Ensure no further processing is done after redirection
    } else if (!session.getAttribute("role").equals("1")) {
        response.sendRedirect("dashboard.jsp");
        return; // Ensure no further processing is done after redirection
    }
    -->
    <div class="container">
        <h2>Admin Page</h2>
        <p class="description">For Admin Use Only</p>
        <ul>
            <li><a href="viewAllTasks.jsp">View All Tasks</a></li>
            <li><a href="viewAllCharts.jsp">View All Charts</a></li>
        </ul>
        <a href="dashboard.jsp" class="back">Back to Dashboard</a>
    </div>
</body>
</html>
