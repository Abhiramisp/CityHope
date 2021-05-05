<?php
session_start();
if(!isset($_SESSION['vid']))
{
	header('location:siter_login.php');
}
?>