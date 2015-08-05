module.exports = (grunt) ->
  'use strict'

  grunt.initConfig
    pkg : grunt.file.readJSON("package.json")

    browserify:
      app:
        files:
          "dist/js/app.js": ["src/js/js/app.js"]
        options:
          exclude: ["jquery", "underscore"]
          debug: true
      test:
        files:
          "test/runner/bundle.js": ["test/runner/main.js"]
        options:
          exclude: ["jquery", "underscore"]
          debug: true

    "mocha_phantomjs":
      test:
        options:
          urls: [
            "http://localhost:8000/test/testRunner.html"
          ]

    connect:
      server:
        options:
          port: 8000
          base: '.'

  grunt.loadNpmTasks "grunt-browserify"
  grunt.loadNpmTasks "grunt-mocha-phantomjs"
  grunt.loadNpmTasks "grunt-contrib-connect"

  grunt.registerTask "default", [
    "browserify:app",
    "browserify:test",
    "connect:server",
    "mocha_phantomjs:test"
  ]
