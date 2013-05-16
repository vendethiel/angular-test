angular.module 'currentUser' <[]>
.factory 'currentUser' ($http) ->
	get: ->
		$http.get '/api/users' .then ({data}) ->
			data ? false