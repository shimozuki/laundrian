<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laundry Service</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .hero-section {
            background-image: url('https://cdn.prod.website-files.com/630ee44065c324573d5d1dfe/63c82d1b5512bc8ccaf4461c_marshall-williams-pYpZIOj-KKs-unsplash.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .hero-section p {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        .phone-number {
            margin-top: 20px;
            font-size: 1.2rem;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow">
        <div class="container-fluid">
            <div class="d-flex justify-content-center w-100">
                <a class="navbar-brand" href="#home">Air Laundry</a>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>


    <!-- Hero Section -->
    <section class="hero-section">
        <div class="overlay">
            <div class="container">
                <h1>Quality Laundry Service In Your City</h1>
                <p>We take care about cleanness of your cloth</p>
                <div>
                    <a href="{{ url('/login') }}" class="btn btn-primary btn-lg">Login</a>
                    <a href="{{ url('/register') }}" class="btn btn-secondary btn-lg">Register</a>

                </div>
            </div>
        </div>
    </section>

    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>