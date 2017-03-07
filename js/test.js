/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function startup() {
    var graphs = document.getElementById("graphs");
    tip = d3.tip()
            .attr('class', 'd3-tip')
            .offset([-10, 0])
            .html(function (d) {
                return "<strong>Population:</strong> <span style='color:red'>" + d.value + "</span>";
            });
/* For loop */
    for (i = 1; i < 31; i++) {
        var div = document.getElementById("graph" + i);
        if (div === null) {
            div = document.createElement("div");
            div.setAttribute("id", "graph" + i);
            div.setAttribute("class", "svg-container");
            div.setAttribute("tabindex", "0");
            div.setAttribute("onclick", "graphClicked(this)");
            graphs.appendChild(div);
        }
        var img = document.createElement("img");
        img.setAttribute("src", "load.svg");
        div.appendChild(img);
        graphs.appendChild(div);
        getPopulationByCounty(i, div.getAttribute("id"));
    }
}

function graphClicked(graph) {
    var graphId = graph.getAttribute("id");
    var countyId = graphId.substring(5);
    console.log(countyId);
    var focus = document.getElementById("focus");
    focus.innerHTML = "";
    element = document.createElement("div");
    element.setAttribute("class", "close");
    element.setAttribute("onclick", "focusOff()");
    element.setAttribute("tabindex", "0");
    focus.appendChild(element);
    getPopulationByCounty(countyId, "focus");
    focus.setAttribute("class", "active");
}

function focusOff(element) {
    document.getElementById("focus").setAttribute("class", "inactive");
}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function startup2() {
    var graphs = document.getElementById("graphs");
    tip = d3.tip()
            .attr('class', 'd3-tip')
            .offset([-10, 0])
            .html(function (d) {
                return "<strong>Population:</strong> <span style='color:red'>" + d.value + "</span>";
            });
/* For loop */
    for (i = 1; i < 31; i++) {
        var div = document.getElementById("graph" + i);
        if (div === null) {
            div = document.createElement("div");
            div.setAttribute("id", "graph" + i);
            div.setAttribute("class", "svg-container");
            div.setAttribute("tabindex", "0");
            div.setAttribute("onclick", "graphClicked2(this)");
            graphs.appendChild(div);
        }
        var img = document.createElement("img");
        img.setAttribute("src", "load.svg");
        div.appendChild(img);
        graphs.appendChild(div);
      /*  getPopulationByCounty(i, div.getAttribute("id")); */
        getHousingVacancy(i, div.getAttribute("id"));
    }
}

function graphClicked2(graph) {
    var graphId = graph.getAttribute("id");
    var countyId = graphId.substring(5);
    console.log(countyId);
    var focus = document.getElementById("focus");
    focus.innerHTML = "";
    element = document.createElement("div");
    element.setAttribute("class", "close");
    element.setAttribute("onclick", "focusOff()");
    element.setAttribute("tabindex", "0");
    focus.appendChild(element);
 /*   getPopulationByCounty(countyId, "focus */
    getHousingVacancy(countyId,"focus");
    focus.setAttribute("class", "active");
}



 