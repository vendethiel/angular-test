require! <[./users ./animes]>
user-id = 1

module.exports = (app) ->
	/*
	app.param 'user' !(req, res, next, id) ->
		req.user = that if users[id]
		next!
	*/

	app.get '/' !(req, res) ->
		res.send 'API v1'

	app.get '/current-user' !(req, res) ->
		#user-id = req.session.user-id
		res.send JSON.stringify users[user-id]

	app.get '/animes' !(req, res) ->
		res.send JSON.stringify animes[user-id]