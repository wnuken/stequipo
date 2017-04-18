<div class="hide" id="base-url"><?php echo base_url(); ?></div>

<div class="container-fluid" ng-controller="Users">
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-3 col-lg-2 main-side-bar-container hidden-xs">
			<aside class="main-sidebar">
				<!-- sidebar: style can be found in sidebar.less -->
				<section class="sidebar">
					<!-- Sidebar user panel -->
					<div class="main-side-bar">
						<div class="list-group">
							<a href="<?php echo base_url("/home"); ?>" class="list-group-item">
								<i class="glyphicon glyphicon-home" ></i> Inicio
							</a>
							<a href="<?php echo base_url("/home/usuarios"); ?>" class="list-group-item active">
								<i class="glyphicon glyphicon-user" ></i> Usuarios
							</a>
							<a href="<?php echo base_url("/home/getgrupo"); ?>" class="list-group-item">
								<i class="glyphicon glyphicon-cog"></i> Administración
							</a>
							<a href="<?php echo base_url("/home/informes"); ?>" class="list-group-item">
								<i class="glyphicon glyphicon-list-alt" ></i> Informes
							</a>
						</div>
					</div>
				</section>
				<!-- /.sidebar -->
			</aside>
		</div>
		<div class="col-xs-12 col-sm-8 col-md-9 col-lg-10">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<legend>Usuarios</legend>
				</div>
			</div>	
			<div class="row">
				<div class="col-xs-6 col-sm-4 col-md-3">
					<button type="button" class="btn btn-info btn-lg btn-block" data-toggle="modal" data-target="#editUser">
						<br>
						<p><i class="glyphicon glyphicon-floppy-disk" style="font-size: 6em"></i></p>
						<br>
						<p>Edición</p>
					</button>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-3">
					<button type="button" class="btn btn-info btn-lg btn-block" ng-click="goUrl({'url':'<?php echo base_url(); ?>home/getgrupo'})">
						<br>
						<p><i class="glyphicon glyphicon-cog" style="font-size: 6em"></i></p>
						<br>
						<p>Administración</p>
					</button>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-3">
					<button type="button" class="btn btn-info btn-lg btn-block">
						<br>
						<p><i class="glyphicon glyphicon-list-alt" style="font-size: 6em"></i></p>
						<br>
						<p>Informes</p>
					</button>
				</div>	
			</div>
		</div>
	</div>
</div>
<?php
$this->load->view('app/setusermodal');
?>