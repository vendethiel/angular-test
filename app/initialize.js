(function(){
  var i$, ref$, len$, name, app;
  for (i$ = 0, len$ = (ref$ = ['anime', 'shared']).length; i$ < len$; ++i$) {
    name = ref$[i$];
    require("src/" + name);
  }
  /*
  <[
  	deps (like ui)
  	own components (like titleService)
  	modules (like anime)
  ]>
  */
  app = angular.module('app', ['titleService', 'anime']);
  app.config(function($locationProvider){
    $locationProvider.html5Mode(true);
  });
  app.run(function(titleService){
    titleService.setSuffix("AT");
  });
  angular.element(document).ready(function(){
    return angular.bootstrap(document, ['app']);
  });
}).call(this);
