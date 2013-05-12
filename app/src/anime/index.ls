angular.module 'anime' <[currentUser ngResource anime.templates]>
	.config require './router'
	.controller 'AnimeCtrl' require './controller'
	.factory 'Anime' !(currentUser, $resource) ->
		$resource "/animes/#{currentUser.id}/:id" {id: "@id"}