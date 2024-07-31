<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- Include Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #A9CCE3; /* Light grey background for contrast */
            font-family: Arial, sans-serif;
            margin: 0;
            height: 100vh; /* Full viewport height */
            display: flex;
            align-items: center; /* Vertically center the container */
            justify-content: center; /* Horizontally center the container */
            text-align: center; /* Center text inside the container */
        }
        .container {
            background-color: #EAF2F8;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 500px; /* Set a width for the form container */
        }
        h2 {
            margin-top: 0;
            color: #333;
            font-size: 28px; /* Larger font size for heading */
            text-transform: uppercase; /* Capitalize the heading text */
            display: flex;
            align-items: center; /* Align items in the center */
            justify-content: center; /* Center the content horizontally */
        }
        h2 i {
            margin-right: 10px; /* Space between icon and text */
            font-size: 24px; /* Icon size */
        }
        label {
            display: block;
            margin-bottom: 8px; /* Space below labels */
            font-size: 16px; /* Font size for labels */
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px); /* Full width minus padding and borders */
            padding: 10px;
            margin-bottom: 15px; /* Space between inputs */
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px; /* Font size for input text */
        }
        input[type="submit"] {
            width: 100%; /* Full width of the container */
            padding: 10px;
            background-color: #28a745; /* Green color */
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s; /* Smooth transition for hover effect */
        }
        input[type="submit"]:hover {
            background-color: #218838; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fas fa-user"></i>Login</h2>
        <form action="LoginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
