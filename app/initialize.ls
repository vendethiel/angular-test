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
	
	titleService
	anime blog security shared
]>

#/*
app.config !($locationProvider) ->
	$locationProvider.html5Mode true
#*/

# titleize
app.run !(titleService) ->
	titleService.set-suffix "AT"

# bind for setup
<- angular.element document .ready
angular.bootstrap document, <[app]>