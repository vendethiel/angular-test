module.exports = function AnimeCtrl($scope)
	animes = try JSON.parse localStorage.animes
	animes or= []

	$scope <<<
		save: !->
			localStorage.animes = JSON.stringify @animes

		animes: animes
		new-anime: {}
		form-mode: false
		order-clause: '-ep'

		addAnime: !->
			@form-mode = false
			return unless @new-anime.name

			if not @new-anime.ep or isNaN @new-anime.ep
				@new-anime.ep = 0
			else + = @new-anime.ep

			@animes.push @new-anime
			@save!

			@new-anime = {}
			@form-mode = false

		removeAnime: !->
			@animes.remove it
			@save!

		changeEp: !(anime, modifier) ->
			@anime.ep += modifier
			@anime.ep >?= 0
			@save!