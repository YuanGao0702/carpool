var carpoolCtrl = angular.module('carpoolCtrl', ['ngMaterial']);

// create the controller and inject Angular's $scope
carpoolCtrl.controller('mainController', function($scope) {
    // create a message to display in our view
    $scope.message = 'Everyone come and see how good I look!';
});

carpoolCtrl.controller('aboutController', function($scope) {
    $scope.message = 'Look! I am an about page.';
});

carpoolCtrl.controller('loginController', function($scope, $http) {
		 	console.log("loginController");

		 	$scope.login = function() {
		 		console.log($scope.user);
		 		console.log("login");
		 		$http.get('http://localhost:8080/api/user/liuqi627@gwu.edu', $scope.user).success(function (response) {
		 			console.log(response);
		 			$scope.user = response;
		 		});
		 	};
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

	 	$scope.submit = function() {
	 		console.log($scope.rider);
	 		console.log("submit rider info");
	 		$http.post('', $scope.rider).success(function (response) {
	 			console.log(response);
	 			$scope.rider = response;
	 		});
	 	};
});