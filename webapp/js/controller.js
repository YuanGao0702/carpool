'use strict';

var carpoolCtrl = angular.module('carpoolCtrl', ['ngCookies']);

//create the controller and inject Angular's $scope
carpoolCtrl.controller('mainController', function($scope) {
  
});

carpoolCtrl.controller('aboutController', function($scope) {
    $scope.message = 'Look! I am an about page.';
});

carpoolCtrl.controller('loginController', function($scope, $http, $cookieStore) {
		 	console.log("loginController");

		 	$scope.login = function() {
		 		// console.log($scope.user);
		 		//console.log("login");
		 		console.log("started!!!!");
		 		$http.get('http://localhost:8080/api/login/request'+ '?email=' + $scope.user.email + '&password=' + $scope.user.password, $scope.user).success(function (response) {
		 			console.log(response);
		 			$scope.user = response;
		 			$cookieStore.put('user', $scope.user);
		 			window.location.href = "#/account";
		 		});
		 	};
});

carpoolCtrl.controller('signupController', function($scope, $http, $window, $cookieStore) {
	 	console.log("signupController");

	 	$scope.signup = function() {
	 		
	 		console.log("signup");
	 		console.log($scope.user);
	 		$http.get('js/user.json', $scope.user).success(function (response) {
	 			console.log(response);
	 			$scope.user = response;
	 			$cookieStore.put('user', $scope.user);
	 			window.location.href = "#/account";
	 		});
	 	};
});

carpoolCtrl.controller('accountController', function($scope, $http, $cookieStore) {
	 	console.log("accountController");
	 	$scope.user = $cookieStore.get('user');	
	 	$http.get('', $scope.user).success(function (response) {
	 		$scope.events = response;
	 	});
});

carpoolCtrl.controller('driverInfoController', function($scope, $http) {
	 	console.log("driverInfoController");

	 	$scope.submit = function() {
	 		console.log($scope.driver);
	 		console.log("submit driver info");
	 		$http.post('', $scope.driver).success(function (response) {
	 			console.log(response);
	 			$scope.driver = response;
	 			
	 		});
	 	};
});

carpoolCtrl.controller('riderInfoController', function($scope, $http) {
	 	console.log("riderInfoController");
	 	
	 	$scope.search = function() {
	 		console.log($scope.rider);
	 		console.log("search event");
	 		$http.get('js/event.json').success(function(data) {
	 			$scope.events = data;  
		 		   console.log(data);	 		   
	 		  });

//	 		$http.get('', $scope.rider).success(function (response) {
//	 			console.log(response);
//	 			$scope.results = response;
//	 			window.location.href = "#/results";
//	 		});
	 	};
	 	
	 	
});


//var carpoolCtrl = angular.module('carpoolCtrl',[]);

//carpoolCtrl.config(['$httpProvider', function ($httpProvider) {
//  $httpProvider.defaults.useXDomain = true;
//  $httpProvider.defaults.headers.common['Access-Control-Allow-Origin'] = '*';
//  delete $httpProvider.defaults.headers.common['X-Requested-With'];
//}]);

//// Added all header request and response.
////app.all('/*', function (request, response, next) {
////    response.header("Access-Control-Allow-Origin", "*");
////    response.header("Access-Control-Allow-Headers", "X-Requested-With");
////    response.header("Access-Control-Allow-Methods", "GET, POST", "PUT", "DELETE");
////    next();
////
////});

//carpoolCtrl.controller('mainController', ['$scope', '$http',
//	function ($scope, $http) {
//	console.log("Hello world from controller.js");

//	$scope.login = function() {
//		console.log($scope.user);
//		console.log("loginangularjs");
//		$http.get('http://localhost:8080/api/user/liuqi627@gwu.edu', $scope.user).success(function (response) {
//			console.log(response);
//			$scope.user = response;
//		});
//	};
	
//	$scope.getUser = function() {
//		console.log($scope.user);
//		console.log("getUserangularjs");
//		$http.get('/getUser', $scope.user).success(function (response) {
//			console.log(response);
//		});
//	};

//}]);
