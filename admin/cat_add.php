<?php
$item=$_POST["item"];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="select * from catagerylist WHERE Items='$item'";
$result=mysql_query($query);
$count=mysql_num_rows($result);
if($count>0)
{
	header('location:add_catagory.php?add=0');
	
}
else
{
$query="insert into catagerylist(Items) values('$item')";
mysql_query($query);
header('location:add_catagory.php?add=1');

}
?>