module.exports = not function AnimeCtrl($scope, currentUser, titleService)
	titleService.set-title 'Animes'

	currentUser.get!then !(user) ->
		console.log user

	$scope <<<
		new-anime: {}
		form-mode: false
		order-clause: '-ep'

		addAnime: !->
			@form-mode = false
			return unless @new-anime.name

			+ = @new-anime.ep
			@new-anime.ep = 0 if isNaN @new-anime.ep

			@animes.push @new-anime

			@new-anime = {}
			@form-mode = false

		removeAnime: !->
			@animes.splice it, 1

		changeEp: !(anime, modifier) ->
			@anime.ep += modifier
			@anime.ep >?= 0