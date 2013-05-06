angular.module 'titleService' <[]>
.factory 'titleService' ($document) ->
	class TitleService
		get-suffix: -> @suffix
		set-suffix: (@suffix) ->

		get-title: -> $document.prop 'title'
		set-title: (title) ->
			title += " - #that" if @suffix
			$document.prop 'title' title

	new TitleService