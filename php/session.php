<?php

function session_register($name){
    global $$name;
    $_SESSION[$name] = $$name;
    $$name = &$_SESSION[$name]; 
}

