<!DOCTYPE html>
<html>
<head>
    <title>Order Now</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #add8e6; /* Light blue background */
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 1000px;
            margin: auto;
            background: white;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1, h2 {
            text-align: center;
            color: #333;
        }

        .menu {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .dish {
            width: 30%;
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 10px;
            text-align: center;
            background-color: #f9f9f9;
        }

        .dish img {
            max-width: 100%;
            border-radius: 10px;
        }

        .dish h3 {
            margin: 10px 0;
            color: #333;
        }

        .dish p {
            font-size: 16px;
            color: #777;
        }

        .dish button {
            background-color: skyblue;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .dish button:hover {
            background-color: deepskyblue;
        }

        .cart {
            margin-top: 20px;
            border-top: 1px solid #ddd;
            padding-top: 20px;
        }

        #cart-items {
            list-style: none;
            padding: 0;
        }

        #cart-items li {
            margin: 5px 0;
            padding: 10px;
            background: #f1f1f1;
            border-radius: 5px;
        }

        #total-price {
            font-weight: bold;
        }

        .cart button {
            background-color: skyblue;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .cart button:hover {
            background-color: deepskyblue;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Order Now</h1>
    <div class="menu">
        <div class="dish">
            <img src="dish1.jpg" alt="Dish 1">
            <h3>Chicken Biryani</h3>
            <p>150.0</p>
            <button onclick="addToCart('Chicken Biryani', 150.0)">Add to Cart</button>
        </div>
        <div class="dish">
            <img src="dish2.jpg" alt="Dish 2">
            <h3>Egg Noodles</h3>
            <p>100.0</p>
            <button onclick="addToCart('Egg Noodles', 100.0)">Add to Cart</button>
        </div>
        <div class="dish">
            <img src="dish3.jpg" alt="Dish 3">
            <h3>Veg Manchuria</h3>
            <p>135.0</p>
            <button onclick="addToCart('Veg Manchuria', 135.0)">Add to Cart</button>
        </div>
        <div class="dish">
            <img src="dish4.jpg" alt="Dish 4">
            <h3>Masala Dosa</h3>
            <p>45.0</p>
            <button onclick="addToCart('Masala Dosa', 45.0)">Add to Cart</button>
        </div>
        <div class="dish">
            <img src="dish5.jpg" alt="Dish 5">
            <h3>Aloo Parata</h3>
            <p>60.0</p>
            <button onclick="addToCart('Aloo Parata', 60.0)">Add to Cart</button>
        </div>
        <div class="dish">
            <img src="dish6.png" alt="Dish 6">
            <h3>Mushroom Soup</h3>
            <p>200.0</p>
            <button onclick="addToCart('Mushroom Soup', 200.0)">Add to Cart</button>
        </div>
        <!-- Add more dishes as needed -->
    </div>

    <h2>Cart</h2>
    <div class="cart">
        <ul id="cart-items">
            <!-- Cart items will be added here -->
        </ul>
        <p>Total: <span id="total-price">0.00</span></p>
        <button onclick="checkout()">Checkout</button>
    </div>
</div>

<script>
    let cart = [];
    let totalPrice = 0;

    function addToCart(dishName, price) {
        cart.push({ dishName, price });
        totalPrice += price;
        updateCart();
    }

    function updateCart() {
        const cartItems = document.getElementById('cart-items');
        cartItems.innerHTML = '';
        cart.forEach((item, index) => {
            const li = document.createElement('li');
            li.textContent = `${item.dishName} - ${item.price.toFixed(2)}`;
            cartItems.appendChild(li);
        });
        document.getElementById('total-price').textContent = totalPrice.toFixed(2);
    }

    function checkout() {
        // Store the cart and total price in localStorage
        localStorage.setItem('cart', JSON.stringify(cart));
        localStorage.setItem('totalPrice', totalPrice.toFixed(2));
        // Redirect to the payment gateway page
        window.location.href = 'paymentgateway.html';
    }
</script>

</body>
</html>
