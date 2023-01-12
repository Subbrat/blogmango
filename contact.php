<?php session_start();
include_once('includes/config.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>About Us • SciAstra</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
    <!-- PRE LOADER -->
    <section class="preloader">
        <div class="spinner">
            <span class="spinner-rotate"></span>
        </div>
    </section>
    <?php include_once('includes/header.php') ?>
    <section>
        <div class="container">
            <div class="text-center">
                <h1>Contact Us</h1>
                <br>
                <p class="lead">we love conversations. let us talk!
                    <br>
                <p>Donec non velit ac diam pellentesque pretium. Phasellus maximus, turpis et aliquet luctus, lectus est
                    molestie quam, quis pellentesque turpis magna vitae urna. In ut quam ut neque facilisis venenatis.
                    Vestibulum viverra libero nec orci gravida, eu molestie orci ullamcorper. Vivamus lacinia fermentum
                    vestibulum.</p>
                </p>
            </div>
        </div>
    </section>
    <!-- CONTACT -->
    <!-- FOOTER -->
    <?php include_once('includes/footer.php') ?>
    <!-- SCRIPTS -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>