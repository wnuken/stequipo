var baseUrl = $('div#base-url').html();

var $generalMenu = $("nav#genaralMenu");
var stequipoApp = angular.module('stequipoApp',['ngMaterial', 'ngMessages']);

stequipoApp.service('dataService', function($http) {
	this.getData = function(params, path, callbackFunc){
		$http({
			method: 'GET',
			url: baseUrl + path,
			params: params
        	/// headers: {'Authorization': 'Token token=xxxxYYYYZzzz'}
        }).then(function(response) {
        	callbackFunc(response);
        }, function(reason) {
        	console.log('Failed: ' + reason);
        }, function(update) {
        	console.log('Got notification: ' + update);
        });
    };

    this.setData = function(params, path, callbackFunc){
    	$.ajax({
    		method: 'POST',
    		url: baseUrl + path,
    		data: params
    	}).then(function(response) {
    		callbackFunc(response);
    	}, function(reason) {
    		console.log('Failed: ' + reason);
    	}, function(update) {
    		console.log('Got notification: ' + update);
    	});

    	/*$http({
    		method: 'POST',
    		url: baseUrl + path,
    		data: params,
    		headers: {'Content-Type': 'application/x-www-form-urlencoded'}
    	}).then(function(response) {
    		callbackFunc(response);
    	}, function(reason) {
    		console.log('Failed: ' + reason);
    	}, function(update) {
    		console.log('Got notification: ' + update);
    	});*/
    };

});

stequipoApp.controller('Dashboard', ['$scope', '$window', function($scope, $window) {
	$('li#menu-home', $generalMenu).addClass('active');

	$scope.goUrl = function(params){
		console.log(params);
		$window.open(params.url, "_self");
	};
}]);

stequipoApp.controller('Users', ['$scope', '$window', function($scope, $window) {
	console.log("usuarios");
	$('li#menu-users', $generalMenu).addClass('active');

	$scope.goUrl = function(params){
		console.log(params);
		$window.open(params.url, "_self");
	};
}]);

stequipoApp.controller('setUser', ['$scope', '$timeout', 'dataService', function($scope, $timeout, dataService) {
	$('li#menu-user', $generalMenu).addClass('active');


	$scope.setUserForm = {};
	$scope.control = {
		"valid": true
	};

	$scope.dataUser = {};
	
	$('div#setUserController').removeClass('hide');

	var urlUser = 'get/users';

	dataService.getData($scope.setUserForm, urlUser, function(dataResponse){
		console.log(dataResponse);
		if(typeof dataResponse.data.elements != 'undefined' && dataResponse.data.elements.status === true){
			$scope.Users = dataResponse.data.elements.message;
		};
	});

	var urlRoles = 'get/roles';

	dataService.getData($scope.setUserForm, urlRoles, function(dataResponse){
		console.log(dataResponse);
		if(typeof dataResponse.data.elements != 'undefined' && dataResponse.data.elements.status === true){
			$scope.Roles = dataResponse.data.elements.message;
		};
	});

	$scope.getUser = function(){
		$scope.control.send = false;
		var url = 'get/userinfo';
		var dniValue = $scope.setUserForm.cifnif;
		if(typeof dniValue != 'undefined' && dniValue.length > 5){
			dataService.getData($scope.setUserForm, url, function(dataResponse){
				if(typeof dataResponse.data.elements.status != 'undefined' && dataResponse.data.elements.status == true){
					$timeout(function () {
						$scope.setUserForm = {
							"cifnif": dataResponse.data.elements.message.cifnif,
							"nombre": dataResponse.data.elements.message.nombre,
							"razonsocial": dataResponse.data.elements.message.razonsocial,
							"email": dataResponse.data.elements.message.email,
							"direccion": dataResponse.data.elements.message.direccion,
							"telefono1": parseInt(dataResponse.data.elements.message.telefono1),
							"fechaalta": new Date(dataResponse.data.elements.message.fechaalta)
						};

						var group = parseInt(dataResponse.data.elements.message.group);
						if(!isNaN(group))
							$scope.setUserForm.group = group;

						var parent = parseInt(dataResponse.data.elements.message.parent);
						if(!isNaN(parent))
							$scope.setUserForm.parent = parent;

						var children = parseInt(dataResponse.data.elements.message.children);
						if(!isNaN(children))
							$scope.setUserForm.children = children;

					}, 500);
				}else{
					$scope.setUserForm = {
						"cifnif": dniValue
					};
				}

			});
		};
	};

	$scope.saveForm = function(){
		$scope.control.valid = $scope.setUser.$valid;
		if($scope.setUser.$valid === true){
			var url = 'set/userdata';
			dataService.setData($scope.setUserForm, url, function(dataResponse){
				if(typeof dataResponse.elements.status != 'undefined' && dataResponse.elements.status == true){
					$scope.control.send = true;
					$timeout(function () {
						$scope.dataUser = dataResponse.elements.message;
						$scope.setUserForm = {};
					}, 500);
					
				}else{
					///$('div#msg-caratula').html(errorMessages.save);
				}

			});

		}else{
			
		}
	};

}]);

stequipoApp.controller('getGroup', ['$scope', '$timeout', 'dataService', function($scope, $timeout, dataService) {
	$('li#menu-group', $generalMenu).addClass('active');
	$('div#getGroupController').removeClass('hide');

	$scope.getUserInfoForm = {};
	$scope.control = {
		"valid": true
	};
	$scope.dataResponse = {};

	$scope.searchForm = function(){
		$scope.control.valid = $scope.getUserInfo.$valid;
		if($scope.getUserInfo.$valid === true){

			var url = 'get/userinfo';
			dataService.getData($scope.getUserInfoForm, url, function(dataResponse){
				if(typeof dataResponse.data.elements.status != 'undefined'){
					$scope.dataResponse = dataResponse.data.elements;
				}

				if(typeof dataResponse.data.elements.status != 'undefined' && dataResponse.data.elements.status == true){
					$timeout(function () {
						$scope.dataUser = dataResponse.data.elements.message;
						$scope.dataChildren = dataResponse.data.elements.message2;
					}, 500);
					
				}else{
					$scope.dataUser = {};
					$scope.dataChildren = {};
				}

			});

		}else{
			
		}
	};

}]);
