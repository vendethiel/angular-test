# depends on :
# - templates (jade-angularjs-brunch precompiling)

for name in <[anime shared]>
	require "src/#name"

app = angular.module 'app' <[
	ui
	titleService
	anime shared
]>

app.config !($locationProvider) ->
	$locationProvider.html5Mode true

# titleize
app.run !(titleService) ->
	titleService.set-suffix "AT"

# bind for setup
<- angular.element document .ready
angular.bootstrap document, <[app]>