module.exports = function AnimeCtrl($scope, titleService)
	titleService.set-title 'Animes'

	animes = try JSON.parse localStorage.animes
	animes or= []

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

			@animes.push @new-anime

			@new-anime = {}
			@form-mode = false

		removeAnime: !->
			@animes.splice it, 1

		changeEp: !(anime, modifier) ->
			@anime.ep += modifier
			@anime.ep >?= 0

	$scope.$watch !->
		localStorage.animes = JSON.stringify $scope.animes