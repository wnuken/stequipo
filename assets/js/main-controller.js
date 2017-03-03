var baseUrl = $('div#base-url').html();

var $generalMenu = $("nav#genaralMenu");
var stequipoApp = angular.module('stequipoApp',['ngMaterial', 'ngMessages']);

stequipoApp.service('dataService', function($http) {
	this.getData = function(params, path, callbackFunc){
		$.ajax({
			method: 'GET',
			url: baseUrl + path,
			data: params
		}).success(function(response){
			callbackFunc(response);
		}).error(function(){
			console.log("error");
		});
	};

	this.setData = function(params, path, callbackFunc){
		$.ajax({
			method: 'POST',
			url: baseUrl + path,
			data: params
		}).success(function(response){
			callbackFunc(response);
		}).error(function(){
			console.log("error");
		});
	};

});

stequipoApp.controller('Dashboard', ['$scope', '$window', function($scope, $window) {
	$('li#menu-home', $generalMenu).addClass('active');

	$scope.goUrl = function(params){
		console.log(params);
		$window.open(params.url, "_self");
	};
}]);

stequipoApp.controller('setUser', ['$scope', 'dataService', function($scope, dataService) {
	$('li#menu-user', $generalMenu).addClass('active');

	console.log(baseUrl);

	$scope.setUserForm = {};
	$scope.control = {
		"valid": true
	};
	


	var url = 'get/user';

	dataService.getData($scope.setUserForm, url, function(dataResponse){
		if(dataResponse.elements.status === true){
			$scope.Users = dataResponse.elements.message;
		}
	});

	//$scope.setUserForm.birthday = new Date();

	$scope.saveForm = function(){
		$scope.control.valid = $scope.setUser.$valid;
		if($scope.setUser.$valid === true){
			var url = 'set/userdata';
			dataService.setData($scope.setUserForm, url, function(dataResponse){
				$scope.dataUser = {
					"first_name": "name"
				};
				if(typeof dataResponse.elements.status != 'undefined' && dataResponse.elements.status == true){
					$scope.dataUser = dataResponse.elements.message;
					console.log($scope.dataUser);
				}else{
					///$('div#msg-caratula').html(errorMessages.save);
				}

			});

		}else{
			
		}
	};

}]);

