<div class="container hide" ng-controller="getGroup" id="getGroupController">
	<div class="hide" id="base-url"><?php echo base_url(); ?></div>
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