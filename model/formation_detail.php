<?php

$requete = $bdd->query("SELECT * FROM formations F, prestataires P WHERE F.id_f = ".$_GET['id']." AND P.id_p = F.id_p ");
$requete2 = $bdd->query("SELECT credits FROM salaries where id_s = ".$_SESSION['id_s']." ");

$check = $bdd->query("SELECT * FROM historique WHERE id_f= ".$_GET['id']." AND id_s= ".$_SESSION['id_s']." ");
$get_etat = $check->fetch();

$comment = $bdd->query("SELECT * FROM commentaire C, salaries S WHERE C.id_f= ".$_GET['id']." AND C.id_s = S.id_s ");

$first = $bdd->prepare("SELECT COUNT(*) FROM commentaire WHERE id_f = ".$_GET['id']." ");
$firstComment = $first->fetch();

