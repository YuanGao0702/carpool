

var gwuCarpool = angular.module('gwuCarpool', ['ngRoute']);

   // configure our routes
   gwuCarpool.config(function($routeProvider) {
       $routeProvider

           // route for the home page
           .when('/', {
               templateUrl : 'view/home.html',
               controller  : 'mainController'
           })

           // route for the about page
           .when('/about', {
               templateUrl : 'view/about.html',
               controller  : 'aboutController'
           })

           .when('/login', {
               templateUrl : 'view/login.html',
               controller  : 'loginController'
           })
           
           .when('/signup', {
               templateUrl : 'view/signup.html',
               controller  : 'signupController'
           })
           
           .when('/account', {
               templateUrl : 'view/account.html',
               controller  : 'accountController'
           })
       
       	   .when('/driver_info', {
           templateUrl : 'view/driver_info.html',
           controller  : 'driverInfoController'
           })
       
           .when('/rider_info', {
           templateUrl : 'view/rider_info.html',
           controller  : 'riderInfoController'
           })
       
   });

   // create the controller and inject Angular's $scope
   gwuCarpool.controller('mainController', function($scope) {
     
   });

   gwuCarpool.controller('aboutController', function($scope) {
       $scope.message = 'Look! I am an about page.';
   });

   gwuCarpool.controller('loginController', function($scope, $http, $cookieStore) {
		 	console.log("loginController");

		 	$scope.login = function() {
		 		console.log($scope.user);
		 		console.log("login");
		 		$http.get('http://localhost:8080/api/user/liuqi627@gwu.edu', $scope.user).success(function (response) {
		 			console.log(response);
		 			$scope.user = response;
		 			$cookieStore.put('user', $scope.user);	 					 			
		 		});
		 	};
   });
   
   gwuCarpool.controller('signupController', function($scope, $http, $cookieStore, $window) {
	 	console.log("signupController");

	 	$scope.signup = function() {
	 		console.log($scope.user);
	 		console.log("signup");
	 		$http.get('user/event.json', $scope.user).success(function (response) {
	 			console.log(response);
	 			$scope.user = response;
	 			$cookieStore.put('user', $scope.user);
	 			window.location.href = "#/account";
	 		});
	 	};
});
   
   gwuCarpool.controller('accountController', function($scope, $http, $cookieStore) {
	 	console.log("accountController");
	 	$scope.user = $cookieStore.get('user');						 				 	
   });
   
   gwuCarpool.controller('driverInfoController', function($scope, $http) {
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
   
   gwuCarpool.controller('riderInfoController', function($scope, $http) {
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
   

// var gwuCarpool = angular.module('gwuCarpool',[]);

// gwuCarpool.config(['$httpProvider', function ($httpProvider) {
//     $httpProvider.defaults.useXDomain = true;
//     $httpProvider.defaults.headers.common['Access-Control-Allow-Origin'] = '*';
//     delete $httpProvider.defaults.headers.common['X-Requested-With'];
// }]);

// // Added all header request and response.
// //app.all('/*', function (request, response, next) {
// //    response.header("Access-Control-Allow-Origin", "*");
// //    response.header("Access-Control-Allow-Headers", "X-Requested-With");
// //    response.header("Access-Control-Allow-Methods", "GET, POST", "PUT", "DELETE");
// //    next();
// //
// //});

// gwuCarpool.controller('mainController', ['$scope', '$http',
// 	function ($scope, $http) {
// 	console.log("Hello world from controller.js");

// 	$scope.login = function() {
// 		console.log($scope.user);
// 		console.log("loginangularjs");
// 		$http.get('http://localhost:8080/api/user/liuqi627@gwu.edu', $scope.user).success(function (response) {
// 			console.log(response);
// 			$scope.user = response;
// 		});
// 	};
	
// 	$scope.getUser = function() {
// 		console.log($scope.user);
// 		console.log("getUserangularjs");
// 		$http.get('/getUser', $scope.user).success(function (response) {
// 			console.log(response);
// 		});
// 	};

// }]);



