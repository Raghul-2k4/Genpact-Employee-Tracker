<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpServletResponse" %>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    } else {
        String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <!-- Include Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #F4ECF7; /* Light grey background */
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
            font-size: 36px; /* Larger font size for welcome message */
            text-transform: uppercase; /* Capitalize text */
            margin-bottom: 20px; /* Space below heading */
        }
        .button {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 350px; /* Fixed width for buttons */
            padding: 10px;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 20px; /* Adjusted font size for better readability */
            text-decoration: none;
            margin: 10px auto; /* Center buttons and add spacing */
            cursor: pointer;
        }
        .button i {
            margin-right: 10px; /* Space between icon and text */
            font-size: 24px; /* Size of the icons */
        }
        .button.green {
            background-color: #28a745; /* Green color for Task Management */
        }
        .button.red {
            background-color: #dc3545; /* Red color for Logout */
        }
        .button.blue {
            background-color: #007bff; /* Blue color for View Associate */
        }
        .button-small {
            width: 200px; /* Reduced width for small buttons */
            font-size: 16px; /* Smaller font size */
            padding: 8px; /* Reduced padding */
        }
        .button:hover {
            opacity: 0.9; /* Slightly transparent on hover */
        }
    </style>
</head>
<body>
    <h2>Welcome <%= session.getAttribute("username") %></h2>
    <%
        if ("Admin".equals(role)) {
    %>
    <a href="adminPage.jsp" class="button blue"><i class="fas fa-file"></i> Admin Page</a>
    <%
        } else {
    %>
    <a href="taskPage.jsp" class="button green"><i class="fas fa-file"></i> Task Management</a>
    <a href="associaterPage.jsp" class="button blue"><i class="fas fa-eye"></i> View Associate</a>
    <%
        }
    %>
    <a href="LogoutServlet" class="button red button-small"><i class="fas fa-arrow-left-from-bracket"></i> Logout</a>
</body>
</html>
<%
    }
%>
