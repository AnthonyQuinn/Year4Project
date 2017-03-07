/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*Function registerUser:
 * The flow of execution proceeds as expected until line 21, at which 
 * point it halts.The input username/password fields revert to their initial values.
 * The input password/username is saved to the database. 
 * The returned "OK"  value is not reckognized and the flow,halts.*/
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
    /*  document.getElementById('registrationForm').value = "";*//*The execution is not reaching this line, the registrationError is being triggered */
    xmlhttp.open("GET", UrlToSend, true);
    xmlhttp.send();// The actual request is now being sent.
    return false;
}