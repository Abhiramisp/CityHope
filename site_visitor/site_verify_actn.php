<?php
session_start();
$myid=$_SESSION['vid'];
$A=$_POST["sel"];
$msg=$_POST['msg'];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="insert into site_manager(vid,msg) values('$msg')";
mysql_query($query);
if($A=='1')
{
	$q="insert into site_manager(vid,confirmation_status,reject_status,msg) values('$myid','1','0','$msg')"; 
	mysql_query($q);
	header('location:site_verification.php?add=1');
}
else if($A=='2')
{
	$q="insert into site_manager(vid,confirmation_status,reject_status,msg) values('$myid','0','1','$msg')"; 
	 mysql_query($q);
	header('location:site_verification.php?add=1');
}
?>
