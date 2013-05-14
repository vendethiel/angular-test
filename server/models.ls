module.exports = !(db, models) ->
	models.anime = db.define 'animes',
		name: String
		ep: Number
		user_id: Number
	/*
	models.user = db.define 'users',
		username: String
		password: String
		admin: Boolean

	models.anime.hasOne 'user', models.user, {+required}
	models.user.hasMany 'animes', models.anime
	#*/