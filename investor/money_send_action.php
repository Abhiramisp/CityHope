<?php
$amount=$_POST["amount"];
$date=$_POST["date"];
$drop=$_POST["drp_dwn"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="insert into transaction(amount,tdat,Tmode) values('$amount','$date','$drop')";
mysql_query($query);
//header('location:money?add=1');
echo "mesage sending is succsesfull";
?>

