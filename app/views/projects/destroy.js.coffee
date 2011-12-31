# User: sascha
# Date: 14.12.11
# Time: 11:55

app = new App("project")

$(".project-<%= params[:id] %>").remove()
app.notice('<%=escape_javascript(flash.discard(:notice)) %>')