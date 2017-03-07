<?php
session_start(true);
if (!isset($_SESSION['username'])) {
    header('Location: http://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER[SERVER_PORT] . "/year4project/", true, 303);
    exit();
}
?>

<!doctype html> 
<html min-height="100%">
    <head>
        <meta charset="utf-8">
        <title>Vacant housing</title>
        <link href="css/basic.css" rel="stylesheet" type="text/css"/>
        <link href="css/tooltip.css" rel="stylesheet" type="text/css"/>
        <link href="css/graphs.css" rel="stylesheet" type="text/css"/>
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <script src="js/d3.v3.js"></script>
        <script src="js/d3.tip.v0.6.3.js" type="text/javascript"></script>
        <script src="js/d3pie.js" type="text/javascript"></script>
        <script src="js/test.js" type="text/javascript"></script>
        <script src="js/D3_functions.js" type="text/javascript"></script>
        <script language = "javascript"  src= "js/jsfunctions.js"></script>
    </head>
    <body onload="startup2();">
        <div class="top">
            <div class="graphicons">
                <fieldset name="graphtype">
                    <input id="piebutton2" type="radio" name="pie" checked="checked" onchange="startup2();"/>
                    <label for="piebutton2" class="pie"><img src="piechart.svg" class="icon"/></label>
                    <input id="barbutton2" type="radio" name="pie" onchange="startup2();"/>
                    <label for="barbutton2" class="bar"><img src="barchart.svg" class="icon"/></label>
                </fieldset>
            </div>
            <h1 style="margin: 5px; text-align: center">Total housing stock and vacancy rate</h1>
        </div>
        <div id="graphs" class="graphs"></div>   
        <div id="focus" class="inactive"></div>
    </body>
</html>


