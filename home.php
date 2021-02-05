<html>
    <head>

        <title> Home </title>
        <link rel="shortcut icon" type="image/png" href="img_logos/favicon.png">
       
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/home.css">
       </head>

<body>


<!-- Navigation Menu-->
<div class="Header">
    
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="about.php">About</a>
        <a href="login.php">Login</a>
        <a href="registration.php">Register</a>
        <a href="contact.php">Contact</a>
        
      </div>
      <div class="sidenav_btn">
      <span style="font-size:40px;cursor:pointer;float: right; color:white" onclick="openNav()">&#9776;</span>
    </div>
    
    <div class="Header-background"></div>
        <div class="Header-content">
            <div class="Header-hero">
                <center> <p><img src="img_logos/favicon.png" style="width: 90px; height: 90px;"></p></center>
                <h1>This is Home Page <br /> ever seen</h1>
                <p class='p_shine'>You'll be blown away with all it does
        
            </p><a href="registration.php"><button  class="Button">Signup</button></a>   
        </p><a href="login.php"><button  class="Button" style='background: black;'>LogIn</button></a>
            
            </div>
            
        </div>
    </div>
</div>

<!-- this is for only navigation menu-->
<script>
    function openNav() {
      document.getElementById("mySidenav").style.width = "100%";
    }
    
    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    }
    </script>

</body>
<?php
    include 'footer/footer.php'
?>
</html>

