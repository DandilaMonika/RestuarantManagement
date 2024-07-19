<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu and Chicken Biryani</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: white;
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
            background-color: lightblue;
            padding: 20px;
            border-radius: 10px;
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
            background-color: lightgrey;
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
            width: 80px;
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
            <a href="menu.jsp">Menu</a>
            <a href="#">Catering</a>
            <a href="#">Locations</a>
            <a href="#">Rewards</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="contactus.jsp">Contact Us</a>
        </div>
        <div class="nav-right">
            <a href="chefhome.jsp">Chef</a>
            <a href="admin.jsp">Admin</a>
            <a href="ordernow.jsp" class="order-now">Order Now</a>
        </div>
    </nav>

    <section class="hero">
        <div class="hero-text">
            <h1>IT'S BACK! <br> <span>CHICKEN BIRYANI</span></h1>
            <p>Savor the flavors of Chicken Dum Biryani, where every grain tells a story of spice and aroma.</p>
            <a href="#" class="order-button">Order This</a>
        </div>
        <img src="biryani.png" alt="Biryani">
    </section>

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
        <div class="menu-item" id="tacos">
            <img src="friedrice.png" alt="Tacos">
            <div class="label">FRIED RICE</div>
        </div>
        <div class="menu-item" id="quesadillas">
            <img src="manchuria.png" alt="Quesadillas">
            <div class="label">MANCHURIA</div>
        </div>
        <div class="menu-item" id="nachos">
            <img src="parata.png" alt="Nachos">
            <div class="label">PARATA</div>
        </div><div class="menu-item" id="nachos">
            <img src="dosa.png" alt="Nachos">
            <div class="label">DOSA</div>
        </div>
        <div class="menu-item" id="nachos">
            <img src="icecream.png" alt="Nachos">
            <div class="label">ICE-CREAM</div>
        </div>
        <div class="menu-item" id="nachos">
            <img src="milkshakes.png" alt="Nachos">
            <div class="label">MILKSHAKES</div>
        </div>
    </div>

    <footer class="footer">
        <img src="ASRLogo.png" alt="Logo">
        <div class="links">
            <a href="#">Menu</a>
            <a href="#">Culture</a>
            <a href="#">All Locations</a>
            <a href="#">Careers</a>
            <a href="#">Catering</a>
            <a href="#">About Us</a>
            <a href="#">Rewards</a>
            <a href="#">Nutrition & Allergen Info</a>
            <a href="#">Gifts</a>
            <a href="#">Contact Us</a>
        </div>
        <div class="legal">
            <p>&copy;2024 AS resto | <a href="#">Legal</a> | <a href="#">Privacy Policy</a></p>
            <p><a href="#">AS Resto Privacy Policy</a></p>
            <p><a href="#">Website Accessibility Statement</a></p>
        </div>
    </footer>

    
</body>
</html>
