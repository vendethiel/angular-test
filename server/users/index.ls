require! './users'
user-id = null #1

# meh.
export index = !(req, res) ->
	res.send if users[user-id]
		JSON.stringify that
	else null