angular.module 'anime' <[currentUser ngResource anime.templates]>
	.config require './router'
	.controller 'AnimeCtrl' require './controller'
	.factory 'Anime' require './resources/anime'