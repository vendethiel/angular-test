app = angular.module 'app' <[ngResource]>

for name, ctrl of require 'controllers'
	app.controller name, ctrl

app.config require 'router'

<- angular.element document .ready
angular.bootstrap document, <[app]>