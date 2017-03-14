<div class="container hide" ng-controller="getGroup" id="getGroupController">
	<div class="hide" id="base-url"><?php echo base_url(); ?></div>
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading">Buscar usuario</div>
			<div class="panel-body">
				<form id="getUserInfo" name="getUserInfo">
					<div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && getUserInfo.dni.$error" class="text-right">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>documento</strong> es requerido</span>
								</ng-message>
							</div>
							<md-input-container class="md-block" flex-gt-sm>
								<label>Escribir documento del usuario</label>
								<input ng-model="getUserInfoForm.dni" name="dni" type="text" required>
							</md-input-container>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12"></div>
						
						<md-button class="md-raised md-primary pull-right" ng-click="searchForm()">
							<i class="glyphicon glyphicon-floppy-save"></i> Buscar 
						</md-button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="col-md-12" ng-if="dataResponse.status == false">
		<div class="alert alert-warning" role="alert">No se encontro el usuario <strong>{{ dataResponse.id }}</strong> en le sistema</div>
	</div>
	<div class="col-md-12" ng-if="dataUser.dni">
		<div class="table table-responsive" id="userinfo">
			<table class="table table-hover">
				<thead> 
					<tr>
						<th>#</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Documento</th>
						<th>Dirección</th>
						<th>Teléfono</th>
						<th>Nacimiento</th>
						<th>Registro</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>{{ dataUser.first_name }}</td>
						<td>{{ dataUser.last_name }}</td>
						<td>{{ dataUser.dni }}</td>
						<td>{{ dataUser.address }}</td>
						<td>{{ dataUser.phone }}</td>
						<td>{{ dataUser.birthday }}</td>
						<td>{{ dataUser.register }}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<div class="col-md-12" ng-if="dataChildren[0].first_name">
		<div class="table table-responsive" id="userchid">
		<h3>Referidos</h3>
			<table class="table table-hover">
				<thead> 
					<tr>
						<th>#</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Documento</th>
						<th>Dirección</th>
						<th>Teléfono</th>
						<th>Nacimiento</th>
						<th>Registro</th>
						<th>Grupo</th>
						<th>Posicicón</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="child in dataChildren">
						<th scope="row">{{$index + 1}}</th>
						<td>{{ child.first_name }}</td>
						<td>{{ child.last_name }}</td>
						<td>{{ child.dni }}</td>
						<td>{{ child.address }}</td>
						<td>{{ child.phone }}</td>
						<td>{{ child.birthday }}</td>
						<td>{{ child.register }}</td>
						<td>{{ child.group }}</td>
						<td>{{ child.children }}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</div>