<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>M2L_Login</title>
	<link href="<?= BASE_URL; ?>/Views/assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="<?= BASE_URL; ?>/Views/assets/css/datepicker3.css" rel="stylesheet">
	<link href="<?= BASE_URL; ?>/Views/assets/css/styles.css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
                <?php if(isset($messageConnexion)){ echo '<br />'.$messageConnexion; } ?>
				<div class="panel-heading">Connexion</div>
				<div class="panel-body">
					<form method="POST">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Login" name="login" type="login" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Mot de passe" name="mdp" type="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Se souvenir de moi">Se souvenir de moi
								</label>
							</div>
                            <div>
                                <a href="<?= BASE_URL ?>/Mot-de-passe-oublie">Mot de passe oublié ?</a>
                            </div>
                            <br />
							<input type="submit" class="btn btn-primary" value="Connexion" name="submitConnexion" />
                        </fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	

<script src="<? BASE_URL; ?>/Views/assets/js/jquery-1.11.1.min.js"></script>
	<script src="<? BASE_URL; ?>/Views/assets/js/bootstrap.min.js"></script>
</body>
</html>
