<?php
session_start();
?>

<html>
    <head>

        <title> Register </title>
        <link rel="shortcut icon" type="image/png" href="img_logos/favicon.png">
       
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/registration.css">
       </head>

<body style='background:black'>
    

<?php
	date_default_timezone_set('Asia/Kolkata');
	require('db.php');
    // If form submitted, insert values into the database.
    if (isset($_REQUEST['email'])){
		$u_fname = stripslashes($_REQUEST['fname']); // removes backslashes
		$u_fname = mysqli_real_escape_string($con,$u_fname); //escapes special characters in a string
    $u_lname = stripslashes($_REQUEST['lname']);
		$u_lname = mysqli_real_escape_string($con,$u_lname);
    $u_email = stripslashes($_REQUEST['email']);
		$u_email = mysqli_real_escape_string($con,$u_email);
		$u_password = stripslashes($_REQUEST['password']);
		$u_password = mysqli_real_escape_string($con,$u_password);

		$trn_date = date("Y-m-d H:i:s");
        $query = "INSERT into `users` (f_name,l_name,email,password) VALUES ('$u_fname', '$u_lname', '$u_email', '$u_password')";
        $result = mysqli_query($con,$query);
        if($result){
         
            echo "<script>alert('Congrats $u_fname your account is created')</script>";
            include 'login.php';
          }
    }else{
?>



<div class="header">
<img src="img_logos/favicon.png" style='width:45px ;height: 45px;'>
<div class="header-right">
  <a href="home.php">Home</a>
    <a href="login.php">LogIn</a>
    <a class="active"  href="registration.php">SignUp</a>
   <a href="aboutus.php">Contact</a>

  </div>
</div>

<div class='register_div'>

    <header class='register_header'>
      <center>  <h1 class='h1_title'> Sign Up</h1></center>
    </header>
   

<form class='form1' action='' method='post'>
<div class='form1_group'>
<input type="text" name='fname' placeholder="Enter First name " class='f_input' required>
</div>


<div class='form1_group'> 
<input type="text" name='lname' placeholder="Enter Last name " class='f_input' required>
</div>


<div class='form1_group'> 
    <input type="email" name='email' placeholder="Enter Email Id" class='f_input' required>
    </div>


<div class='form1_group'>
<input type="password" name='password' placeholder="Enter Password" class='f_input' required >
</div>

<!-- <div class='form1_group'>
<input type="password" placeholder="Confirm Password" class='f_input' required >
</div> -->



<div >
<button class="register_btn">Submit</button>
<a href="login.php"><button class="login_btn" type="button" '>Login</button>
</a></div>
</form>
</div>

</body>


<!--Footer template is easily accessed with the help of php-->
<?php

include 'footer/footer.php'

?>

<?php
    }
    ?>

</html>
