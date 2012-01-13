app = new App("task")

$("#task-<%= params[:id] %>").remove()
app.notice('<%=escape_javascript(flash.discard(:notice)) %>', 'warning')