module.exports = !($routeProvider) ->
	$routeProvider
		.when '/anime',
			template-url: '/src/anime/templates/index.html'
			authenticate: true
			controller: 'AnimeCtrl'
			resolve:
				animes: (Anime) -> Anime.query!