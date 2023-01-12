<?php error_reporting(0);
if($_POST['subscribe']){
$semail=$_POST['email'];
$fname=$_POST['fname'];
$sql=mysqli_query($con,"insert into tblsubscribers(fullName,subscriberEmail) values('$fname','$semail')");
echo "<script>alert('added to SciAstra newsletter subscription');</script>";
echo "<script>window.location.href='index.php'</script>";
}
?>
<!-- FOOTER -->
<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <div class="footer-info">
                    <div class="section-title">
                        <h2>Contact</h2>
                    </div>
                    <?php
$pagetype='contactus';
$query=mysqli_query($con,"select PageTitle,Description from tblpages where PageName='$pagetype'");
while($row=mysqli_fetch_array($query))
{
?>
                    <address>
                        <p><?php echo $row['Description'];?></p>
                    </address>
                    <?php }  ?>
                    <div class="copyright-text">
                        <p>Copyright &copy; <?php echo date('Y');?> <?php echo $wtitle;?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="footer-info">
                    <div class="footer_menu">
                        <h2>Navigation</h2>
                        <ul>
                            <li><a href="#" class="s6slide">Top</a></li>
                            <li><a href="index.php">Home</a></li>
                            <li><a href="blog-posts.php">Blog</a></li>
                            <li><a href="about-us.php">About Us</a></li>
                            <li><a href="contact.php">Contact Us</a></li>
                            <li><a href="contact.php">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="footer-info newsletter-form">
                    <div class="section-title">
                        <h2>Signup for Newsletter</h2>
                    </div>
                    <div>
                        <div class="form-group">
                            <form method="post" method="get">
                                <input type="text" class="form-control" placeholder="Enter your Name" name="fname"
                                    id="fname" required>
                                <input type="email" class="form-control" placeholder="Enter your email" name="email"
                                    id="email" required>
                                <input type="submit"
                                    class=" s-button s-round-xlarge s-transparent s-hover-fade s-border"
                                    name="subscribe" id="form-submit" value="Send me">
                            </form>
                            <span><sup>*</sup>We aren't going to spam your inbox, chill !</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>