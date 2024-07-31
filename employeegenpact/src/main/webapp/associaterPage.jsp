<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--  
    //HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; // Prevent further processing if the user is not logged in
    } else if (!"Associate".equals(session.getAttribute("role"))) {
        response.sendRedirect("dashboard.jsp");
        return; // Redirect to dashboard if the user is not an associate
    }
-->
<!DOCTYPE html>
<html>
<head>
    <title>Associate Page</title>
    <!-- Include Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #D4E6F1; /* Light grey background */
            font-family: Arial, sans-serif;
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        h2 {
            color: #333;
            font-size: 36px; /* Larger font size for title */
            text-transform: uppercase; /* Capitalize text */
            margin-bottom: 20px; /* Space below title */
        }
        .button {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px 20px; /* Padding inside button */
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 28px; /* Larger font size for button text */
            text-decoration: none;
            margin: 10px auto; /* Center button and add spacing */
            cursor: pointer;
            background-color: #800000; /* Maroon color for button */
        }
        .button i {
            margin-right: 10px; /* Space between icon and text */
            font-size: 24px; /* Size of the icons */
        }
        a.back-link {
            font-size: 28px; /* Larger font size for link */
            color: blue; /* Green color */
            text-decoration: none; /* Remove underline from link */
            margin-top: 20px; /* Space above link */
            display: inline-block; /* Ensure proper spacing */
        }
        a.back-link:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <h2>Associate Page</h2>
    <a href="viewMyCharts.jsp" class="button"><i class="fas fa-chart-pie"></i> View My Charts</a>
    <a href="dashboard.jsp" class="back-link">Back to Dashboard</a>
</body>
</html>
