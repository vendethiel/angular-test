require! './users'
user-id = 1

# meh.
export index = !(req, res) ->
	res.send JSON.stringify users[user-id]