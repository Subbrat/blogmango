<head>
    <link rel="stylesheet" href="./../css/s6css.css">
    <style>

    </style>
</head>

<div class="topbar">
    <!-- LOGO -->
    <div class="topbar-left">
        <!-- Image logo -->
        <a href="dashboard.php" class="logo">
            <span>
                <img src="assets/images/logo.png" alt="" height="63">
            </span>
            <i>
                <img src="assets/images/logo.png" alt="" height="45">
            </i>
        </a>
        <!-- <a href="dashboard.php" class="logo">Admin</a> -->

    </div>
    <!-- Button mobile view to collapse sidebar menu -->
    <div class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Navbar-left -->
            <ul class="nav navbar-nav navbar-left">
                <li>
                    <button class="button-menu-mobile open-left waves-effect">
                        <i class="mdi mdi-menu"></i>
                    </button>
                </li>
            </ul>
            <!-- Right(Notification) -->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown user-box">
                    <a href="" class="dropdown-toggle waves-effect user-link" data-toggle="dropdown"
                        aria-expanded="true">
                        <img src="assets/images/users/avatar-1.jpg" alt="user-img" class="img-circle user-img">
                    </a>
                    <ul
                        class="dropdown-menu dropdown-menu-right arrow-dropdown-menu arrow-menu-right user-list notify-list">
                        <li>
                            <h5>Hi, Admin</h5>
                            <!-- TODO mention current users name  -->
                        </li>
                        <li><a href="change-password.php"><i class="ti-settings m-r-5 s6-text-blue"></i> Change
                                Password</a></li>
                        <li><a href="logout.php"><i class="ti-power-off m-r-5 s6-text-red"></i> Logout</a>
                        </li>
                    </ul>
                </li>
            </ul> <!-- end navbar-right -->
        </div><!-- end container -->
    </div><!-- end navbar -->
</div>