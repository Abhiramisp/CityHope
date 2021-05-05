<?php
$iid=$_SESSION['iid'];
$drop=$_POST["drp_dwn"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="insert into  invest_item(iid,cid) values('$iid','$drop')";
mysql_query($query);
//header('location:money?add=1');
echo "mesage sending is succsesfull";
?>

