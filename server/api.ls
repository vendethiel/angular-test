require! <[express express-resource]>

app = express!

/**
 * Read payload (body)
 * Allow PUT/PATCH/DELETE etc
 */
app.use express.bodyParser!
app.use express.methodOverride!

/**
 * Cookies and Session
 */
app.use express.cookieParser!
app.use express.session secret: 'angular-test-lol'

/**
 * Serve resources
 */
for resource in <[animes users]>
	app.resource resource, require "./#resource"

module.exports = app