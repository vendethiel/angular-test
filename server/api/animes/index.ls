export index = !(req, res) ->
	err, animes <-! req.models.anime.find user_id: req.session.user-id
	res.send JSON.stringify animes

export create = !(req, res) ->
	{ep, name} = req.body
	return unless name and user_id = req.session.user-id
	ep = if isNaN ep or ep < 0 then 0 else +ep
	
	err, [anime] <-! req.models.anime.create [{name, ep, user_id}]
	res.send JSON.stringify anime

export update = !(req, res) ->
	err, [anime] <-! req.models.anime.find user_id: req.session.user-id, id: req.params.anime
	
	anime <<< req.body{ep}
	anime.save!

	res.send anime

export destroy = !(req, res) ->
	params = user_id: req.session.user-id, id: req.params.anime
	err <-! req.models.anime.find params .remove
	res.send 200 unless err?