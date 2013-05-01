# Declare app level module which depends on filters, and services
App = angular.module \app <[ngResource app.controllers]>

App.config <[$routeProvider $locationProvider]> ++ ($routeProvider, $locationProvider, config) ->
	$routeProvider
		.when '/task' template-url: '/views/task'
		.otherwise redirectTo: '/task'