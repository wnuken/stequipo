<div class="container hide" ng-controller="setUser" id="setUserController">
	<div class="hide" id="base-url"><?php echo base_url(); ?></div>
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading">Ingresar Usuario</div>
			<div class="panel-body">
				<form id="setUser" name="setUser">
					<div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && setUser.first_name.$error" class="text-right">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Nombre</strong> es requerido</span>
								</ng-message>
							</div>
							<md-input-container class="md-block" flex-gt-sm>
								<label>Nombre</label>
								<input ng-model="setUserForm.first_name" name="first_name" type="text" required>
							</md-input-container>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && setUser.last_name.$error" class="text-right">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Apellido</strong> es requerido</span>
								</ng-message>
							</div>
							<md-input-container class="md-block" flex-gt-sm>
								<label>Apellido</label>
								<input ng-model="setUserForm.last_name" name="last_name" type="text" required>
							</md-input-container>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12"></div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && setUser.dni.$error" class="text-right">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>NIT/CC</strong> es requerido</span>
								</ng-message>
							</div>
							<md-input-container class="md-block" flex-gt-sm>
								<label>NIT/CC</label>
								<input ng-model="setUserForm.dni" name="dni" type="text" required>
							</md-input-container>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="(!control.valid && setUser.mail.$error) || setUser.mail.$error" class="text-right">
								<ng-message when="email">
									<span class="label label-warning">El campo <strong>E-mail</strong> debe ser valido</span>
								</ng-message>
							</div>
							<md-input-container class="md-block" flex-gt-sm>
								<label>E-mail</label>
								<input ng-model="setUserForm.mail" name="mail" type="email">
							</md-input-container>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12"></div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && setUser.address.$error" class="text-right">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Dirección</strong> es requerido</span>
								</ng-message>
							</div>
							<md-input-container class="md-block" flex-gt-sm>
								<label>Dirección</label>
								<input ng-model="setUserForm.address" name="address" type="text" required>
							</md-input-container>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && setUser.phone.$error" class="text-right">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Teléfono</strong> es requerido</span>
								</ng-message>
							</div>
							<md-input-container class="md-block" flex-gt-sm>
								<label>Teléfono</label>
								<input ng-model="setUserForm.phone" name="phone" type="number" required>
							</md-input-container>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6" >
							<md-input-container class="md-block in-table" flex-gt-sm>
								<label>Rol</label>
								<md-select aria-label="Tipo" ng-model="setUserForm.id_rol" required>
									<md-option ng-repeat="rol in Roles" value="{{rol.id}}" >{{rol.rol_name}}</md-option>
								</md-select>
							</md-input-container> 
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12"></div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div ng-messages="!control.valid && setUser.birthday.$error" class="text-right">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Fecha Nacimiento</strong> es requerido</span>
								</ng-message>
							</div>
							<label>Fecha Nacimiento</label> <br>
							<md-datepicker class="md-block" flex-gt-sm ng-model="setUserForm.birthday" ng-required="1" md-current-view="year">
							</md-datepicker>
							<input ng-model="setUserForm.birthday" name="birthday" type="hidden" required>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div ng-messages="!control.valid && setUser.register.$error" class="text-right">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Fecha Nacimiento</strong> es requerido</span>
								</ng-message>
							</div>
							<label>Fecha de Registro</label> <br>
							<md-datepicker class="md-block" flex-gt-sm ng-model="setUserForm.register" ng-required="1">
							</md-datepicker>
							<input ng-model="setUserForm.register" name="register" type="hidden" required>
						</div>
						
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="form-group has-feedback">
								<label>Usuario inicial</label>
								<md-radio-group aria-label="UPA" ng-model="setUserForm.is_initial" layout="row" required>
									<md-radio-button value="1" class="md-primary">Si</md-radio-button>
									<md-radio-button value="2" class="md-primary">No</md-radio-button>
								</md-radio-group>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12">
							<br><br>
						</div>
						<div ng-if="setUserForm.is_initial == 2">
							<div class="col-xs-12 col-sm-6 col-md-6" >
								<md-input-container class="md-block in-table" flex-gt-sm>
									<label>Usuario Padre</label>
									<md-select aria-label="Tipo" ng-model="setUserForm.parent" required>
										<md-option ng-repeat="user in Users" value="{{user.id}}" >{{user.first_name}}</md-option>

									</md-select>
								</md-input-container> 
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="form-group has-feedback">
									<label>Posición</label>
									<md-radio-group aria-label="UPA" ng-model="setUserForm.position_user" layout="row" required>
										<md-radio-button value="1" class="md-primary">Semana 1</md-radio-button>
										<md-radio-button value="2" class="md-primary">Semana 2</md-radio-button>
										<md-radio-button value="3" class="md-primary">Semana 3</md-radio-button>
										<md-radio-button value="4" class="md-primary">Semana 4</md-radio-button>
									</md-radio-group>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12"></div>
						
						<md-button class="md-raised md-primary pull-right" ng-click="saveForm()">
							<i class="glyphicon glyphicon-floppy-save"></i> Guardar 
						</md-button>
						
					</div>

				</form>
				<div class="col-md-12" ng-if="dataUser.first_name">
					<div ng-if="!control.valid" class="alert alert-danger" role="alert">
						Complete los campos <strong>Requeridos (*)</strong>
					</div>
					<div class="table table-responsive">
						<table class="table table-hover">
							<thead> 
								<tr> <th>#</th>
									<th>Nombre</th>
									<th>Apellido</th>
									<th>Documento</th>
									<th>Dirección</th>
									<th>Teléfono</th>
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
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4"></div>
</div>