module.exports = not function AnimeCtrl(animes, titleService, $scope, $http)
	titleService.set-title 'Animes'

	$scope <<<
		animes: animes
		new-anime: {}
		form-mode: false
		order-clause: '-ep'

		addAnime: !->
			@form-mode = false
			return unless @new-anime.name

			+ = @new-anime.ep
			@new-anime.ep = 0 if isNaN @new-anime.ep

			@animes.push Anime.save @new-anime
	
			@new-anime = {}
			@form-mode = false

		removeAnime: !->
			@animes[it]$delete!
			@animes.splice it, 1

		changeEp: !(anime, modifier) ->
			@anime.ep += modifier
			@anime.ep >?= 0
			@anime.$update!