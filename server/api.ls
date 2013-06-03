require! <[express express-resource]>

app = module.exports = express!

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
 * Routes
 */
app.use '/session' require './lib/session'

/**
 * Resources
 */
app.resource 'animes' require './lib/animes'
app.resource 'articles' require './lib/articles'