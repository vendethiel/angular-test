# depends on :
# - templates (jade-angularjs-brunch precompiling)

for name in <[anime blog shared]>
	require "src/#name"

/*
<[
	deps (like ui)
	own components (like titleService)
	modules (like anime)
]>
*/
app = angular.module 'app' <[
	
	titleService
	anime blog
]>

app.config !($locationProvider) ->
	$locationProvider.html5Mode true

# titleize
app.run !(titleService) ->
	titleService.set-suffix "AT"

# bind for setup
<- angular.element document .ready
angular.bootstrap document, <[app]>