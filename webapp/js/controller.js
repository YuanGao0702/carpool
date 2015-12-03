'use strict';

var carpoolCtrl = angular.module('carpoolCtrl', ['ngCookies']);

//create the controller and inject Angular's $scope
carpoolCtrl.controller('mainController', function($scope, $cookieStore) {
	$scope.user = $cookieStore.get('user');	
	console.log('mainresponse:', $scope.user);
});

carpoolCtrl.controller('aboutController', function($scope) {
    $scope.message = 'Look! I am an about page.';
});

carpoolCtrl.controller('loginController', function($scope, $http, $cookieStore) {
		 	console.log("loginController");
		 	$scope.login = function() {		 		
		 		console.log("login");	 		
		 		$http.get('http://localhost:8080/api/login/request'	+ '?email=' + $scope.user.email
		 															+ '&password=' + $scope.user.password
		 															).success(function (response) {			
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
	 		console.log("scope:", $scope.user);
	 		$http.get('http://localhost:8080/api/signup/request'+ '?email=' + $scope.user.email
	 															+ '&password=' + $scope.user.password
	 															+ '&gender=' + $scope.user.gender
	 															+ '&phone=' + $scope.user.phone
	 															+ '&username=' + $scope.user.name
	 															).success(function (response) {
	 			console.log("response:", response);
	 			$scope.user = response;
	 			$cookieStore.put('user', $scope.user);
	 			window.location.href = "#/account";
	 		});
	 	};
});

carpoolCtrl.controller('accountController', function($scope, $http, $cookieStore) {
	 	console.log("accountController");
	 	$scope.user = $cookieStore.get('user');	
	 	$http.get('http://localhost:8080/api/users/'+ $scope.user.email + '/events').success(function (response) {
	 		$scope.events = response;
	 		console.log("response:", $scope.events);
	 	});

});

carpoolCtrl.controller('driverInfoController', function($scope, $http, $window, $cookieStore) {
	 	console.log("driverInfoController");
	$scope.user = $cookieStore.get('user');	
	 	$scope.submit = function() {
	 		console.log($scope.event);
	 		console.log("create a event");
	 		var createEvent = {};
	 		createEvent.title = $scope.event.title;
	 		createEvent.startAddress = $scope.event.startAddress;
	 		createEvent.endAddress = $scope.event.endAddress;
	 		createEvent.date = $scope.event.date;
	 		createEvent.capacity = $scope.event.capicity;
	 		createEvent.description = $scope.event.memo;
	 		createEvent.user = $scope.user;
	 		$http.post('http://localhost:8080/api/events/', createEvent).success(function (response) {
	 			window.location.href = "#/account";	
	 			
	 		});
	 	};
});

carpoolCtrl.controller('riderInfoController', function($scope, $http) {
	 	console.log("riderInfoController");
	 	
	 	$scope.search = function() {
	 		console.log($scope.rider);
	 		console.log("search event");
	 		$http.get('http://localhost:8080/api/search/request'+ '&startLocation=' + $scope.user.startLocation
		 														+ '&endLocation=' + $scope.user.endlocation
		 														+ '&date=' + $scope.user.date
		 														).success(function(data) {
	 			$scope.events = data;  
		 		   console.log(data);	 		   
	 		  });

	 	};	 		 	
});

carpoolCtrl.controller('eventController', function($scope, $http, $routeParams, $cookieStore) { 	
 	console.log("eventController");
 	$scope.user = $cookieStore.get('user');	
 	$scope.eventId = $routeParams.eventId;
 	$http.get('http://localhost:8080/api/events/request'+ '?eventId=' + $scope.eventId
		 												+ '&userId=' + $scope.user.id
		 												).success(function (response) {
 	$scope.event = response;
 	console.log("event:", $scope.event);
 	$scope.accept = function($useremail) {
	 	console.log("email:", $useremail);
	 	};
 	});
});
