
<?php

require 'connectTodb.php'; 
/* require 'session.php'; */

$tbl_name = "authorizedusers"; // Table name
$myId = $_REQUEST['id'];
mysqli_select_db($connection, "$db_name")or die("cannot select a DB");

 $sql = "DELETE FROM $tbl_name  WHERE id=".$myId ; 





$result = mysqli_query($connection, $sql);

if ($result) {

    echo "OK";  
} else {
    echo "FAIL";
        
}


