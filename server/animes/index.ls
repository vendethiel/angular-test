user_id = 1

export index = !(req, res) ->
	err, animes <-! req.models.anime.find {user_id}
	res.send JSON.stringify animes

export create = !(req, res) ->
	{ep, name} = req.body
	return unless name
	ep = if isNaN ep or ep < 0 then 0 else +ep
	
	err, [anime] <-! req.models.anime.create [{name, ep, user_id}]
	res.send JSON.stringify anime

export update = !(req, res) ->
	err, [anime] <-! req.models.anime.find {user_id, id: req.params.anime}
	anime <<< req.body{ep}
	anime.save!
	res.send JSON.stringify anime

export destroy = !(req, res) ->
	err <-! req.models.anime.find {user_id, id: req.params.anime} .remove
	res.send 200