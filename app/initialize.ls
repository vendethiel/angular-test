# depends on :
# - templates (jade-angularjs-brunch precompiling)

for name in <[anime blog security shared]>
	require "src/#name"

/*
<[
	deps (like ui)
	own components (like titleService)
	modules (like anime)
]>

when requiring, it should be :
<[
	own (ie titleService)
	angular (ie ngResource)
	generates (ie templates)
]>

when declaring a module, it should be
	.controller
	.factory
	.config
	.run

@todo first factory maybeh
*/
app = angular.module 'app' <[
	
	currentUser titleService
	anime blog security shared
]>

app.config !($locationProvider) ->
	$locationProvider.html5Mode true

app.run !(currentUser, titleService, $rootScope, $location) ->
	titleService.set-suffix "AT"

	currentUser.get!then ($rootScope.user) ->

	$rootScope.$on "$routeChangeStart" !(event, route) ->
		user <- currentUser.get!then
		is-admin = user?admin
		if route.authenticate and not user or
			route.admin and not user?admin
		then
			console.log "Private area"
			event.preventDefault!
			$location.path "/"