js_pipeline     = require 'js-pipeline'
css_pipeline    = require 'css-pipeline'
sass            = require 'node-sass'
postcss         = require 'postcss'
autoprefixer    = require 'autoprefixer'
roots_yaml      = require 'roots-yaml'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.js'),
    css_pipeline(files: 'assets/css/*.scss'),
    roots_yaml()
  ]

  postcss:
    use: [autoprefixer()]
    map:
      inline: false

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
