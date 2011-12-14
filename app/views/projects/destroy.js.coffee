# User: sascha
# Date: 14.12.11
# Time: 11:55

$(".project-<%= params[:id] %>").remove()
$("#notice").html('<div class="flash notice"><%=escape_javascript(flash.discard(:notice)) %></div>');
$("#notice .notice").delay(2000).fadeOut()