<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Store Finder</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #f3f3f3;
        }
        .store-finder {
            background: url('dosa.png') no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .store-finder h1 {
            font-size: 3em;
            color: white;
            margin-bottom: 20px;
        }
        .search-bar {
            display: flex;
            align-items: center;
        }
        .search-bar input {
            padding: 10px;
            font-size: 1em;
            border: none;
            margin-right: 10px;
            border-radius: 5px;
            width: 300px;
        }
        .search-bar button {
            padding: 10px;
            font-size: 1em;
            border: none;
            background-color: #ff6600;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .location-btn {
            display: flex;
            align-items: center;
            background: white;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            margin-bottom: 20px;
        }
        .location-btn svg {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="store-finder">
        <h1>STORE FINDER</h1>
        <div class="location-btn" onclick="useCurrentLocation()">
            <svg width="24" height="24" fill="currentColor" viewBox="0 0 16 16">
                <path d="M8 0a8 8 0 1 0 8 8A8 8 0 0 0 8 0zm0 15A7 7 0 1 1 15 8 7 7 0 0 1 8 15zm.93-6.588l-2.29.287a.5.5 0 0 0-.401.401l-.287 2.29a.5.5 0 0 0 .588.588l2.29-.287a.5.5 0 0 0 .401-.401l.287-2.29a.5.5 0 0 0-.588-.588zM8 4a1 1 0 1 1-1 1 1 1 0 0 1 1-1z"/>
            </svg>
            Use My Current Location
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Enter City or Zip/Postal Code">
            <button onclick="searchStore()">SEARCH</button>
        </div>
    </div>

    <script>
        function useCurrentLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }

        function showPosition(position) {
            alert("Latitude: " + position.coords.latitude + 
            "\nLongitude: " + position.coords.longitude);
        }

        function searchStore() {
            const query = document.querySelector('.search-bar input').value;
            alert("Searching for stores near: " + query);
        }
    </script>
</body>
</html>
