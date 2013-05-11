angular.module 'security.login.toolbar' <[]>
	.directive 'loginToolbar' ->
		template-url: '/src/security/templates/login/toolbar.html'
		restrict: 'E'
		replace: true
		scope: true
		link: !($scope, $element, $attrs, $controller) ->
			$scope.isAuthenticated = false