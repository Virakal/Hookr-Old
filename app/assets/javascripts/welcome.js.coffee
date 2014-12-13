# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  ($ 'select').on 'change', ->
    $ele = $ this
    other = ($ 'select').not this

    if $ele.val() == other.val()
      other.val (other.find 'option:not(:selected)').val()
