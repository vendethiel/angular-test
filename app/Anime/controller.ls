module.exports = function AnimeCtrl($scope)
	animes = try JSON.parse localStorage.animes
	animes or= []

	$scope <<<
		save: !->
			localStorage.animes = JSON.stringify @animes

		animes: animes
		form-mode: false
		order-clause: '-ep'

		addAnime: !->
			if @anime-name
				@animes.push name: that, ep: if @anime-ep
					if isNaN that
						0
					else +@anime-ep
				else 0
			
			@anime-name = @anime-ep = @form-mode = null

			@save!

		removeAnime: !->
			@animes.remove it
			@save!

		changeEp: !(anime, modifier) ->
			@anime.ep += modifier
			@anime.ep >?= 0
			@save!