

var gwuCarpool = angular.module('gwuCarpool',[]);

gwuCarpool.config(['$httpProvider', function ($httpProvider) {
    $httpProvider.defaults.useXDomain = true;
    $httpProvider.defaults.headers.common['Access-Control-Allow-Origin'] = '*';
    delete $httpProvider.defaults.headers.common['X-Requested-With'];
}]);

// Added all header request and response.
//app.all('/*', function (request, response, next) {
//    response.header("Access-Control-Allow-Origin", "*");
//    response.header("Access-Control-Allow-Headers", "X-Requested-With");
//    response.header("Access-Control-Allow-Methods", "GET, POST", "PUT", "DELETE");
//    next();
//
//});

gwuCarpool.controller('mainController', ['$scope', '$http',
	function ($scope, $http) {
	console.log("Hello world from controller.js");

	$scope.login = function() {
		console.log($scope.user);
		console.log("loginangularjs");
		$http.get('http://localhost:8080/api/user/liuqi627@gwu.edu', $scope.user).success(function (response) {
			console.log(response);
			$scope.user = response;
		});
	};
	
	$scope.getUser = function() {
		console.log($scope.user);
		console.log("getUserangularjs");
		$http.get('/getUser', $scope.user).success(function (response) {
			console.log(response);
		});
	};

}]);

//var gwuCarpool = angular.module('gwuCarpool', ['ngRoute']);
//
//    // configure our routes
//    gwuCarpool.config(function($routeProvider) {
//        $routeProvider
//
//            // route for the home page
//            .when('/', {
//                templateUrl : 'view/home.html',
//                controller  : 'mainController'
//            })
//
//            // route for the about page
//            .when('/about', {
//                templateUrl : 'view/about.html',
//                controller  : 'aboutController'
//            })
//
//            // route for the contact page
//            .when('/login', {
//                templateUrl : 'view/login.html',
//                controller  : 'contactController'
//            });
//    });
//
//    // create the controller and inject Angular's $scope
//    gwuCarpool.controller('mainController', function($scope) {
//        // create a message to display in our view
//        $scope.message = 'Everyone come and see how good I look!';
//    });
//
//    gwuCarpool.controller('aboutController', function($scope) {
//        $scope.message = 'Look! I am an about page.';
//    });
//
//    gwuCarpool.controller('contactController', function($scope) {
//        $scope.message = 'Contact us! JK. This is just a demo.';
//    });


