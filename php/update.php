
<?php

require 'connectTodb.php';


/* require 'session.php';    */ /* The session.php is commented out for the moment */

$tbl_name = "authorizedusers"; // Table name
$myId = $_GET["id"];
$myusername = $_GET['username'];

$mypassword = $_GET["password"];
print_r("user: ".$myusername." pass: ".$mypassword);

$myusername = stripslashes($myusername);
$myusername = mysqli_real_escape_string($connection, $myusername);
$sql = "UPDATE ".$tbl_name." SET username=\"".$myusername."\", password=\"".$mypassword."\" WHERE id=".$myId;
print_r($sql);
$result = mysqli_query($connection, $sql);
mysqli_close($connection); 
