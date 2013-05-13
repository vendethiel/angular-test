_ = require 'lodash'
require! <[./animes fs]>
user-id = 1

last-id = _.reduce animes[user-id], (h, {id}) ->
	h >? id
, 0

save = ->
	fs.writeFileSync do
		'server/animes/animes.json'
		JSON.stringify animes

# @todo mount it under '/animes'
# and remove prefixes here

# also ... please, kill this with fire
# currently uses json. Fast enough for
# prototyping but the result is /puke
# also use angular-resource
module.exports = !(app) ->
	app.get '/animes' !(req, res) ->
		user-animes = animes[user-id]

		res.send user-animes[req.query.id]

	app.del '/animes/:id' !(req, res) ->
		anime-id = +req.params.id
		animes[user-id] = _.reject animes[user-id], id: anime-id
		
		save!
		res.send 200

	app.post '/animes' !(req, res) ->
		if req.body.name
			user-animes = animes[user-id]
			# check for duplicates
			return if _.where(user-animes, name: that)length

			ep = req.body.ep
			anime =
				id: ++last-id
				name: that
				ep: if isNaN ep or ep < 0 then 0 else +ep
			
			user-animes.push anime
			save!
			res.send JSON.stringify anime
		else
			res.send 404

	app.post '/animes/:id' !(req, res) ->
		user-animes = animes[user-id]
		anime-id = req.params.id

		if _.where(user-animes, id: +anime-id)0
			{ep} = req.body
			that <<< {ep} # only ep saveable as of now
			
			save!
			res.send JSON.stringify that
		else
			res.send 404