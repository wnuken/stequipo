<div class="container-fluid" ng-controller="Dashboard">
	

	<!--div class="row">
		<div class="col-md-2">
			<div class="main-side-bar">
				<div class="list-group">
					<a href="#" class="list-group-item active info">
						<i class="glyphicon glyphicon-home" ></i> Inicio
					</a>
					<a href="javascript:void(0);" ng-click="goUrl({'url':'./home/usuarios'})" class="list-group-item">
						<i class="glyphicon glyphicon-user" ></i> Usuarios
					</a>
					<a href="javascript:void(0);" ng-click="goUrl({'url':'./home/getgrupo'})" class="list-group-item">
						<i class="glyphicon glyphicon-cog"></i> Administración
					</a>
					<a href="javascript:void(0);" class="list-group-item">
						<i class="glyphicon glyphicon-list-alt" ></i>
						Informes
					</a>
				</div>
			</div>
		</div-->

		<div class="row">
		<div class="col-md-2">
			<aside class="main-sidebar">
				<!-- sidebar: style can be found in sidebar.less -->
				<section class="sidebar">
					<!-- Sidebar user panel -->
					<div class="main-side-bar">
						<div class="list-group">
							<a href="#" class="list-group-item active info">
								<i class="glyphicon glyphicon-home" ></i> Inicio
							</a>
							<a href="javascript:void(0);" ng-click="goUrl({'url':'./home/usuarios'})" class="list-group-item">
								<i class="glyphicon glyphicon-user" ></i> Usuarios
							</a>
							<a href="javascript:void(0);" ng-click="goUrl({'url':'./home/getgrupo'})" class="list-group-item">
								<i class="glyphicon glyphicon-cog"></i> Administración
							</a>
							<a href="javascript:void(0);" class="list-group-item">
								<i class="glyphicon glyphicon-list-alt" ></i>
								Informes
							</a>
						</div>
					</section>
					<!-- /.sidebar -->
				</aside>
			</div>



			<div class="col-md-10">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<legend>Inicio</legend>
					</div>
				</div>	
				<div class="row">
					<div class="col-md-6">
						<div class="col-md-4">
							<div class="text-center">
								<p>
									<i class="glyphicon glyphicon-user" style="font-size: 140px;"></i>
								</p>
								<a class="users-list-name" href="#">Alexander Pierce</a>
								<p><span class="users-list-date">Today</span></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="text-center">
								<p>
									<i class="glyphicon glyphicon-user" style="font-size: 140px;"></i>
								</p>
								<a class="users-list-name" href="#">Alexander Pierce</a>
								<p><span class="users-list-date">Today</span></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="text-center">
								<p>
									<i class="glyphicon glyphicon-user" style="font-size: 140px;"></i>
								</p>
								<a class="users-list-name" href="#">Alexander Pierce</a>
								<p><span class="users-list-date">Today</span></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="text-center">
								<p>
									<i class="glyphicon glyphicon-user" style="font-size: 140px;"></i>
								</p>
								<a class="users-list-name" href="#">Alexander Pierce</a>
								<p><span class="users-list-date">Today</span></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="text-center">
								<p>
									<i class="glyphicon glyphicon-user" style="font-size: 140px;"></i>
								</p>
								<a class="users-list-name" href="#">Alexander Pierce</a>
								<p><span class="users-list-date">Today</span></p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="text-center">
								<p>
									<i class="glyphicon glyphicon-user" style="font-size: 140px;"></i>
								</p>
								<a class="users-list-name" href="#">Alexander Pierce</a>
								<p><span class="users-list-date">Today</span></p>
							</div>
						</div>
					</div>

					<div class="col-md-6">

						<!-- WIDGET TASKS -->
						<div class="widget">
							<div class="widget-header">
								<h3><i class="fa fa-tasks"></i> Resumen </h3> <em>- Trabajo en Equipo</em>
								<div class="btn-group widget-header-toolbar">
									<a href="#" title="Focus" class="btn-borderless btn-focus"><i class="fa fa-eye"></i></a>
									<a href="#" title="Expand/Collapse" class="btn-borderless btn-toggle-expand"><i class="fa fa-chevron-up"></i></a>
									<a href="#" title="Remove" class="btn-borderless btn-remove"><i class="fa fa-times"></i></a>
								</div>
							</div>
							<div class="widget-content">
								<ul class="task-list">
									<li>
										<p>Updating Users Settings <span class="label label-danger">23%</span></p>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width:23%">
												<span class="sr-only">23% Complete</span>
											</div>
										</div>
									</li>
									<li>
										<p>Load &amp; Stress Test <span class="label label-success">80%</span></p>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
												<span class="sr-only">80% Complete</span>
											</div>
										</div>
									</li>
									<li>
										<p>Data Duplication Check <span class="label label-success">100%</span></p>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
												<span class="sr-only">Success</span>
											</div>
										</div>
									</li>
									<li>
										<p>Server Check <span class="label label-warning">45%</span></p>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
												<span class="sr-only">45% Complete</span>
											</div>
										</div>
									</li>
									<li>
										<p>Mobile App Development <span class="label label-danger">10%</span></p>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
												<span class="sr-only">10% Complete</span>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<!-- END WIDGET TASKS -->
					</div>
				</div>
			</div>
		</div>
	</div>