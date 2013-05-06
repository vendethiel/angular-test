module.exports = !($routeProvider) ->
	$routeProvider
		.when '/anime' template-url: '/src/Anime/templates/index.html'
		.otherwise redirect-to: '/anime'