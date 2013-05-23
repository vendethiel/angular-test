angular.module 'currentUser' <[]>
.factory 'currentUser' ($http, $rootScope) ->
	get: ->
		# erm..
		# this is needed for private routes but
		# seriously, it sucks
		if $rootScope.user
			return then: -> that

		$http.get '/api/session' {+cache} .then ({data}) ->
			if data is 'null'
				null
			else data