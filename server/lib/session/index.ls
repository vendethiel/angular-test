require! <[express]>
app = module.exports = express!

app.get '/' !(req, res) ->
	unless id = req.session.user-id
		res.send 'null'
		return	

	err, user <-! req.models.user.get id
	res.send JSON.stringify if user
		user{username, admin}
	else null

app.post '/' !(req, res) ->
	params = req.body.params{username, password}
	err, users <-! req.models.user.find params
	res.send JSON.stringify if users.length
		req.session.user-id = users.0.id
		users.0
	else null

app.del '/' !(req, res) ->
	return unless req.session.user-id
	delete req.session.user-id
	res.send 200