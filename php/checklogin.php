<?php
session_start(true);
if (isset($_SESSION['username'])) {
    echo "OK";
} else {
    header('Location: http://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER[SERVER_PORT] . "/year4project/", true, 303);
    exit();
}


