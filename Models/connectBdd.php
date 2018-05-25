<?php
session_start();
try
{
    $bdd = new PDO("mysql:host=db730690657.db.1and1.com;dbname=db730690657;charset=UTF8", "dbo730690657", "Azerty1*");
}
catch(Exception $e)
{
    die ("Erreur connexion");
}
?>
