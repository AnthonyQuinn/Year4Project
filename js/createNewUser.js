/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*Note: This is a .js file in  Year4Project 26th June 2017  */


function createNewUser(button) {

    var tr = button.parentElement.parentElement;
    var newUsername = tr.getElementsByTagName("td")[0].innerHTML;

    var newPassword = tr.getElementsByTagName("td")[1].innerHTML;
    var newUsertype = tr.getElementsByTagName("td")[2].innerHTML;




    console.log(" newUsername:" + newUsername + "newPassword:" + newPassword + "newUsertype"  + newUsertype);




    var UrlToSend = "registerUser.php?newUsername=" + newUsername + "&newPassword=" + newPassword +"&newUsertype" + newUsertype;


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
                window.location = "/Year4Project/php/admin.php";





            } else {
                /*  document.getElementById("registrationError").style.display = "block"; */
            }
            /*   document.getElementById("registrationbutton").disabled = false; */

        }
    };

    xmlhttp.open("GET", UrlToSend, true);

    xmlhttp.send();
}




