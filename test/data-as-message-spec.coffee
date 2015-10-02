ReturnValue = require 'nanocyte-component-return-value'
DataAsMessage = require '../src/data-as-message'

describe 'DataAsMessage', ->
  beforeEach ->
    @sut = new DataAsMessage

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      beforeEach ->
        envelope =
          data:
            prince: 'akeem'
        @result = @sut.onEnvelope envelope

      it 'should return the message', ->
        expect(@result).to.deep.equal prince: 'akeem'

    describe 'when called with another envelope', ->
      beforeEach ->
        envelope =
          data:
            king: 'joffe'
        @result = @sut.onEnvelope envelope

      it 'should return the message', ->
        expect(@result).to.deep.equal king: 'joffe'
