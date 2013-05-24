angular.module 'titleService' <[]>
.factory 'titleService' ($rootScope) ->
	class TitleService
		get-title: -> $rootScope.title
		set-title: (title) ->
			$rootScope.title = title

	new TitleService