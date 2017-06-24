/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*Function registerUser:
*/
function registerUser() {
    var newUsername = document.getElementById("newUsername").value;
    var newPassword = document.getElementById("newPassword").value;
    /*  console.log("newUsername: " + newUsername + " newPassword: " + newPassword); */

    document.getElementById("registrationbutton").disabled = true;
    var UrlToSend = "php/registerUser.php?newUsername=" + newUsername + "&newPassword=" + newPassword;
    if (window.XMLHttpRequest) {
        var xmlhttp = new XMLHttpRequest();
    } else {
        var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            var response = xmlhttp.responseText;
           console.log(response); 
            if (response === "OK") {
                window.location = "index.html "; 


            } else {
                document.getElementById("registrationError").style.display = "block";
            }
            document.getElementById("registrationbutton").disabled = false;

        }
    };
    xmlhttp.open("GET", UrlToSend, true);
    xmlhttp.send();// The actual request is now being sent.
    return false;
}