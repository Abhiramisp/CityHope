<?php 
$sname=$_POST["site"];
$id=$_POST["drop"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");

$q=mysql_query("insert into send_site(vid,msg) values('$id','$sname')");

header('location:admin_assign_site.php?add=1');
echo "mesage sending is succsesfull";
?>