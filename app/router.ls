module.exports = not function Router($routeProvider, $locationProvider)
	$routeProvider
		.when '/task' template-url: '/templates/task.html'
		.otherwise redirect-to: '/task'

	$locationProvider.html5Mode true