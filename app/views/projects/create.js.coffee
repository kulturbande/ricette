# User: sascha
# Date: 14.12.11
# Time: 11:48

<% if @project.errors.any? %>


<% else %>
  $("#notice").html('<div class="flash notice"><%=escape_javascript(flash.discard(:notice)) %></div>');

  $(".project-form").after "<%= escape_javascript(render(@project))%>"
  $(".project-form").remove()
  $("#notice .notice").delay(2000).fadeOut()
<% end %>