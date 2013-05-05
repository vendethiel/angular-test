# depends on :
# - angular-ui
# - templates (jade-angularjs-brunch precompiling)
angular.module 'templates' <[anime.templates]>

app = angular.module 'app' <[ui templates]>

for controller in <[Anime]>
	app.controller "#{controller}Ctrl" require "src/#{controller.toLowerCase!}/controller"

app.config require 'router'

app.run !($location, $rootScope) ->
	$rootScope.$on '$routeChangeSuccess' (ev, current, previous) ->
		$rootScope.title = current.$$route.title

<- angular.element document .ready
angular.bootstrap document, <[app]>