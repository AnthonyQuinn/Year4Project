<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
require 'connectTodb.php'/** 'database.php' **/; 

/** The database.php file was missing, so a copy
 * was made of the connectTodb.php file in the WA_Repeat2016 folder. The configuration.php file
 *  in the same folder was also copied and $db_name = 'developmentproject2017' **/
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
