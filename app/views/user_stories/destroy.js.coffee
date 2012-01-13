app = new App("user-story")

$("#user-story-<%= params[:id] %>").remove()
app.notice('<%=escape_javascript(flash.discard(:notice)) %>', 'warning')