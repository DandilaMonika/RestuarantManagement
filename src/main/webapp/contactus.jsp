<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #add8e6; /* Light blue background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .contact-form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .contact-form h2 {
            margin-bottom: 20px;
            font-size: 24px;
            text-align: center;
        }
        .contact-form input, 
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .contact-form button {
            width: 100%;
            padding: 10px;
            background: #007bff; /* Blue button */
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .contact-form button:hover {
            background: #0056b3;
        }
        .error {
            color: red;
            margin-bottom: 10px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="contact-form">
        <h2>Contact Us</h2>
        <div class="error" id="error"></div>
        <input type="text" id="name" placeholder="Your Name">
        <input type="email" id="email" placeholder="Your Email">
        <textarea id="message" placeholder="Your Message" rows="4"></textarea>
        <button onclick="validateForm()">Submit</button>
    </div>

    <script>
        function validateForm() {
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const message = document.getElementById('message').value;
            const error = document.getElementById('error');

            if (!name || !email || !message) {
                error.style.display = 'block';
                error.textContent = 'All fields are required!';
                return false;
            }

            if (!validateEmail(email)) {
                error.style.display = 'block';
                error.textContent = 'Invalid email address!';
                return false;
            }

            error.style.display = 'none';
            alert('Form submitted successfully!');
            // You can add your form submission code here
        }

        function validateEmail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return re.test(String(email).toLowerCase());
        }
    </script>
</body>
</html>
