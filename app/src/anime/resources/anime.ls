module.exports = (currentUser, $resource) ->
	$resource "/api/animes/:id" {id: "@id"}