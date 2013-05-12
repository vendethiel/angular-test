angular.module 'security.login.toolbar' <[]>
	.directive 'loginToolbar' ->
		template-url: '/src/security/templates/login/toolbar.html'
		restrict: 'E'
		replace: true
		scope: false
		link: !($scope, $element, $attrs, $controller) ->