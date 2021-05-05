<?php
$fname=$_POST["name"];
$addrs=$_POST["address"];
$phone=$_POST["phone"];
$email=$_POST["email"];
$dob=$_POST["dob"];
$gender=$_POST["gender"];
$skill=$_POST["skill"];
$name=$_POST["nick"];
$pass=$_POST["pass1"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="select * from add_visitor where username='$name' and pswd='$pass'";
$result=mysql_query($query);
$count=mysql_num_rows($result);
if($count>0)
{
	header('location:admin_add_visitor.php?add=0');
}
else
{
	$query="insert into add_visitor(visitor_name,address,phone_num,dob,gender,email,username,pswd,skill) values('$fname','$addrs','$phone','$dob','$gender','$email','$name','$pass','$skill')";
	mysql_query($query);
	header('location:admin_add_visitor.php?add=1');
}
?>