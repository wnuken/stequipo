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

stequipoApp.controller('Dashboard', ['$scope', function($scope) {
	$('li#menu-home', $generalMenu).addClass('active');
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
		console.log(dataResponse);
	});

	//$scope.setUserForm.birthday = new Date();

	$scope.saveForm = function(){
		console.log($scope.setUser.$valid);
		$scope.control.valid = $scope.setUser.$valid;
		if($scope.setUser.$valid === true){
			var url = 'set/userdata';

			dataService.setData($scope.setUserForm, url, function(dataResponse){
				console.log(dataResponse);
				/*if(typeof dataResponse.elements.status != 'undefined' && dataResponse.elements.status == true){
					window.location =  baseUrl + "home/capitulo2";
				}else{
					$('div#msg-caratula').html(errorMessages.save);
				}*/

			});

		}else{
			
		}
	};

}]);

