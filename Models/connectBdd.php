<?php
session_start();
try
{
    $bdd = new PDO("mysql:host=localhost;dbname=m2l_maha;charset=UTF8", "root", "");
}
catch(Exception $e)
{
    die ("Erreur connexion");
}
?>
