<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <!-- Include Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #A2D9CE; /* Light teal background */
            font-family: Arial, sans-serif;
            margin: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 50%;
            max-width: 500px; /* Maximum width of the form container */
        }
        h2 {
            color: #333;
            font-size: 32px; /* Larger font size for title */
            text-transform: uppercase; /* Capitalize text */
            margin-top: 0; /* Remove top margin */
            margin-bottom: 20px; /* Space below title */
            display: flex;
            align-items: center;
            justify-content: center;
        }
        h2 i {
            margin-right: 10px; /* Space between icon and text */
            font-size: 32px; /* Adjust icon size */
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px; /* Space between form elements */
        }
        label {
            font-size: 18px; /* Adjust font size for labels */
            text-align: left; /* Align text to the left */
        }
        input[type="text"],
        input[type="password"],
        select {
            width: 75%; /* Equal width for all input fields */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px; /* Font size for inputs */
        }
        input[type="submit"] {
            width: 25%; /* Button width auto-adjusts to content */
            padding: 4px 8px; /* Reduced padding for smaller button */
            background-color: #28a745; /* Green color for button */
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 14px; /* Smaller font size */
            cursor: pointer;
            margin-top: 10px; /* Margin above button */
        }
        input[type="submit"]:hover {
            background-color: #218838; /* Darker green on hover */
        }
        .disclaimer {
            font-size: 16px; /* Standard font size for disclaimer */
            color: black; /* Black color for text */
            margin-top: 22px; /* Space above disclaimer */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fas fa-file-lines"></i> Register</h2>
        <form action="RegisterServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <label for="role">Role:</label>
            <select id="role" name="role" required>
                <option value="Admin">Admin</option>
                <option value="Associate">Associate</option>
            </select>
            <input type="submit" value="Register">
        </form>
        <p class="disclaimer">Please ensure all details are entered correctly before submission</p>
    </div>
</body>
</html>

