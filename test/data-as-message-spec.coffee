ReturnValue = require 'nanocyte-component-return-value'
DataAsMessage = require '../src/data-as-message'

describe 'DataAsMessage', ->
  beforeEach ->
    @sut = new DataAsMessage

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
