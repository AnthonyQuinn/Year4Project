
<?php
  
/*Including the php session variable at the top of the file prevents unauthorised entry to a user who is not logged in.
 * In this particular case, access to the file is restricted to  an admin user who has been authenticated in the
 * admin_login.php file ie correct username, password and admin col value of 1
 * Once the $_SESSION['adminUsername'] has been set ( in the admin_login.php file ) its status ie set or not set can be verified 
 * within any of the project files. 
 * If the $_SESSION['adminUsername']  has not been set then thee is an automatic re-direction to the index.html file.  */
  session_start();
        if(!isset($_SESSION['adminUsername']) && !isset($_SESSION['adminPassword']))   /*This line is not throwing an error but its not preventing access to an un authorized user ie not redirecting to the main login page */
            

          /*  if(!isset($_SESSION['adminUsername'])) */   /*This works  */

    /*NOTE:  This needs to be checked, its throwing an error with the use of && or AND, no error when they are omitted ?  */
{
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

<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Visualization of Census Data 2011 from Ireland</title>
        <script src="js/login.js" type="text/javascript"></script>
        <!--script src="js/test.js" type="text/javascript"></script-->
        <!--NOTE: 7TH July added the Bootstrap links to display the "admin/management section" button -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body style="position: fixed; top: 0; left: 0; right: 0; bottom: 0; background: black; color: whitesmoke; font-family: Arial; text-align: center; width: 100%;">
        <div style="width: 100%; padding-top: 20%;">
            <h1>Visualization of Republic of Ireland Census Data 2011 </h1>
            <h2></h2>

            <div>
                <form>
                    <div style="margin-top: 4em; padding: 5px;">
                        <div></div>
                        <div id="loginerror" style="display: none; color: red; font-weight: bold;">ERROR username and/or password unknown</div>
                        <div>
                            <form>
                                <div style="display: inline-block; "><button class='btn btn-success'  formaction="counties.php">Visualize population by county and barony</button></div>
                                <div style="display: inline-block;"><button  class='btn btn-primary'formaction="housingVacancy.php" >Visualize housing vacancy rate</button></div>
                                <div style="display: inline-block;"><button class='btn btn-success' id="opt2" onclick="ajsFile2.js" >Visualize employment by industry</button></div>
                                <div style="display: inline-block;"><button class='btn btn-primary' id="opt2" onclick="ajsFile2.js" >Visualize employment by occupation</button></div>
                                <div style="display: inline-block;" ><button  class='btn btn-danger'  formaction="admin.php"> admin/management section </button></div>

                            </form>
                        </div>
                        <div>

                            <!--div style="display: inline-block; width: 100px;"><label for="password">password:</label></div-->
                            <!--div style="display: inline-block;"><input id="password" type="password" name="password" required/></div-->
                        </div>
                        <div>
                            <div style="display: inline-block; width: 100px;">&nbsp;</div>
                            <!--div style="display: inline-block;"><input id="submitbutton" type="submit" value="login"><a style="color:red;" href='registerUser.html'>Register</a></div-->
                            </form>
                        </div>
                    </div>
            </div>
        </div>

    </body>
</html>
