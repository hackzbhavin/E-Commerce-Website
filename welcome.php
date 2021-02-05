<?php
include('auth.php')

?>

<html>
    <head>
        <title> Welcome User</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <link rel="shortcut icon" type="image/png" href="img_logos/favicon.png">
       
       <meta name="viewport" content="width=device-width, initial-scale=1">
    
    </head>
<body>

<div class="header">
<img src="img_logos/favicon.png" style='width:45px ;height: 45px;'>
<div class="header-right">
  <a class="active" href="home.php">Dashboard</a>
   <a href="aboutus.php">Contact</a>
   <a href="logout.php">Logout</a>


  </div>
</div>


<h1 style='color:white'> Welcome  <?php echo $_SESSION['email']; ?> </h1>







</body>


<?php

include 'footer/footer.php';

?>

    </html>
