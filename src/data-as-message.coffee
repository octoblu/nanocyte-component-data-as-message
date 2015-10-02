ReturnValue = require 'nanocyte-component-return-value'

class DataAsMessage extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.data

module.exports = DataAsMessage
