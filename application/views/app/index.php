<div class="container" ng-controller="Dashboard">
	<div class="row">
		<div class="col-xs-6 col-sm-4 col-md-3">
			<button type="button" class="btn btn-primary btn-lg btn-block" ng-click="goUrl({'url':'./home/usuarios'})">
				<br>
				<p><i class="glyphicon glyphicon-home" style="font-size: 3em"></i></p>
				<br>
				<h3>Usuarios</h3>
			</button>
		</div>
		<div class="col-xs-6 col-sm-4 col-md-3">
			<button type="button" class="btn btn-danger btn-lg btn-block" ng-click="goUrl({'url':'./home/setusuario'})">
				<br>
				<p><i class="glyphicon glyphicon-floppy-disk" style="font-size: 3em"></i></p>
				<br>
				<h3>Nuevo Usuario</h3>
			</button>
		</div>
		<div class="col-xs-6 col-sm-4 col-md-3">
			<button type="button" class="btn btn-info btn-lg btn-block">
				<br>
				<p><i class="glyphicon glyphicon-menu-hamburger" style="font-size: 3em"></i></p>
				<br>
				<h3>Listado</h3>
			</button>
		</div>	
	</div>
</div>