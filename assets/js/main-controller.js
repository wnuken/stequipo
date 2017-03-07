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
    };

});

stequipoApp.controller('Dashboard', ['$scope', '$window', function($scope, $window) {
	$('li#menu-home', $generalMenu).addClass('active');

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

	//$scope.setUserForm.birthday = new Date();

	$scope.saveForm = function(){
		$scope.control.valid = $scope.setUser.$valid;
		if($scope.setUser.$valid === true){
			var url = 'set/userdata';
			dataService.setData($scope.setUserForm, url, function(dataResponse){
				console.log(dataResponse);
				if(typeof dataResponse.elements.status != 'undefined' && dataResponse.elements.status == true){

					$timeout(function () {
						$scope.dataUser = dataResponse.elements.message;
						console.log($scope.dataUser);
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
	$('div#getGroupController').removeClass('hide');
}]);
