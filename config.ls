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
          'vendor/angular-resource/angular-resource.js'
          'vendor/angular-ui/angular-ui.js'
          'vendor/sugar/sugar-full.development.js'

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
      order:
        before:
          'vendor/angular-ui.css'
          ...

    templates:
      joinTo: 'js/templates.js'

  # Enable or disable minifying of result js / css files.
  # minify: true
