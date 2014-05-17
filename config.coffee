exports.config =
  # See https://github.com/brunch/brunch/blob/stable/docs/config.md for documentation.
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
      order:
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.10.2.js',
          'vendor/scripts/underscore-1.5.2.js',
          'vendor/scripts/backbone-1.0.0.js',
          'vendor/scripts/backbone-mediator.js',
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^app|bootstrap\.less/

    templates:
      joinTo: 'javascripts/app.js'

  plugins:
    appcache:
      externalCacheEntries: [
        'http://maps.gstatic.com/mapfiles/place_api/icons/bar-71.png'
        'http://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'
        'http://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png'
        'http://maps.gstatic.com/mapfiles/place_api/icons/wine-71.png'
      ]
      network: ['*', 'http://*', 'https://*']

  server:
    run: yes

  watcher:
    # If on Windows and you don't see new files / modified files, make this true
    # and restart Brunch. Slower detects, but more reliable.
    usePolling: false
