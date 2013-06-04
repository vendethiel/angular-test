module.exports = ($resource) ->
	$resource "/api/articles/:id" {id: "@id"} {update: method: "PUT"}