<?php

try {
    $bdd = new PDO("mysql:host=localhost;dbname=mamar;charset=utf8", "mamar", "WX10wTwuvRbj3XXD",
        array(
            PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES UTF8'
        ));
}
catch (Exception $e) {

}