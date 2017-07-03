
<?php ?>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="../js/update.js" type="text/javascript"></script>

    </head>
    <body>
        <h1>Admin-user management: Modified Development Project 2017</h1>
        <?php
        require 'configuration.php';
        require 'connectTodb.php';
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
                        print("<td name='id'>" . $rows['id'] . "</td>" . "<td name='username' contenteditable='true'>" . $rows['username'] . "</td>" . "<td name='password' contenteditable='true'>" . $rows['password'] . "</td>" . "</td>" . "<td>" . "<input  class='btn btn-primary' type='button' value='update'name='updateBtn' onclick='return update(this);'/>" . "&nbsp;" ."&nbsp;&nbsp;"."&nbsp;&nbsp;"."&nbsp;&nbsp;"."&nbsp;&nbsp;&nbsp;&nbsp;"."&nbsp;&nbsp;"."&nbsp;&nbsp;"."&nbsp;&nbsp;"."&nbsp;&nbsp;&nbsp;&nbsp;"."&nbsp;&nbsp;". "<span></span>" . "<input  class='btn btn-danger' type='button' value='Delete user'name='updateBtn2' onclick='return delete(this);'/>" . "</td>");




                        $x++;
                        if ($x == 1) {
                            print "</tr>";
                        }
                    }
                }
            ?>

        </table>
        
<?php
                print("<input class='btn btn-success' type='button' value='Add new user'name='updateBtn3' onclick='return addNewUser(this);'/>");

?>

        <?php
        print("<br>");

        ?>
        <?php
        mysqli_close($connection);
        ?>

    </body>


</html>





