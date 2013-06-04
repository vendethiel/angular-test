module.exports = ($resource) ->
	$resource "/api/category/:id" {id: "@id"} {update: method: "PUT"}