export format-articles = ->
	for article in it
		if article.user
			delete article.user.password
	it