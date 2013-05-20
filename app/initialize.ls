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
*/
app = angular.module 'app' <[
	
	currentUser titleService
	anime blog security shared
]>

#/*
app.config !($locationProvider) ->
	$locationProvider.html5Mode true
#*/

# titleize
app.run !(currentUser, titleService, $rootScope, $location) ->
	titleService.set-suffix "AT"

	currentUser.get!then ($rootScope.user) ->

	$rootScope.$on "$routeChangeStart" !(event, route) ->
		user <- currentUser.get!then
		if route.authenticate and not user
			console.log "Private area"
			event.preventDefault!
			$location.path "/"

# bind for setup
<- angular.element document .ready
angular.bootstrap document, <[app]>