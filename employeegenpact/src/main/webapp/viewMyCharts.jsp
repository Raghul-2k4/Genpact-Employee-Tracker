<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; // Prevent further processing if the user is not logged in
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View My Charts</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #A3E4D7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        h2 {
            color: #333;
            font-size: 2em;
            margin-bottom: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px; /* Space between icon and text */
        }

        .button-group {
            display: flex;
            flex-direction: column;
            gap: 20px; /* Increased space between buttons */
            width: 100%;
            max-width: 1000px; /* Limit maximum width */
            margin: 0 auto; /* Center the button group */
        }

        .button-group a {
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 20px; /* Increased padding for larger buttons */
            border-radius: 5px;
            font-size: 1.5em; /* Increased font size */
            font-weight: bold;
            display: block;
            text-align: center;
            width: 100%; /* Make buttons full width */
            box-sizing: border-box; /* Include padding and border in the element's total width and height */
        }

        .button-group a:hover {
            background-color: #0056b3;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #dc3545; /* Red color for the back link */
            font-weight: bold;
            font-size: 1.2em;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div>
        <h2><i class="fas fa-eye"></i> My Charts</h2>
        <div class="button-group">
            <a href="dailyChart.jsp">View Daily Chart</a>
            <a href="weeklyChart.jsp">View Weekly Chart</a>
            <a href="monthlyChart.jsp">View Monthly Chart</a>
        </div>
        <a href="dashboard.jsp" class="back-link">Back to Dashboard</a>
    </div>
</body>
</html>
