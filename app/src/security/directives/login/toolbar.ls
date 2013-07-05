angular.module 'security.login.toolbar' <[]>
	.directive 'loginToolbar' ->
		template-url: '/security/login/toolbar.html'
		restrict: 'E'
		replace: true
		scope: true
		controller: 'LoginToolbarCtrl'