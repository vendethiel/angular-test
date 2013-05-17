angular.module 'security.login.form' <[]>
	.directive 'loginForm' ->
		template-url: '/src/security/templates/login/form.html'
		restrict: 'E'
		replace: true
		scope: true
		controller: !($scope, $element, $attrs) ->
			$scope.login = !->
				return unless $scope.username and $scope.password
				console.log "Loggin in as #{$scope<[username password]> * '/'}"
				# $http...