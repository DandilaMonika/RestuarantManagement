<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: lightblue;
            font-family: Arial, sans-serif;
        }

        .login-panel {
            background: #242a33;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
            width: 400px; /* Increased width */
            padding: 40px 50px; /* Increased padding */
            box-sizing: border-box;
            text-align: center;
            color: white;
        }

        .login-panel img {
            width: 90px; /* Increased logo size */
            margin-bottom: 20px;
        }

        .login-panel h2 {
            margin-bottom: 30px;
            font-size: 22px; /* Increased font size */
            font-weight: normal;
        }

        .login-panel input {
            width: 100%;
            padding: 12px; /* Increased padding */
            margin: 12px 0; /* Increased margin */
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .login-panel .btn {
            background: #ff7d00;
            color: white;
            padding: 12px; /* Increased padding */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 18px; /* Increased font size */
        }

        .login-panel .btn:hover {
            background: #ff5700;
        }

        .login-panel .icon {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="login-panel">
        <img src="ASRLogo.png" alt="logo">
        <h2>ADMIN PANEL</h2>
        <form method="post" action="checkadminlogin.jsp"> 
            <div>
                <input type="username" placeholder="Username" name="username" required>
            </div>
            <div>
                <input type="password" placeholder="Password" name="password" required>
            </div>
            <div>
                <button type="submit" class="btn">Login</button>
            </div>
        </form>
    </div>
</body>
</html>
