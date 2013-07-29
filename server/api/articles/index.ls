mask = require 'json-mask'

export index = !(req, res) ->
	err, articles <- req.models.article.all <[id Z]>
	if err then res.end!

	res.send mask articles, 'title,content,user/username'

export create = !(req, res) ->
	{title, content} = req.body
	return unless title and content

	user <-! req.get-user
	return unless user.admin

	article = new req.models.article {title, content, user_id: user.id}
	err <-! user.setArticles article

	res.send! # JSON.stringify article # needs to remove user.password btw