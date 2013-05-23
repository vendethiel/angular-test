# meh.
export index = !(req, res) ->
	unless id = req.session.user-id
		res.send 'null'
		return	

	err, users <-! req.models.user.find {id}
	res.send JSON.stringify if users.length
		users.0{username, admin}
	else null

export create = !(req, res) ->
	params = req.body.params{username, password}
	err, users <-! req.models.user.find params
	res.send JSON.stringify if users.length
		req.session.user-id = users.0.id
		users.0
	else null

export destroy = !(req, res) ->
	return unless req.session.user-id
	delete req.session.user-id
	res.send 200