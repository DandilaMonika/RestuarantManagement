<!DOCTYPE html>
<html>
<head>
    <title>View All Orders</title>
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

        h1 {
            text-align: center;
            color: blue;
        }

        .order-list {
            margin-top: 20px;
            border-top: 1px solid #ddd;
            padding-top: 20px;
        }

        .order-list ul {
            list-style: none;
            padding: 0;
        }

        .order-list ul li {
            margin: 5px 0;
            padding: 10px;
            background: #f1f1f1;
            border-radius: 5px;
        }

        .order-list p {
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>All Orders</h1>
    <div class="order-list">
        <ul id="order-items">
            <!-- Order items will be added here -->
        </ul>
        <p>Total: <span id="total-price">0.00</span></p>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const orderItems = JSON.parse(localStorage.getItem('cart')) || [];
        const totalPrice = localStorage.getItem('totalPrice') || '0.00';

        const orderList = document.getElementById('order-items');
        orderItems.forEach(item => {
            const li = document.createElement('li');
            li.textContent = `${item.dishName} - ${item.price.toFixed(2)}`;
            orderList.appendChild(li);
        });

        document.getElementById('total-price').textContent = totalPrice;
    });
</script>

</body>
</html>
