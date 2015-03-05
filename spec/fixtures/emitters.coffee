{ EventEmitter } = require 'events'

kosher.alias 'AEventMethods'

class AEmitter extends EventEmitter

  constructor: (@options={}) ->

    super

    kosher.AEventMethods.extend @

class A extends AEmitter

  "event?": () ->

module.exports =

  "A": A
