
<?php
session_start();
$con=mysqli_connect('localhost','root','root');
mysqli_select_db($con, 'website1');

$querry = "select * from u_products order by id desc";
$result = mysqli_query($con,$querry);

$row= mysqli_num_rows($result);
mysqli_close($con);

?>
<?php
$con=mysqli_connect('localhost','root','root');
mysqli_select_db($con,'website1');
if(isset($_POST['filter']))
{ 
$ser=$_POST['se'];
$q="select * from u_products where concat(p_name, p_desc) like '%$ser%'";

$result=filtert($q);

}

function filtert($q)
{
    
$con=mysqli_connect('localhost','root','root');
mysqli_select_db($con,'website1');
$result=mysqli_query($con,$q);
return $result;
}

?>

<html>
    <head>

        <title> Home </title>
        <link rel="shortcut icon" type="image/png" href="../img_logos/favicon.png">
       
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='stylesheet' herf='../css/u_products.css'>
       </head>

<body>
<?php
include 'u_header.php';

?>
 <form  class="form-inline" action="u_products.php"  method="post" enctype="multipart/form-data">
   <input style='float:right' class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name='se'>
    <button class="btn btn-outline-success my-2 my-sm-0" name="filter" type="submit">Search</button>
</div>
  </form>



<form class="form-inline">

<table class="table" style='margin-top:0px;'>

<?php
		global $result;
    while ($rows=mysqli_fetch_assoc($result)):?>

<div class="media">
<tr>
 <td> <img style='width:200px; height:200px' src="../admin/<?php echo $rows['p_image']; ?>" alt="Generic placeholder image"></td>
 
 <div class="media-body">
  
  <td><h5 class="mt-0"><?php echo $rows['p_name'].'<br>' .$rows['p_desc'].'<br>' . 'Rs. '. $rows['p_value'].'<br>';?></h5></td>   
 
    </tr>
  </div>
</div>

<?php endwhile;?>

    </table>
</form>
</body>

</html>

<style>
html, body {
  
  min-height: 100%;
  }
  body, div, form{ 
  padding: 15px;
  margin: 0;
  outline: none;
  font-family: Roboto, Arial, sans-serif;
  font-size: 20px;
  color: block;
  line-height: 22px;
  }





  h1 {
  position: absolute;
  margin: 0;
  font-family: 'Courier New';
font-weight:bold;
  font-size: 40px;
  color: #fff;
  z-index: 2;
  }
  h1,h3:hover{
    -webkit-mask-image: linear-gradient(-75deg, rgba(0,0,0,.6) 30%, #000 50%, rgba(0,0,0,.6) 70%);
    -webkit-mask-size: 200%;
    animation: shine 2s infinite;
}

 form {
    margin-top: 10px;
  width: 100%;
  padding: 20px;
  border-radius: 6px;
  background: #fff;
  box-shadow: 0 0 15px 0 rgb(0,0,0); 
  }
h5{ 
    padding-top:10px;
    color:black;
    font-size: 20px;
    font-family: 'comic';
font-weight:bold;
}


  p{
      text-align:center;
      
    color:black;
    font-size: 20px;
    font-family: 'Courier New';
font-weight:bold;
}




  </style>