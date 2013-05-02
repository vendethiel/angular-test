module.exports = not function Router($routeProvider)
	$routeProvider
		.when '/task' template-url: '/templates/task.html'
		.otherwise redirect-to: '/task'