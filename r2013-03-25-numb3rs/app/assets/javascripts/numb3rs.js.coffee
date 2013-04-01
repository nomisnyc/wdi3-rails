class Home
  @document_ready: ->
    $('#slider').slider({ min: 0, max: 50, step: 2, slide: Home.sliding })

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @sliding: (e, ui) ->
    word_id = ui.value
    settings =
      dataType: 'script'
      type: 'get'
      url: "/numbers/#{word_id}"
    $.ajax(settings)
$(document).ready(Home.document_ready)