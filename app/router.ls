module.exports = not function Router($routeProvider, $locationProvider)
	$routeProvider
		.when '/anime' template-url: '/Anime/templates/index.html' title: 'Animes'
		.otherwise redirect-to: '/anime'

	$locationProvider.html5Mode true