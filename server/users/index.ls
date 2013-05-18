id = 1

# meh.
export index = !(req, res) ->
	err, users <-! req.models.user.find {id}
	res.send JSON.stringify if users.length
		users.0<[username admin]>
	else null