/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function admin_login() {
    var adminUsername = document.getElementById("adminUsername").value;

    var adminPassword = document.getElementById("adminPassword").value;

    document.getElementById("admin_submit_btn").disabled = true;
    console.log("adminUsername: " + adminUsername + " adminPassword: " + adminPassword);
    var UrlToSend = "php/admin_login.php?adminUsername=" + adminUsername + "&adminPassword=" + adminPassword;
    if (window.XMLHttpRequest) {
        var xmlhttp = new XMLHttpRequest();
    } else {
        var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    console.log(UrlToSend);
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            var response = xmlhttp.responseText;
            console.log(response);
            if (response.trim() === "OK") {

                window.location = "/Year4Project/admin_menu.html";


            } else {
                document.getElementById("admin_loginerror").style.display = "block";

            }
              document.getElementById("admin_submit_btn").disabled = false;

        }
    };
    xmlhttp.open("GET", UrlToSend, true);
    xmlhttp.send();// The actual request is now being sent.
    return false;
}