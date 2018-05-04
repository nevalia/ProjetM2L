<?php
session_start();
try
{
    $bdd = new PDO("mysql:host=172.16.0.3;dbname=mamar;charset=UTF8", "mamar", "WX10wTwuvRbj3XXD");
}
catch(Exception $e)
{
    die ("Erreur connexion");
}
?>