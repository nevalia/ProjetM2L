<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();

$dbname = "db730690657";

try {
	
   $bdd = new PDO('mysql:host=db730690657.db.1and1.com;dbname=' . $dbname . ';charset=utf8','dbo730690657','Azerty1*');
	
} catch (Exception $e) {
		
	Echo "Erreur de connexion à la BDD !";
	die();
}
?>