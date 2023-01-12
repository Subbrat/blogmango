<?php
 session_start();
//Database Configuration File
include('includes/config.php');
//error_reporting(0);
if(isset($_POST['login']))
  {
    // Getting username/ email and password
     $uname=$_POST['username'];
    $password=md5($_POST['password']);
    // Fetch data from database on the basis of username/email and password
$sql =mysqli_query($con,"SELECT AdminUserName,AdminEmailId,AdminPassword,userType FROM tbladmin WHERE (AdminUserName='$uname' && AdminPassword='$password')");
 $num=mysqli_fetch_array($sql);
if($num>0)
{
$_SESSION['login']=$_POST['username'];
$_SESSION['utype']=$num['userType'];
    echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
  }else{
echo "<script>alert('Invalid Details');</script>";
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
    <title>Admin Login • SciAstra Blog Page</title>
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/modernizr.min.js"></script>
    <link rel="stylesheet" href="./../css/s6css.css">
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
                    <div>
                        <div>
                            <input type="password" name="password" required="" placeholder="Password"
                                autocomplete="off">
                        </div>
                    </div>
                    <button class="s-grey s-hover-green" type="submit" name="login">Log In</button>
                    <br>
                    <br>
                </form>
            </div>
            <a href="../index.php"><i class="mdi mdi-home"></i> Blog Home</a>
            <br>
            <br>
            <a href="forgot-password.php"><i class="mdi mdi-lock"></i> Forgot password?</a>
        </div>
    </div>
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