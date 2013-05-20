angular.module 'currentUser' <[]>
.factory 'currentUser' ($http) ->
	get: ->
		$http.get '/api/users' {+cache} .then ({data}) ->
			if data is 'null'
				null
			else data