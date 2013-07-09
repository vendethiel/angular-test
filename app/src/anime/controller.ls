module.exports = not function AnimeCtrl(Anime, titleService, $scope, $http)
	titleService.set-title 'Animes'

	$scope <<<
		animes: Anime.query!
		new-anime: ep: 0
		form-mode: false

		addAnime: !->
			@form-mode = false
			return unless @new-anime.name

			+ = @new-anime.ep
			@new-anime.ep = 0 if isNaN @new-anime.ep

			@animes.push Anime.save @new-anime
	
			@new-anime = ep: 0

		removeAnime: !->
			idx = @animes.indexOf it
			@animes[idx]$delete!
			@animes.splice idx, 1

		changeEp: !(anime, modifier) ->
			@anime.ep += modifier
			@anime.ep >?= 0

			@anime.$update!