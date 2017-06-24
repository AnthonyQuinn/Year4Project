<?php
ini_set('display_errors', 1);/* A problem which was eventually identified as being the addition of white spaces in the return "OK" was encountered. */
ini_set('display_startup_errors', 1);/* The predceding two lines of code were included to identify the problem from any error message generated. */
require 'connectTodb.php'/** 'database.php' **/; 


  require 'session.php';   

$tbl_name = "authorizedusers"; // Table name
$myusername = $_REQUEST['username'];
$mypassword = $_REQUEST['password'];
mysqli_select_db($connection, "$db_name")or die("cannot select a DB");
$myusername = stripslashes($myusername);
$mypassword = stripslashes($mypassword);
$myusername = mysqli_real_escape_string($connection, $myusername);
$mypassword = mysqli_real_escape_string($connection, $mypassword);
$sql = "SELECT * FROM $tbl_name WHERE username='$myusername' and password='$mypassword'";
$result = mysqli_query($connection, $sql);
$count = mysqli_num_rows($result);
if ($count == 1) {
    session_start();
    $_SESSION['username'] = $myusername;

    print("OK"); 

} else {
    echo 'FAIL';
     mysqli_close($connection); 
    
}
