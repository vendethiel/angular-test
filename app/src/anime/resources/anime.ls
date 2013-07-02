module.exports = ($resource) ->
	# yes, this means you need to do `res.$update!`
	# it's not overriding the `$save` method
	$resource "/api/animes/:id" {id: "@id"} {update: method: "PUT"}