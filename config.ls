locals =
  title: 'AT'

exports.config =
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(bower_components|vendor)/

    templates:
      joinTo:
        'js/dontUseMe' : /^app/ #slutty hack for Jade-auto-compiling

    stylesheets:
      joinTo:
        'css/app.css': /^app/
        'css/vendor.css': /^(bower_components|vendor)/

  server:
    path: 'server.ls'
    db: "mysql://root@localhost/ng-test?debug=true"

  plugins:
    jaded:
      static-patterns: //^app/index.jade$//
    jade_angular:
      modules_folder: 'templates'
      locals: locals
      single_file: true
      single_file_name: 'js/templates.js'

  # Enable or disable minifying of result js / css files.
  # minify: true