module.exports = not function LoginCtrl($scope, $element, $attrs,
	$rootScope, $http, $location)
	$scope.login = !->
		return unless $scope.username and $scope.password
		$http.post '/api/session' params: $scope{username, password}
			.then !({data}) ->
				$scope.password = ''
				if data is 'null'
					alert "Invalid username/password"
				else
					$rootScope.user = data

	$scope.logout = !->
		return unless $rootScope.user

		$http.delete '/api/session' .then !->
			$rootScope.user = null
			$location.path '/'