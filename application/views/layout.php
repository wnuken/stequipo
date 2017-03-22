<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="es">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="<?php echo base_url("/assets/images/favicon.png"); ?>">
<head>
	<link href="<?php echo base_url("/assets/vendor/bootstrap/css/bootstrap.min.css"); ?>" rel="stylesheet"/>
	<!--link href="<?php echo base_url("/assets/vendor/angularjs/material/css/angular-material.min.css"); ?>" rel="stylesheet"/-->
	<link href="https://cdn.gitcdn.link/cdn/angular/bower-material/v1.1.3/angular-material.css" rel="stylesheet"/>
	<link href="<?php echo base_url("/assets/css/spacelab.css"); ?>" rel="stylesheet"/>
	<link href="<?php echo base_url("/assets/css/styles.css"); ?>" rel="stylesheet"/>
	<meta charset="utf-8">
	<title>Servicio Trabajo en Equipo</title>

	
</head>
<body ng-app="stequipoApp">

	<!-- Fixed navbar -->
	<nav id="genaralMenu" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand hidden-xs" href="./">
				<img src="<?php echo base_url("/assets/images/logo-2.png"); ?>">
				</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li id="menu-home"><a href="<?php echo base_url(); ?>">Inicio</a></li>
					<li id="menu-user"><a href="<?php echo base_url("/home/usuarios"); ?>">Usuarios</a></li>
					<li id="menu-group"><a href="<?php echo base_url("/home/getgrupo"); ?>">Administrar grupo</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul>
					</li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	<!-- Begin page content -->
	<?php if (isset($view) && $view!=""){ 
		$this->load->view($view);
	}
	?>  
	
	<footer class="footer">
		<div class="container">
			<p class="text-muted">STE S.A.S. - Servicio Trabajo en Equipo - Todos los derechos Reservados</p>
		</div>
	</footer>

</body>
<script src="<?php echo base_url("/assets/vendor/jquery/jquery.2.2.4.min.js"); ?>" rel="stylesheet"></script>
<script src="<?php echo base_url("/assets/vendor/bootstrap/js/bootstrap.min.js"); ?>" rel="stylesheet"></script>

<script src="<?php echo base_url("/assets/vendor/angularjs/angularjs.1.5.5-min.js"); ?>" rel="stylesheet"></script>
<script src="<?php echo base_url("/assets/vendor/angularjs/material/js/angular-animate.min.js"); ?>" rel="stylesheet"></script>
<script src="<?php echo base_url("/assets/vendor/angularjs/material/js/angular-route.min.js"); ?>" rel="stylesheet"></script>
<script src="<?php echo base_url("/assets/vendor/angularjs/material/js/angular-aria.min.js"); ?>" rel="stylesheet"></script>
<script src="<?php echo base_url("/assets/vendor/angularjs/material/js/angular-messages.min.js"); ?>" rel="stylesheet"></script>

<script src="<?php echo base_url("/assets/vendor/angularjs/material/js/angular-material.min.js"); ?>" rel="stylesheet"></script>
<!--script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/t-114/svg-assets-cache.js" rel="stylesheet"></script-->


<script src="<?php echo base_url("/assets/js/main-controller.js"); ?>" rel="stylesheet"></script>
</html>