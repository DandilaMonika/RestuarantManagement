<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Menu</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 10px;
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar .logo img {
            height: 120px;
        }
        .navbar a {
            text-decoration: none;
            color: skyblue;
            margin: 0 10px;
            font-weight: bold;
            text-transform: uppercase;
        }
        .navbar .nav-right a {
            padding: 10px 20px;
            border: 1px solid skyblue;
            border-radius: 5px;
        }

        .hero {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 50px 20px;
            background-color: #f8f8f8;
        }
        .hero .hero-text {
            max-width: 50%;
        }
        .hero h1 {
            font-size: 3em;
            color: #009999;
            margin: 0;
        }
        .hero h1 span {
            color: #ff6600;
        }
        .hero p {
            font-size: 1.2em;
            color: #666;
        }
        .hero .order-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: black;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        .hero img {
            max-width: 100%;
            border-radius: 50%;
        }

        .menu-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
        }

        .menu-item {
            position: relative;
            width: 30%;
            margin-bottom: 20px;
        }

        .menu-item img {
            width: 100%;
            border-radius: 10px;
        }

        .label {
            position: absolute;
            bottom: 10px;
            left: 50%;
            transform: translateX(-50%);
            background-color: blue;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 18px;
        }

        .footer {
            background-color: #ff6600;
            color: white;
            padding: 20px;
            text-align: center;
            position: relative;
        }
        .footer img {
            width: 50px;
            height: 50px;
            margin: 10px;
        }
        .footer a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            display: inline-block;
        }
        .footer .links {
            margin: 20px 0;
        }
        .footer .legal {
            font-size: 12px;
            margin: 10px 0;
        }
        .footer .high-contrast-toggle {
            position: absolute;
            bottom: 20px;
            right: 20px;
            background-color: white;
            color: black;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="logo">
            <img src="ASRLogo.png" alt="Costa Vida Logo">
        </div>
        <div class="nav-links">
            <a href="#">Menu</a>
            <a href="#">Catering</a>
            <a href="#">Locations</a>
            <a href="#">Rewards</a>
            <a href="#">Gifts</a>
            <a href="#">Careers</a>
        </div>
        <div class="nav-right">
            <a href="#">About Us</a>
            <a href="#">Contact Us</a>
            <a href="#" class="order-now">Order Now</a>
        </div>
    </nav>

   

    <div class="menu-container">
        <div class="menu-item" id="salads">
            <img src="biryani.png" alt="Salads">
            <div class="label">BIRYANI</div>
        </div>
        <div class="menu-item" id="burritos">
            <img src="noodles.png" alt="Burritos">
            <div class="label">NOODLES</div>
        </div>
        <div class="menu-item" id="enchiladas">
            <img src="soups.png" alt="Enchiladas">
            <div class="label">SOUPS</div>
        </div>
        
        <div class="menu-item" id="salads">
            <img src="friedrice.png" alt="Salads">
            <div class="label">FRIED RICE</div>
        </div>
        <div class="menu-item" id="burritos">
            <img src="manchuria.png" alt="Burritos">
            <div class="label">MANCHURIA</div>
        </div>
        <div class="menu-item" id="enchiladas">
            <img src="parata.png" alt="Enchiladas">
            <div class="label">PARATA</div>
        </div>
        
        <div class="menu-item" id="salads">
            <img src="dosa.png" alt="Salads">
            <div class="label">DOSA</div>
        </div>
        <div class="menu-item" id="burritos">
            <img src="icecream.png" alt="Burritos">
            <div class="label">ICE-CREAMS</div>
        </div>
        <div class="menu-item" id="enchiladas">
            <img src="milkshakes.png" alt="Enchiladas">
            <div class="label">MILKSHAKES</div>
        </div>
    </div>

    
</body>
</html>
