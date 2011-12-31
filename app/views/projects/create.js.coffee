project_form = $(".project-form")
app = new App("project")

<% if @project.errors.any? %>
project_form.remove()
form = "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
$("ul#projects li:last").after form
app.add_close_link($(".create-project"))
<% else %>
app.notice('<%=escape_javascript(flash.discard(:notice)) %>')
project_form.after "<%= escape_javascript(render(@project))%>"
project_form.remove()
$(".create-project").show()
<% end %>