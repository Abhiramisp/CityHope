<?php
session_start();
$msg=$_POST["name"];
$s=$_SESSION['uid'];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="insert into complaint_message(uid,complaint_message) values('$s','$msg')";
mysql_query($query);
header('location:complent.php?add=1');
//echo "mesage sending is succsesfull";
?>