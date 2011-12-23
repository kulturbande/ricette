# User: sascha
# Date: 12.12.11
# Time: 09:08

window.Project = class Project
  add_close_link: (replacement)->
    $(".project-form .close-form").click (event) ->
      event.preventDefault()
      $(@).parents("li").remove()
      replacement.show()

  notice: (notice) ->
    $("#notice").html('<div class="flash notice">'+notice+'</div>');
    $("#notice .notice").delay(2000).fadeOut()








