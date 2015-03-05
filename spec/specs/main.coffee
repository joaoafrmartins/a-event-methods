describe 'AEventMethods', () ->

  it 'before', () ->

    kosher.alias 'fixture', kosher.spec.fixtures.emitters

  describe 'methods', () ->

    describe 'extend', () ->

      it 'should be add "eventsListeners" to options', () ->

        kosher.alias 'instance', new kosher.fixture.A

        kosher.instance.options.eventListeners.event.should.be.Array

        kosher.instance.options.eventListeners.event.length.should.eql 1
