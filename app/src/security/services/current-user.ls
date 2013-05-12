angular.module 'currentUser' <[]>
.factory 'currentUser' ($http) ->
	get: ->
		$http.get '/api/current-user' .then ({data}) ->
			data ? false