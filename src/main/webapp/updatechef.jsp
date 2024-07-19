<!DOCTYPE html>
<html>
<head>
<title>Update Chef</title>
<style>
    body {
        background-color: lightblue;
        font-family: Arial, sans-serif;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    .form-container {
        width: 25%;
        margin: auto;
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
    }
    .form-group input[type="number"],
    .form-group input[type="text"] {
        width: calc(100% - 16px);
        padding: 8px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .form-group input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #007BFF;
        color: white;
        cursor: pointer;
        font-size: 16px;
    }
    .form-group input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<h1>Update Chef</h1>
<div class="form-container">
    <form method="post" action="productchef.jsp">
        <div class="form-group">
            <label for="id"><b></b></label>
            <input type="number" id="id" name="id" placeholder="Id" required>
        </div>
        
        <div class="form-group">
            <label for="price"><b></b></label>
            <input type="text" id="email" name="email" placeholder="Email" required>
        </div>
        
        <div class="form-group">
            <label for="price"><b></b></label>
            <input type="text" id="phno" name="phno" placeholder="Phone number" required>
        </div>
        
        <div class="form-group">
            <label for="price"><b></b></label>
            <input type="text" id="yoe" name="yoe" placeholder="Years of Experience" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Update">
        </div>
    </form>
</div>
</body>
</html>
