<?php

require 'database.php';

$tbl_name = "counties"; // Table name 
mysqli_select_db($connection, "$db_name")or die("cannot select a DB");
$sql = "SELECT COUNTY_ID, GEOGDESC, CSOBARNAME, Total2011, Male2011, Female2011 FROM " . $tbl_name . " WHERE COUNTY_ID=" . $countyid;

$query = mysqli_query($connection, $sql);
if (!$query) {
    echo msqli_error();
    die("no viable  query present");
}

$data = array(); /* Data returned from the dB will be stored in this array */
for ($x = 0; $x < mysqli_num_rows($query); $x++) {

    $data[] = mysqli_fetch_assoc($query);
}
print( json_encode($data)); // Data is returned in JSON format.
mysqli_close($connection);
?>

