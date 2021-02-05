<?php


session_start();
session_unset();
session_destroy();
header('Location: home.php');

/*
if(session_destroy()) // Destroying All Sessions
{
header("Location: home.php"); // Redirecting To Home Page
}*/
?>