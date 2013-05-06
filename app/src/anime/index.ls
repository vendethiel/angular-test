angular.module 'anime' <[anime.templates]>
.config !($routeProvider) ->
	$routeProvider
		.when '/anime' template-url: '/src/Anime/templates/index.html' title: 'Animes'
		.otherwise redirect-to: '/anime'
.controller 'AnimeCtrl' require './controller'