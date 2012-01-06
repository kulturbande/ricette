project_form = $(".project-form")
app = new App("project")

<% if @project.errors.any? %>
project_form.remove()
form = "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
$("div.new").append form
app.add_close_link($(".create-project"))
<% else %>
app.notice('<%=escape_javascript(flash.discard(:notice)) %>', 'success')
$("div.item:last").after "<%= escape_javascript(render(@project))%>"
project_form.remove()
$(".create-project").show()
<% end %>