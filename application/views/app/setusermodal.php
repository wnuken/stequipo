<div class="user-modal" ng-controller="setUser">
	<!-- Modal -->
	<div class="modal fade" id="editUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Ingresar / Editar usuarios</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<form id="setUser" name="setUser">
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div ng-messages="!control.valid && setUser.cifnif.$error" class="text-right">
									<ng-message when="required">
										<span class="label label-danger">El campo <strong>NIT/CC</strong> es requerido</span>
									</ng-message>
								</div>
								<md-input-container class="md-block" flex-gt-sm>
									<label>NIT/CC</label>
									<input ng-model="setUserForm.cifnif" name="cifnif" type="text" required ng-change="getUser()">
								</md-input-container>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div ng-messages="!control.valid && setUser.razonsocial.$error" class="text-right">
									<ng-message when="required">
										<span class="label label-danger">El campo <strong>Razón social</strong> es requerido</span>
									</ng-message>
								</div>
								<md-input-container class="md-block" flex-gt-sm>
									<label>Razón social</label>
									<input ng-model="setUserForm.razonsocial" name="razonsocial" type="text" required>
								</md-input-container>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-12"></div>
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div ng-messages="!control.valid && setUser.nombre.$error" class="text-right">
									<ng-message when="required">
										<span class="label label-danger">El campo <strong>Nombre</strong> es requerido</span>
									</ng-message>
								</div>
								<md-input-container class="md-block" flex-gt-sm>
									<label>Nombre</label>
									<input ng-model="setUserForm.nombre" name="nombre" type="text" required>
								</md-input-container>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div ng-messages="(!control.valid && setUser.email.$error) || setUser.email.$error" class="text-right">
									<ng-message when="email">
										<span class="label label-warning">El campo <strong>E-mail</strong> debe ser valido</span>
									</ng-message>
								</div>
								<md-input-container class="md-block" flex-gt-sm>
									<label>E-mail</label>
									<input ng-model="setUserForm.email" name="email" type="email">
								</md-input-container>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-12"></div>
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div ng-messages="!control.valid && setUser.direccion.$error" class="text-right">
									<ng-message when="required">
										<span class="label label-danger">El campo <strong>Dirección</strong> es requerido</span>
									</ng-message>
								</div>
								<md-input-container class="md-block" flex-gt-sm>
									<label>Dirección</label>
									<input ng-model="setUserForm.direccion" name="direccion" type="text" required>
								</md-input-container>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div ng-messages="!control.valid && setUser.telefono1.$error" class="text-right">
									<ng-message when="required">
										<span class="label label-danger">El campo <strong>Teléfono</strong> es requerido</span>
									</ng-message>
								</div>
								<md-input-container class="md-block" flex-gt-sm>
									<label>Teléfono</label>
									<input ng-model="setUserForm.telefono1" name="telefono1" type="number" required>
								</md-input-container>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-6">
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
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div ng-messages="!control.valid && setUser.fechaalta.$error" class="text-right">
									<ng-message when="required">
										<span class="label label-danger">El campo <strong>Fecha Registro</strong> es requerido</span>
									</ng-message>
								</div>
								<label>Fecha de Registro</label> <br>
								<md-datepicker class="md-block" flex-gt-sm ng-model="setUserForm.fechaalta" ng-required="1">
								</md-datepicker>
								<input ng-model="setUserForm.fechaalta" name="fechaalta" type="hidden" required>
							</div>

							<div class="col-xs-12 col-sm-12 col-md-12">
								<br><br>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-6" >
								<md-input-container class="md-block in-table" flex-gt-sm>
									<label>Rol</label>
									<md-select aria-label="Tipo" ng-model="setUserForm.id_rol" required>
										<md-option ng-repeat="rol in Roles" value="{{rol.id_rol}}" >{{rol.rol_name}}</md-option>
									</md-select>
								</md-input-container> 
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="form-group has-feedback">
									<label>Usuario inicial</label>
									<md-radio-group aria-label="UPA" ng-model="setUserForm.is_initial" layout="row" required>
										<md-radio-button value="1" class="md-primary">Si</md-radio-button>
										<md-radio-button value="2" class="md-primary">No</md-radio-button>
									</md-radio-group>
								</div>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-12"></div>
							<div ng-if="setUserForm.is_initial == 2">
								<div class="col-xs-12 col-sm-6 col-md-6" >
									<md-input-container class="md-block in-table" flex-gt-sm>
										<label>Referente</label>
										<md-select aria-label="Tipo" ng-model="setUserForm.parent" required>
											<md-option ng-repeat="user in Users" value="{{user.codcliente}}" >{{user.cifnif}} - {{user.nombre}}</md-option>
										</md-select>
									</md-input-container> 
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6">
									<div ng-messages="!control.valid && setUser.group.$error" class="text-right">
										<ng-message when="required">
											<span class="label label-danger">El campo <strong>Grupo</strong> es requerido</span>
										</ng-message>
									</div>
									<md-input-container class="md-block" flex-gt-sm>
										<label>Grupo</label>
										<input ng-model="setUserForm.group" name="group" type="number" required>
									</md-input-container>
								</div>
								<div class="col-xs-12 col-sm-12 col-md-12"></div>
								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="form-group has-feedback">
										<label>Posición</label>
										<md-radio-group aria-label="UPA" ng-model="setUserForm.children" layout="block" required>
											<md-radio-button value="1" class="md-primary">Semana 1</md-radio-button>
											<md-radio-button value="2" class="md-primary">Semana 2</md-radio-button>
											<md-radio-button value="3" class="md-primary">Semana 3</md-radio-button>
											<md-radio-button value="4" class="md-primary">Semana 4</md-radio-button>
										</md-radio-group>
									</div>
								</div>
							</div>
							
						</form>
					</div>

					


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<i class="glyphicon glyphicon-remove-circle"></i> 
						Cerrar
					</button>
					<button type="button" class="btn btn-primary" ng-click="saveForm()" type="submit">
						<i class="glyphicon glyphicon-floppy-save"></i> 
						Guardar
					</button>
					<div class="text-left">
						<br />
						<div class="col-md-12" ng-if="dataUser.first_name">
							<div ng-if="!control.valid" class="alert alert-danger" role="alert">
								Complete los campos <strong>Requeridos (*)</strong>
							</div>
							<div class="table table-responsive" ng-if="control.send">
								<div class="alert alert-info" role="alert">
									<strong>Se guardaron los datos correctamente</strong>
								</div>
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
		</div>
	</div>
</div>