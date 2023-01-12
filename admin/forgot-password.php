<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit']))
  {
    $username=$_POST['username'];
    $email=$_POST['email'];
$password=md5($_POST['newpassword']);
        $query=mysqli_query($con,"select id from tbladmin where  AdminEmailId='$email' and AdminUserName='$username' ");
    $ret=mysqli_num_rows($query);
    if($ret>0){
      $query1=mysqli_query($con,"update tbladmin set AdminPassword='$password'  where  AdminEmailId='$email' && AdminUserName='$username' ");
       if($query1)
   {
echo "<script>alert('Password successfully changed');</script>";
echo "<script type='text/javascript'> document.location = 'index.php'; </script>";
   }
    }
    else{
      echo "<script>alert('Invalid Details. Please try again.');</script>";
    }
  }
  ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="sciastra blog page">
    <meta name="author" content="admin @ sciastra">
    <title>Reset password • SciAstra Blog Page</title>
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/modernizr.min.js"></script>
    <link rel="stylesheet" href="./../css/s6css.css">
    <script type="text/javascript">
    function checkpass() {
        if (document.changepassword.newpassword.value != document.changepassword.confirmpassword.value) {
            alert('New Password and Confirm Password field does not match');
            document.changepassword.confirmpassword.focus();
            return false;
        }
        return true;
    }
    </script>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Comfortaa&display=swap');
    body {
        background: #e0e0e0;
    }
    .login {
        width: 450px;
        padding: 3% 0 0;
        margin: auto;
        font-family: 'Comfortaa', cursive;
        border-radius: 50px;
    }
    .form {
        position: relative;
        z-index: 1;
        background: #FFFFFF;
        border-radius: 10px;
        max-width: 600px;
        margin: 0 auto 100px;
        padding: 45px;
        text-align: center;
        border-radius: 50px;
        background: #e0e0e0;
        box-shadow: -11px 11px 22px #bebebe, 11px -11px 22px #ffffff;
    }
    .form input {
        outline: 0;
        background: #e0e0e0;
        width: 100%;
        border: 0;
        border-radius: 5px;
        margin: 0 0 15px;
        padding: 15px;
        box-sizing: border-box;
        font-size: 14px;
        font-family: 'Comfortaa', cursive;
    }
    .form input:focus {
        background: #e0e0e0;
    }
    a {
        text-decoration: none;
    }
    .form button {
        font-family: 'Comfortaa', cursive;
        text-transform: uppercase;
        outline: 0;
        background: #e0e0e0;
        width: 100%;
        border: 0;
        border-radius: 5px;
        padding: 15px;
        color: #FFFFFF;
        font-size: 14px;
        -webkit-transition: all 0.3 ease;
        transition: all 0.3 ease;
        cursor: pointer;
    }
    .form button:active {
        background: #395591;
    }
    </style>
</head>
<body>
    <!-- HOME -->
    <div class="login">
        <div class="form">
            <?php $query=mysqli_query($con,"select * from tblsite");
while($row=mysqli_fetch_array($query)){
$logo=$row['siteLogo'];
$wtitle=$row['siteTitle'];
}  ?>
            <a href="../index.php" class="text-success">
                <span><img src="assets/images/<?php echo $logo;?>" alt="" height="70"></span>
                <br>
                <br>
                <font style=" font-size: 20px; font-weight:bold; padding-left: 1%">
                    <?php echo $wtitle;?></font>
            </a>
            <br>
            <br>
            <div>
                <form class="login-form" method="post">
                    <div class=" ">
                        <div>
                            <input type="text" required="" name="username" placeholder="Username" autocomplete="off">
                        </div>
                    </div>
                    <div class=" ">
                        <div>
                            <input type="text" required="" name="email" placeholder="Email" autocomplete="off">
                        </div>
                    </div>
                    <div>
                        <div>
                            <input type="password" id="userpassword" name="confirmpassword"
                                placeholder="Confirm Password">
                        </div>
                    </div>
                    <div>
                        <div>
                            <input type="password" id="userpassword" name="newpassword" placeholder="New Password">
                        </div>
                    </div>
                    <div>
                        <div>
                            <button class="s-grey s-hover-green" type="submit" name="submit">Reset</button>
                        </div><br><br>
                    </div>
                </form>
                <a href="../index.php"><i class="mdi mdi-home"></i> Back Home</a>
            </div>
        </div>
    </div>
    <!-- end card-box-->
    <!-- END HOME -->
    <script>
    var resizefunc = [];
    </script>
    <!-- jQuery  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/detect.js"></script>
    <script src="assets/js/fastclick.js"></script>
    <script src="assets/js/jquery.blockUI.js"></script>
    <script src="assets/js/waves.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>
</body>
</html>