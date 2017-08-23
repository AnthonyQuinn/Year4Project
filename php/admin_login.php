
<?php

require 'connectTodb.php';
/* This is the admin_login.php file */

/* require 'session.php';    */ /* NOTE: 8th July 2017 Commented this out temprorarily */

$tbl_name = "authorizedusers"; // Table name
$myadmin_username = $_REQUEST['adminUsername'];
$myadmin_password = $_REQUEST['adminPassword'];
mysqli_select_db($connection, "$db_name")or die("cannot select a DB");
$myadmin_username = stripslashes($myadmin_username);
$myadmin_password = stripslashes($myadmin_password);
$myadmin_username = mysqli_real_escape_string($connection, $myadmin_username);
$myadmin_password = mysqli_real_escape_string($connection, $myadmin_password);
$sql = "SELECT * FROM $tbl_name WHERE username='$myadmin_username' and password='$myadmin_password'and Admin=1";
$result = mysqli_query($connection, $sql);
$count = mysqli_num_rows($result);
if ($count == 1) {
    session_start();
    $row = mysqli_fetch_assoc($result);

    $_SESSION['adminUsername'] = $myadmin_username;
    $_SESSION['adminPassword'] = $myadmin_password;



    print("OK");
} else {
    echo 'FAIL';
    mysqli_close($connection);
}
