<div class="hide" id="base-url"><?php echo base_url(); ?></div>
<div class="container" ng-controller="Users">
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
<?php
	$this->load->view('app/setusermodal');
?>