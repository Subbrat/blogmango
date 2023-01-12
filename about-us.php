<?php session_start();
include_once('includes/config.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>About Us • SciAstra Blog Page Test</title>
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
    <link rel="stylesheet" href="./css/s6css.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
    <?php include_once('includes/header.php') ?>
    <section>
        <div class="container">
            <div class="text-center">
                <h1>About Us</h1>
            </div>
        </div>
    </section>

    <div class="container s-padding-large ">
        <div class="row">
            <div class="col-md-offset-1 col-md-4 col-xs-12 pull-right">
                <img src="images/abus.png" class="img-responsive" alt="">
            </div>
            <div class="col-md-7 col-xs-12">
                <div class="about-info">

                    <?php
$pagetype='aboutus';
$query=mysqli_query($con,"select PageTitle,Description from tblpages where PageName='$pagetype'");
while($row=mysqli_fetch_array($query))
{
?>
                    <figure>
                        <figcaption>
                            <p><?php echo $row['Description'];?></p>
                        </figcaption>
                    </figure>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
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