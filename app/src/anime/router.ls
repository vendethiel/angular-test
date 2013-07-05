module.exports = !($routeProvider) ->
	$routeProvider
		.when '/anime',
			template-url: '/anime/templates/index.html'
			authenticate: true
			controller: 'AnimeCtrl'