<?php
session_start();
$name=$_POST["uname"];
$pass=$_POST["pswd"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="select * from add_visitor where username='$name' and pswd='$pass'";
$result=mysql_query($query);
$row=mysql_fetch_array($result);
$count=mysql_num_rows($result);
if($count>0)
{
	$_SESSION['vid']=$row[0];
	header('location:siter_action.php');
}
else
{
header('location:siter_login.php');
}
?>