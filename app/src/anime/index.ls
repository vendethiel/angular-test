angular.module 'anime' <[currentUser ngRoute ngResource anime.templates]>
	.controller 'AnimeCtrl' require './controller'
	.factory 'Anime' require './resources/anime'
	.config require './router'