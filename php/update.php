
<?php
require 'connectTodb.php'; 


 /* require 'session.php';    */ /*The session.php is commented out for the moment*/

$tbl_name = "authorizedusers"; // Table name
/* $myId = $_REQUEST['id']; */
$myId = $_GET["id"];
var_dump($myId, $tbl_name);
/* $myusername = $_REQUEST['username']; */
$myusername = $_GET["username"];
var_dump($myusername);

/* $mypassword = $_REQUEST['password']; */
$mypassword = $_GET["password"];

mysqli_select_db($connection, '$db_name')or die("cannot select a DB");
$myusername = stripslashes($myusername);
$mypassword = stripslashes($mypassword);
$myusername = mysqli_real_escape_string($connection, $myusername);
$mypassword = mysqli_real_escape_string($connection, $mypassword);
/* $sql = "UPDATE  $tbl_name SET username='$myusername' and password='$mypassword' WHERE id='$myId' "; */
$sql = "UPDATE"."'$tbl_name'"." SET username="."'$myusername' and  WHERE id="."'$myId'. ";




$result = mysqli_query($connection, $sql);
$count = mysqli_num_rows($result);
if ($count == 1) {
   /*
    *  session_start();
    */
    /*
    $_SESSION['username'] = $myusername;
*/
    print("OK"); 

} else {
    echo 'FAIL';
     mysqli_close($connection); 
    
}
