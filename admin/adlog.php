<?php
$name=$_POST["uname"];
$pass=$_POST["pswd"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="select * from adminlogin where username='$name' and password='$pass'";
$result=mysql_query($query);
$count=mysql_num_rows($result);
if($count>0)
{
	header('location:admin_action.php');
}
else
{
header('location:admin_login.php');
}
?>