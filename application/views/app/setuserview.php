<div class="container" ng-controller="setUser">
<div class="hide" id="base-url"><?php echo base_url(); ?></div>
	<div class="col-md-4"></div>
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading">Ingresar Usuario</div>
			<div class="panel-body">
				<div ng-if="!control.valid" class="alert alert-danger" role="alert">
					Complete los campos <strong>Requeridos (*)</strong>
				</div>
				<form id="setUser" name="setUser">
					<div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && setUser.first_name.$error">
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
							<div ng-messages="!control.valid && setUser.last_name.$error">
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
							<div ng-messages="!control.valid && setUser.dni.$error">
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
							<div ng-messages="(!control.valid && setUser.mail.$error) || setUser.mail.$error">
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
							<div ng-messages="!control.valid && setUser.address.$error">
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
							<div ng-messages="!control.valid && setUser.phone.$error">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Teléfono</strong> es requerido</span>
								</ng-message>
							</div>
							<md-input-container class="md-block" flex-gt-sm>
								<label>Teléfono</label>
								<input ng-model="setUserForm.phone" name="phone" type="number" required>
							</md-input-container>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12"></div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && setUser.birthday.$error">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Fecha Nacimiento</strong> es requerido</span>
								</ng-message>
							</div>
							<label>Fecha Nacimiento</label> <br>
							<md-datepicker class="md-block" flex-gt-sm ng-model="setUserForm.birthday" ng-required="1">
								
							</md-datepicker>
							<input ng-model="setUserForm.birthday" name="birthday" type="hidden" required>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6">
							<div ng-messages="!control.valid && setUser.register.$error">
								<ng-message when="required">
									<span class="label label-danger">El campo <strong>Fecha Nacimiento</strong> es requerido</span>
								</ng-message>
							</div>
							<label>Fecha de Registro</label> <br>
							<md-datepicker class="md-block" flex-gt-sm ng-model="setUserForm.register" ng-required="1">
								
							</md-datepicker>
							<input ng-model="setUserForm.register" name="register" type="hidden" required>
						</div>
						
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="form-group has-feedback">
								<label>Es usuario principal</label>
								<md-radio-group aria-label="UPA" ng-model="setUserForm.is_initial" layout="row" required>
									<md-radio-button value="1" class="md-primary">Si</md-radio-button>
									<md-radio-button value="2" class="md-primary">No</md-radio-button>
								</md-radio-group>
							</div>
						</div>
						<div ng-if="setUserForm.parent_user == 2">
							<div class="col-xs-12 col-sm-6 col-md-6" >
								<md-input-container class="md-block in-table" flex-gt-sm>
									<label>Usuario Padre<span style="color:red;"><b>*</b></span></label>
									<md-select aria-label="Tipo" ng-model="setUserForm.parent" required>
										<md-option value="1" >User 1</md-option>
										<md-option value="2" >User 2</md-option>
										<md-option value="3" >User 3</md-option>
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
				
			</div>
		</div>
	</div>
	<div class="col-md-4"></div>
</div>