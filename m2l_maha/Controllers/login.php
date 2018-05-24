<?php

$_GET['p'] = 'login';


if(isset($_POST['submitConnexion'])) {

    if(!empty($_POST['login']) AND $_POST['mdp']) {

        $login = htmlspecialchars($_POST['login']);
        $mdp = sha1(htmlspecialchars($_POST['mdp']));

        $userReq = get_user($login, $mdp);

        if($user= $userReq->fetch()) {
            
            if(isset($_POST['remember'])){

                setcookie('login', $login, time()+365*24*3600, null, null, false, true);
                setcookie('password', $mdp, time()+365*24*3600, null, null, false, true);

            }

            $_SESSION['auth'] = true;
            $_SESSION['id_s'] = $user['id_s'];
            $_SESSION['nom'] = $user['nom'];
            $_SESSION['prenom'] = $user['prenom'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['login'] = $user['login'];
            $_SESSION['mdp'] = $user['mdp'];
            $_SESSION['lvl'] = $user['lvl'];
            $_SESSION['credits'] = $user['credits'];

            header("Location:" . BASE_URL );


        } else {

            $messageConnexion = '<h4 style="color:red;" align="center">Votre identifiant ou mot de passe n\'est correct</h4>';

        }

    } else {

        $messageConnexion = '<h4 style="color:red;" align="center">Vous devez remplir tous les champs</h4>';

    }

}

require 'Views/login.php';
?>