function login() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    document.getElementById("submitbutton").disabled = true;
     console.log("username: " + username + " password: " + password); 
    var UrlToSend = "php/login.php?username=" + username + "&password=" + password;
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
                window.location = "/Year4Project/menu.html";

            } else {
                document.getElementById("loginerror").style.display = "block";

            }
            document.getElementById("submitbutton").disabled = false;
        }
    };
    xmlhttp.open("GET", UrlToSend, true);
    xmlhttp.send();// The actual request is now being sent.
    return false;
}