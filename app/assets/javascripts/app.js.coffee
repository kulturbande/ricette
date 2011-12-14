# User: sascha
# Date: 12.12.11
# Time: 17:46

window.App = class App
  constructor: ->

  setupAjaxCallbacks: ->
    $("body").ajaxStart ->
      $('#ajax-status').show()

    $("body").ajaxStop ->
      $('#ajax-status').fadeOut()

    $("body").ajaxError (event, xhr, ajaxOptions, thrownError) ->
      if xhr.status == 500
        alert "500 Error occurred!"
      console.log "XHR Response: " + xhr
      $('#ajax-status').fadeOut()

jQuery ->
  app = new App
  app.setupAjaxCallbacks()
