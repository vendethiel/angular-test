# depends on :
# - angular-ui
# - templates (jade-angularjs-brunch precompiling)
app = angular.module 'app' <[ui templates]>

for name, ctrl of require 'controllers'
	app.controller name, ctrl

app.config require 'router'

<- angular.element document .ready
angular.bootstrap document, <[app]>