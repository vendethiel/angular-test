module.exports = !(db, models) ->
	models.user = db.define 'users',
		username: String
		password: String
		admin: Boolean


	models.anime = db.define 'animes',
		name: String
		ep: Number

	models.anime.hasOne 'user', models.user, {reverse: 'animes', +required}


	models.article = db.define 'articles',
		title: String
		content: String

	models.article.hasOne 'user', models.user, {reverse: 'articles', +required, +autoFetch}

/*
Notes to my future self :
 We don't reverse ourself associations when using "reverse" option in hasOne.
 We don't even specify the key ourself
 It's basically gonna "hasOne" on the reverse model, but with "reversed: true"
  which then acts like a "hasMany" ...
 However, we must currently (02/06/13) use "setArticles" instead of
  (ie, in hasMany) "addArticles" because as a pseudo-hasOne, it gets the same
  setter name. It however does not wipe the other records like "hasMany"'s "setArticles"
  it just sets the "user_id" key like you would expect
*/