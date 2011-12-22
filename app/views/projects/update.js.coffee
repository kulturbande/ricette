# User: sascha
# Date: 13.12.11
# Time: 21:21

<% if @project.errors.any? %>
  $(".project-form").remove()
  $(".project-<%= @project.id %>").after "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"

  $(".project-form .close-form").click (event) ->
    event.preventDefault()
    $(@).parents("li").remove()
    $(".project-<%= @project.id %>").show()
<% else %>
  $("#notice").html('<div class="flash notice"><%=escape_javascript(flash.discard(:notice)) %></div>');
  $("#notice .notice").delay(2000).fadeOut()

  $(".project-<%= @project.id %>").remove()
  $(".project-form").after "<%= escape_javascript(render(@project))%>"
  $(".project-form").remove()
<% end %>