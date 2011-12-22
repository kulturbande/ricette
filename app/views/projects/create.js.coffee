# User: sascha
# Date: 14.12.11
# Time: 11:48

<% if @project.errors.any? %>
  $(".project-form").remove()
  form = "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
  $("ul#projects li:last").after form
  $(".project-form .close-form").click (event) ->
    event.preventDefault()
    $(@).parents("li").remove()
    $(".create-project").show()
<% else %>
  $("#notice").html('<div class="flash notice"><%=escape_javascript(flash.discard(:notice)) %></div>');

  $(".project-form").after "<%= escape_javascript(render(@project))%>"
  $(".project-form").remove()
  $("#notice .notice").delay(2000).fadeOut()
  $(".create-project").show()
<% end %>