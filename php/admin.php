<?php
/* Including the php session variable at the top of the file prevents unauthorised entry to a user who is not logged in.
 * In this particular case, access to the file is restricted to  an admin user who has been authenticated in the
 * admin_login.php file ie correct username, password and admin col value of 1
 * Once the $_SESSION['adminUsername']and $_SESSION['adminPassword'] has been set ( in the admin_login.php file ) its status ie set or not set can be verified 
 * within any of the project files. 
 * If the $_SESSION['adminUsername'] and $_SESSION['adminPassword'] has not been set then thee is an automatic re-direction to the index.html file.  */
session_start();
if (!isset($_SESSION['adminUsername']) && !isset($_SESSION['adminPassword'])) /* July 14 Bastille Day This is working now ie its re-directing to the index file if the user is not logged in as an administrator */

/*   if(!isset($_SESSION['adminUsername'])) */



/* NOTE: 8th July 2017 :  This needs to be checked, its throwing an error with the use of && or AND, no error when they are omitted ?  */ {
    header("Location: /Year4Project/index.html");

    exit;
}

/* The exit command is included to stop any further execution of the page and
 *  so as to prevent determined hackers or bots from circumventing the browser header and causing 
 * problems.
 * 
 *  Online research into this topic would indicate that the use of the
 * die() function or exit as has been used in this case are equally sufficent for this purpose. */
?>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="../js/update.js" type="text/javascript"></script>
        <link href="../css/fixed.css" rel="stylesheet" type="text/css"/>
        <script src="../js/deleteUser.js" type="text/javascript"></script>
    </head>
    <body>
        <h1>Admin-user management: Modified Development Project 2017</h1>
<?php
require 'configuration.php';
require 'connectTodb.php';
?>
        <?php
        include 'createNewUserModal.html';


/*
        print("<div class='btn-group' role='group' aria-label='Button group with nested dropdown'> ");
        print("<select><option><div class='fixed'><button type='button' class='btn btn-info btn-lg' data-toggle='modal' data-target='#myModal'>Add new user</button></div></option>");
        print("<option><div class='fixed'><button type='button' class='btn btn-info btn-lg' data-toggle='modal' data-target='#myModal'>Add new admin user</button></div><option></select>");
*/
          print("<div><button type='button' class='btn btn-info btn-lg' data-toggle='modal' data-target='#myModal'>Add new user</button></div>"); 



        print("</div>");
        ?>
        <table   class="table table-hover" >



            <tr>


                <th>Id&nbsp;</th>
                <th>Username</th>
                <th>Password </th>
                <th>Update user details &nbsp;&nbsp;&nbsp;&nbsp;Delete user </th>

            </tr>

<?php
$sql = "SELECT `id`,`username`,`password` FROM `authorizedusers` ";

$result = mysqli_query($connection, $sql);
print mysql_error();
if (!$result) {
    die('Could not query:' . mysql_error());
}
while ($rows = mysqli_fetch_array($result))
    for ($x = 0; $x <= 2; $x++) {
        if ($x == 0) {
            print("<tr class='table'>");
        } else {
            print("<td name='id'>" . $rows['id'] . "</td>" . "<td name='username' contenteditable='true'>" . $rows['username'] . "</td>" . "<td name='password' contenteditable='true'>" . $rows['password'] . "</td>" . "</td>" . "<td>" . "<input  class='btn btn-primary' type='button' value='update'name='updateBtn' onclick='return update(this);'/>" . "&nbsp;" . "&nbsp;&nbsp;" . "&nbsp;&nbsp;" . "&nbsp;&nbsp;" . "&nbsp;&nbsp;&nbsp;&nbsp;" . "&nbsp;&nbsp;" . "&nbsp;&nbsp;" . "&nbsp;&nbsp;" . "&nbsp;&nbsp;&nbsp;&nbsp;" . "&nbsp;&nbsp;" . "<span></span>" . "<input  class='btn btn-danger' type='button' value='Delete user'name='updateBtn2' onclick='return deleteUser(this);'/>" . "</td>");




            $x++;
            if ($x == 1) {
                print "</tr>";
            }
        }
    }
?>

        </table>




<?php
print("<br>");
?>
        <?php
        mysqli_close($connection);
        ?>


    </body>


</html>





