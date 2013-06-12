module.exports = !(req, res, next) ->
	req.get-user = !(cb) ->
		unless id = req.session.user-id
			res.end!
			return	

		err, user <-! req.models.user.get id
		if err or not user
			res.end!
			return

		cb user

	next!