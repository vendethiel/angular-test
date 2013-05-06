# depends on :
# - angular-ui
# - templates (jade-angularjs-brunch precompiling)
#FUCK YOUangular.module 'templates' <[anime.templates]>

for name in <[anime]>
	require "src/#name"

app = angular.module 'app' <[ui anime]>

app.config !($locationProvider) ->
	$locationProvider.html5Mode true


# titleize
app.run !($location, $rootScope) ->
	$rootScope.$on '$routeChangeSuccess' (ev, current, previous) ->
		console.dir current
		$rootScope.title = current.$$route?title

# bind for setup
$templateCache <- angular.element document .ready
angular.bootstrap document, <[app]>