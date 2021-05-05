<?php
$name=$_POST["uname"];
$pass=$_POST["pswd"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="select * from user_reg where username='$name' and pswd='$pass'";
$result=mysql_query($query);
$count=mysql_num_rows($result);
if($count>0)
{
	$row=mysql_fetch_array($result);
	session_start();
	$_SESSION['uid']=$row['0'];
	header('location:action.php');
}
else
{
header('location:login.php');
}
?>