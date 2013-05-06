module.exports = !($routeProvider) ->
	$routeProvider
		.when '/anime' template-url: '/src/Anime/templates/index.html' title: 'Animes'
		.otherwise redirect-to: '/anime'