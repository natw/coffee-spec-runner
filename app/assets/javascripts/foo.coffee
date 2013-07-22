$ = require 'jquery'

module.exports =
  check_num:
    (x) ->
      if x == 3
        return 'you guessed it'
      else
        return 'no'

  hide:
    (selector) ->
      $(selector).hide()
