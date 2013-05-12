require! <[express ./config fs]>

module.exports = app = express!

PORT = config.config.server?port ? 3333
PUBLIC_PATH = config.config.paths?public ? 'public'
PRIVATE_PATH = "#__dirname/server/views"


app.configure 'development' !->
	app.use express.errorHandler {+dumpExceptions, +showStack}

app.configure !->
	app.set 'views' PRIVATE_PATH
	app.set 'view engine' 'jade'
	app.set 'view options' {-layout, +pretty}
	
	app.use express.bodyParser!
	app.use express.methodOverride!

	app.use express.cookieParser!
	app.use express.session secret: 'angular-test-lol'

	app.use express.static PUBLIC_PATH
	app.use '/api' app.router
	
	# hack for "static"
	# this is a "catch-all route"
	# another option is to disable angular's html5Mode
	INDEX = let
		# delay index reading
		# we need to wait for compilation before
		# we can try to read #public/index.html
		var index_file
		-> index_file ?= fs.readFileSync "#PUBLIC_PATH/index.html"
	app.use !(req, res) ->
		res.writeHeader 200 'Content-Type': 'text/html'
		res.end INDEX!
	#*/

# API Routes
# located under /api/
require './server/api' <| app

app.startServer = !->
	app.listen PORT, !->
		console.log "Express server started"