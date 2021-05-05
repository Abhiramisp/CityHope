<?php
$fname=$_POST["first"];
$sname=$_POST["second"];
$addrs=$_POST["address"];
$phone=$_POST["phone_number"];
$email=$_POST["email"];
$name=$_POST["nick"];
$pass=$_POST["pass1"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="select * from user_reg where username='$name' and pswd='$pass'";
$result=mysql_query($query);
$count=mysql_num_rows($result);
if($count>0 && strlen($phone) < 10 || strlen($phone) > 14)
{
	header('location:login.php');
}
else
{
	$query="insert into user_reg(first_name,second_name,address,phone_number,email,username,pswd) values('$fname','$sname','$addrs','$phone','$email','$name','$pass')";
	mysql_query($query);
	header('location:action.php');
}
?>