'use strict';

var carpoolCtrl = angular.module('carpoolCtrl', ['ngCookies']);

//create the controller and inject Angular's $scope
carpoolCtrl.controller('mainController', function($scope, $cookieStore) {
	$scope.user = $cookieStore.get('user');	
});

carpoolCtrl.controller('aboutController', function($scope) {
    $scope.message = 'Look! I am an about page.';
});

carpoolCtrl.controller('loginController', function($scope, $http, $cookieStore) {
		 	console.log("loginController");
		 	$scope.login = function() {		 		
		 		console.log("login");	 		
		 		$http.get('http://localhost:8080/api/login/request'+ '?email=' + $scope.user.email + '&password=' + $scope.user.password, $scope.user).success(function (response) {			
		 			$scope.user = response;
		 			$cookieStore.put('user', $scope.user);
		 			console.log('response:', $scope.user);
		 			window.location.href = "#/account";
		 		});
		 	};
});

carpoolCtrl.controller('signupController', function($scope, $http, $window, $cookieStore) {
	 	console.log("signupController");

	 	$scope.signup = function() {
	 		
	 		console.log("signup");
	 		console.log($scope.user);
	 		$http.get('http://10.198.8.254:8080/api/signup/', {params:{"email": $scope.user.email, 
	 															"password": $scope.user.password, 
	 															"gender": $scope.user.gender, 
	 															"phone": $scope.user.phone, 
	 															"name": $scope.user.name
	 															}}).success(function (response) {
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
	 	$http.get('http://10.198.8.254:8080/api/account/', {params:{"userId": $scope.user.id}}).success(function (response) {
	 		$scope.events = response;
	 	});
});

carpoolCtrl.controller('driverInfoController', function($scope, $http, $window, $cookieStore) {
	 	console.log("driverInfoController");

	 	$scope.submit = function() {
	 		console.log($scope.event);
	 		console.log("submit driver info");
	 		$http.post('http://10.198.8.254:8080/api/create/', {params:{"title": $scope.event.title,
	 															"startLocation": $scope.event.startLocation, 
	 															"endLocation": $scope.event.endLocation, 
	 															"date": $scope.event.date,
	 															"capacity": $scope.event.capacity,
	 															"price": $scope.event.price,
	 															"memo": $scope.event.memo
	 															}}).success(function (response) {
	 			window.location.href = "#/account";	
	 			
	 		});
	 	};
});

carpoolCtrl.controller('riderInfoController', function($scope, $http) {
	 	console.log("riderInfoController");
	 	
	 	$scope.search = function() {
	 		console.log($scope.rider);
	 		console.log("search event");
	 		$http.get('http://10.198.8.254:8080/api/search/', {params:{"startLocation": $scope.rider.startLocation, 
																"endLocation": $scope.rider.endLocation, 
																"date": $scope.rider.date,													
																}}).success(function(data) {
	 			$scope.events = data;  
		 		   console.log(data);	 		   
	 		  });

	 	};	 		 	
});

carpoolCtrl.controller('eventController', function($scope, $routeParams, $cookieStore) { 	
 	console.log("eventController");
 	$scope.user = $cookieStore.get('user');	
 	$scope.eventId = $routeParams.eventId;
 	$http.get('http://10.198.8.254:8080/api/event/', {params:{"eventId": $scope.eventId, 
														"userId": $scope.user.id, 													
														}}).success(function (response) {
 		$scope.event = response;
 	});
});
