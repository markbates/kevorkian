class MD.Button.Hr extends MD.Button

  constructor: (@attributes = {}) ->
    @name = "hr"
    super(@name, @attributes)

  html: =>
    @name.toUpperCase()

  tooltip: ->
    "Horizontal Rule"

  buttonClick: (button, range) =>
    results = button.perform range, (text) ->
      "---\n\n"
    button.setCaratRange(start: results.finalRange.end)