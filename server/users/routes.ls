require! './users'
user-id = 1

module.exports = (app) ->
	app.get '/current-user' !(req, res) ->
		#user-id = req.session.user-id
		res.send JSON.stringify users[user-id]