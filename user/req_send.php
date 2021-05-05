<?php
session_start();
$drop=$_POST["drp_dwn"];
$uid=$_SESSION['uid'];
mysql_connect("localhost","root","")or die("connection error");
mysql_select_db("disaster")or die("database error");
$query="insert into rqst_snd(uid,cid) values('$uid','$drop')";
mysql_query($query);
header('location:user_send_reqst.php?add=1');
/*echo "mesage sending is succsesfull";
echo $uid;*/
?>