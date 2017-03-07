 // JavaScript Document
/*
 * Function name :getPopulationByCounty
 * 
 * 
 * 
 * Parameters: 
 * countyid:  
 * 
 * 
 * elementId;
 * 
 */


function getPopulationByCounty(countyid, elementId) {
    if (typeof countyid === "undefined") {
        countyid = document.getElementById('selectCounty').value;
    }
    if (window.XMLHttpRequest) {
        var xmlhttp = new XMLHttpRequest();
    } else {
        var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    var PageToSendTo = "php/getPopulationData.php";
    var VariablePlaceholder = "?countyId=";
    var myVariable = countyid;
    var UrlToSend = PageToSendTo + VariablePlaceholder + myVariable;
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            var dataReturn = JSON.parse(xmlhttp.responseText);
            var data = [];
            for (i = 0; i < dataReturn.length; i++) {
                data.push({countyid: dataReturn[i].COUNTY_ID,
                    county: dataReturn[i].GEOGDESC,
                    label: dataReturn[i].CSOBARNAME,
                    value: +dataReturn[i].Total2011,
                    male: +dataReturn[i].Male2011,
                    female: +dataReturn[i].Female2011});
            }
                if (document.getElementById("piebutton").checked) {
                    createPieChart(data, elementId);
                }
                if (document.getElementById("barbutton").checked) {
                    createBarChart(data, elementId);
                }
        }
    };
    xmlhttp.open("GET", UrlToSend, true);
    xmlhttp.send();// The actual request is now being sent.
}


function registerUser(){
    
    document.getElementById("registerbutton").setAttribute("onclick",reDirect());
    
    
    
    
    
}
function reDirect(){
    
    
    window.location="php/registerNewUser.php";
    
    
    
}
/*
 * Function name :getHousingVacancy
 * 
 * 
 * 
 * Parameters: 
 * countyid:  
 * 
 * 
 * elementId;
 * 
 */
function getHousingVacancy(countyid, elementId) {
    if (typeof countyid === "undefined") {
        countyid = document.getElementById('selectCounty').value;
    }
    if (window.XMLHttpRequest) {
        var xmlhttp = new XMLHttpRequest();
    } else {
        var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    var PageToSendTo = "php/getHousingVacancy.php";
    var VariablePlaceholder = "?countyId=";
    var myVariable = countyid;
    var UrlToSend = PageToSendTo + VariablePlaceholder + myVariable;
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            var dataReturn2 = JSON.parse(xmlhttp.responseText);
            console.log(dataReturn2);
            var data2 = [];
            for (i = 0; i < dataReturn2.length; i++) {
                data2.push({countyid: dataReturn2[i].COUNTY_ID,
                    county: dataReturn2[i].GEOGDESC,
                    label: dataReturn2[i].CSOBARNAME, 
                    value: +dataReturn2[i].TOTAL_HOUSING_STOCK,
                    vacancyRate: +dataReturn2[i].VACANCY_RATE }); 
            }
                if (document.getElementById("piebutton2").checked) {
                    createPieChart2(data2, elementId);
                }
                if (document.getElementById("barbutton2").checked) {
                    createBarChart2(data2, elementId);
                }
        }
    };
    xmlhttp.open("GET", UrlToSend, true);
    xmlhttp.send();// The actual request is now being sent.
}






