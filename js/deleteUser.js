


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*Note: This is a .js file in  Year4Project 26th June 2017  */


function deleteUser(button) {
      var tr = button.parentElement.parentElement;
    var id = tr.firstElementChild.innerHTML;



     
   
         console.log( " id:" + id );   




        var UrlToSend = "deleteUser.php?id=" + id  ;   


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
                                window.location = "Year4Project/php/admin.php ";  




            } else {
              /*  document.getElementById("registrationError").style.display = "block"; */
            }

        }
    };

    xmlhttp.open("GET", UrlToSend, true);

    xmlhttp.send();
}




