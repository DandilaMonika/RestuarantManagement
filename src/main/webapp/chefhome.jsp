<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<style>
body {
    background-image: url('background.jpg');
    background-size: cover;
    background-position: center;
    background-color: lightblue; /* This sets the background color */
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 5px 10px;
        background-color: white;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .navbar .logo img {
        height: 60px;
    }
    .navbar a {
        text-decoration: none;
        color: skyblue;
        margin: 0 10px;
        font-weight: bold;
        text-transform: uppercase;
    }
    .navbar .nav-right a, .navbar .nav-right .dropdown {
        margin: 0 10px;
    }
    .navbar .nav-right a {
        padding: 10px 30px;
        border: 1px solid skyblue;
        border-radius: 5px;
    }
    .dropdown {
        position: relative;
        display: inline-block;
    }
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: white;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        z-index: 1;
    }
    .dropdown-content a {
        display: block;
        padding: 2px 5px;
        border: 1px solid skyblue;
        border-radius: 5px;
        margin: 2px 0;
    }
    .dropdown:hover .dropdown-content {
        display: block;
    }
    .dropdown-content a:hover {
        background-color: lightgray;
    }
</style>
</head>
<body>

<nav class="navbar">
    <div class="logo">
        <img src="ASRLogo.png" alt="ASR Logo">
    </div>
        <a href="viewallorders.jsp">View Orders</a>
    </div>
</nav>

</body>
</html>
