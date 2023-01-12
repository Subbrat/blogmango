<head>
    <link rel="stylesheet" href="./../css/s6css.css">
</head>
<!-- <section class="preloader">
         <div class="spinner">
             <span class="spinner-rotate"></span>
         </div>
     </section> -->
<section class="navbar custom-navbar" role="navigation">
    <div class="">
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>
            <?php $query=mysqli_query($con,"select * from tblsite");
while($row=mysqli_fetch_array($query)){
$logo=$row['siteLogo'];
$wtitle=$row['siteTitle'];
}  ?>
            <div align="s-center" class="s-hide-large ">
                <a href="index.php">
                    <img src="admin/assets/images/<?php echo $logo;?>" width="50">
                </a>
            </div>
        </div>
        <!-- MENU LINKS -->
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-nav-first">
                <li class="s-hide-small s-hide-medium"><a href="index.php"> <img
                            src="admin/assets/images/<?php echo $logo;?>" width="50"></a></li>
            </ul>
            <ul class="nav navbar-nav navbar-nav-first s-right s-large">
                <li><a href="index.php">Home</a></li>
                <li><a href="blog-posts.php">Blog</a></li>
                <li><a href="about-us.php">About Us</a></li>
                <li><a href="contact.php">Contact Us</a></li>
                <li><a href="admin/">Admin Login</a></li>
            </ul>
        </div>
    </div>
</section>