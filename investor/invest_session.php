<?php
session_start();
if(!isset($_SESSION['iid']))
{
	header('location:in_login.php');
}
?>