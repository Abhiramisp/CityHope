<?php
$fname=$_POST["first"];
$sname=$_POST["second"];
$addrs=$_POST["adds"];
$phone=$_POST["fon"];
$bldgrp=$_POST["drop"];
$gender=$_POST["gender1"];
$name=$_POST["uname"];
$pass=$_POST["pswd"];
$rpass=$_POST["rpswd"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="select * from investreg where uname='$name' and pswd='$pass'";
$result=mysql_query($query);
$count=mysql_num_rows($result);
if($count>0 && strlen($phone) < 10 || strlen($phone) > 14)
{
	header('location:investlog.php');
}
else
{
	$query="insert into investreg(first_name,second_name,address,phone_number,blood_group,gender,uname,pswd) values('$fname','$name','$addrs','$phone','$bldgrp','$gender','$name','$pass')";
	mysql_query($query);
	if($pass==$rpass)
	{
	header('location:in_action.php');
	}
	else
	{
	header('location:investlog.php');
	}
}
?>