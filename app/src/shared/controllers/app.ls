module.exports = not function AppCtrl($scope, $rootScope, currentUser)
	currentUser.get!then (user) ->
		$rootScope.user = $scope.user = user