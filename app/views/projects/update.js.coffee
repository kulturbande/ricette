# User: sascha
# Date: 13.12.11
# Time: 21:21

<% if @project.errors.any? %>


<% else %>
  $("#notice").html('<div class="flash notice"><%=escape_javascript(flash.discard(:notice)) %></div>');

  $(".project-<%= @project.id %>").remove()
  $(".project-form").after "<%= escape_javascript(render(@project))%>"
  $(".project-form").remove()
  $("#notice .notice").delay(2000).fadeOut()
<% end %>