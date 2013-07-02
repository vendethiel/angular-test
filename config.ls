locals =
  title: 'AT'

assets =
  javascripts:
    'vendor/angular/angular.js'
    'vendor/angular-resource/angular-resource.js'
    'vendor/angular-bootstrap/ui-bootstrap-tpls.js'
    #'vendor/angular-ui/build/angular-ui.js'
    #'vendor/sugar/sugar-full.development.js'
  stylesheets:
    'vendor/components-bootstrap/css/bootstrap.css'
    'vendor/components-bootstrap/css/bootstrap-responsive.css'


exports.config =
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
      order:
        before: assets.javascripts

    stylesheets:
      joinTo:
        'css/app.css': /^app/
        'css/vendor.css': /^vendor/
      order:
        before: assets.stylesheets

    templates:
      joinTo:
        'js/dontUseMe' : /^app/ #slutty hack for Jade-auto-compiling

  server:
    path: 'server.ls'
    db: "mysql://root@localhost/ng-test?debug=true"

  plugins:
    jade: {+pretty, locals}
    jade_angular:
      modules_folder: 'templates'
      locals: locals
    javascripts: assets.javascripts
    stylesheets: assets.stylesheets

  # Enable or disable minifying of result js / css files.
  # minify: true