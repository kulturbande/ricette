# User: sascha
# Date: 12.12.11
# Time: 17:46

window.App = class App
  constructor: (name)->
    @name = name

  setup_ajax_callbacks: ->
    $("body").ajaxStart ->
      $('#ajax-status').show()

    $("body").ajaxStop ->
      $('#ajax-status').fadeOut()

    $("body").ajaxError (event, xhr, ajaxOptions, thrownError) ->
      if xhr.status == 500
        alert "500 Error occurred!"
      console.log "XHR Status: " + xhr.status
      $('#ajax-status').fadeOut()

  notice: (notice, type = "info") ->
    $("#notice").html('<div class="alert-message '+type+'">'+notice+'</div>');
    $("#notice .alert-message").delay(2000).fadeOut()

  add_labels: ->
    $("label").inFieldLabels()

  add_close_link: (replacement)->
    element = "."+@name+"-form"
    $("."+@name+"-form .close-form").click (event) ->
      event.preventDefault()
      $(element).remove()
      replacement.show()

jQuery ->
  app = new App("")
  app.setup_ajax_callbacks()
