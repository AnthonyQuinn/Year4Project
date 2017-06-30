
<?php ?>
<!DOCTYPE html>
<html>
    <!--Notes: 25 june 2017 @ 13:00 Working on a basic read out of the authorisedusers  table -->
    <head>
        <!-- script  type="text/javascript" src="/WA_Repeat2016/js/update.js"></script --><!--Notes: This update.js may be useful. Leave it in for the moment -->
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

        <table  class="table table-hover">


            <tr>
                <th>Id</th>
                <th>Username&nbsp;</th>
                <th>Password</th>
                <th>Update </th>



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
                        print("<tr >");
                    } else {
                        print("<td>" . $rows['id'] . "</td>" . "<td contenteditable='true'>" . $rows['username'] . "</td>" . "<td contenteditable='true'>" . $rows['password'] . "</td>"  . "</td>". "<td>" . "<input  class='btn btn-primary' type='button' value='update'name='updateBtn' onclick='return update(this);'/>" . "</td>");
                        /*     print("<td>" . $rows['id'] . "</td>" . "<td  contenteditable='true'>" . $rows['username'] . "</td>" . "<td>" . $rows['password'] . "</td>" . "<td>" . "<input  class='btn btn-primary' type='button' value='update'name='updateBtn' onclick='return update(this);'/>" . "</td>"); */


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
    <!--?php
    print("<hr>");
    include "..\student_no_footer.php ";
    ?-->

</html>





