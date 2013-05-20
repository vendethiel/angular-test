require! fs

# meh.
export index = !(req, res) ->
	id = +fs.readFileSync 'server/users/user-id'

	err, users <-! req.models.user.find {id}
	res.send JSON.stringify if users.length
		users.0{username, admin}
	else null