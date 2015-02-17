path = require 'path'

module.exports =
  config:
    jscsExecutablePath:
      type: 'string'
      default: path.join __dirname, '..', 'node_modules', 'jscs', 'bin'
      description: 'Path of the `jscs` executable'
    preset:
      type: 'string'
      default: 'airbnb'
      enum: ['airbnb', 'crockford', 'google', 'jquery', 'mdcs', 'wikimedia', 'yandex']
    harmony:
      type: 'boolean'
      default: false
      description: 'Enable ES6 and JSX parsing syntax with `--esprima=fb-esprima` CLI option.'

  activate: ->
    console.log 'activate linter-jscs'
