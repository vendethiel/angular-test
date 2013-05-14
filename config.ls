exports.config =
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
      order:
        before:
          'vendor/angular/angular.js'
          'vendor/angular-ui/angular-ui.js'
          'vendor/angular-resource/angular-resource.js'
#          'vendor/sugar/sugar-full.development.js'

    stylesheets:
      joinTo:
        'css/app.css': /^app/
        'css/vendor.css': /^vendor/
      order:
        before:
          'vendor/bootstrap/bootstrap.css'
          'vendor/bootstrap/bootstrap-responsive.css'

    templates:
      joinTo:
        'js/dontUseMe' : /^app/ #slutty hack for Jade-auto-compiling

  plugins:
    jade:
      pretty: true
    jade_angular:
      modules_folder: 'templates'

  server:
    path: 'server.ls'
    port: 3333
    base: ''
    run: false

    #db: "#protocol://#user:#password@#host/#database"
    db: "mysql://root@localhost/ng-test"

  # Enable or disable minifying of result js / css files.
  # minify: true
