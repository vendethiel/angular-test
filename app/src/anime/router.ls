module.exports = !($routeProvider) ->
	$routeProvider
		.when '/anime',
			template-url: '/anime/index.html'
			authenticate: true
			controller: 'AnimeCtrl'