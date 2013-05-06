# depends on :
# - templates (jade-angularjs-brunch precompiling)

for name in <[anime shared]>
	require "src/#name"

app = angular.module 'app' <[ui anime shared]>

app.config !($locationProvider) ->
	$locationProvider.html5Mode true


# titleize
app.run !($location, $rootScope) ->
	$rootScope.$on '$routeChangeSuccess' (ev, current, previous) ->
		console.dir current
		$rootScope.title = current.$$route?title

# bind for setup
<- angular.element document .ready
angular.bootstrap document, <[app]>