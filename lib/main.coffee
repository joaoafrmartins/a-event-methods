Mixto = require 'mixto'

aEventFormatFn = require 'a-event-format-fn'

class AEventMethods extends Mixto

  extended: () ->

    @options ?= {}

    @options.eventListeners ?= {}

    @options.eventFormatFn ?= undefined

    @options.eventIdentifier ?= @eventIdentifier or "?"

    for key, method of @

      if key.charAt(key.length - 1) is @options.eventIdentifier

        event = key.slice 0, -1

        _event = @options.eventFormatFn or aEventFormatFn.bind @

        event = _event

          name: event

          callback: method.bind @

        @options.eventListeners[event.name] ?= []

        @options.eventListeners[event.name].push event

module.exports = AEventMethods
