<?php
session_start(); 
if (empty($_SESSION['email'])) { /*This line needs to be changed to something more suitable. */
    header('Location:/Year4Project/index.html'); 

    exit;
}
/* NOTE : 7th July 2017 The coding needs to be amended, so that it includes the name of the admin user and
 *  the Admin column value 1 (for user)  The file 
 * should then be inclu8ded at the top of the admin_menu.html file, so as to prevent unauthorized 
 * access by "normal" users.
 *   */
/*This is the validate_session.php file in the Year4Project */