/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*Note: This is a .js file in  Year4Project 26th June 2017  */


function update(button) {

    var tr = button.parentElement.parentElement;
    var id = tr.firstElementChild.innerHTML; 
     var username = tr.getElementsByTagName("td")[1].innerHTML;   
console.log("user"+username);
     var password = tr.getElementsByTagName("td")[2].innerHTML;  
console.log("password"+password);
     
   /* var username = tr.getElementsByTagName("td")[1].firstElementChild.innerHTML;  */  
     /*  var username = tr.getElementsByTagName("td").length;   */ 

  /* var count = tr.childNodes.length; */
        

      /*  var username = tr.getElementsByTagName("td")[2].firstElementChild.value;   */  



    /*  var password = tr.getElementsByTagName("td")[3].firstElementChild.value; */
   /* var password = tr.getElementsByTagName("td")[2].firstElementChild.value; */






  /*  console.log("id: " + id + " username:" + username + "password:" + password);   */
         console.log("id: " + id  + " username:" + username + "password" + password);   
               /* console.log("id: " + id );   */




    var UrlToSend = "update.php?id=" + id  + "&password=" + password;   
      /*  var UrlToSend = "update.php?id=" + id ;   */

    if (window.XMLHttpRequest) {
        var xmlhttp = new XMLHttpRequest();
    } else {
        var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }

    xmlhttp.open("POST", UrlToSend, true);

    xmlhttp.send();
}




