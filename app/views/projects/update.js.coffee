replacement = $(".project-<%= @project.id %>")
project_form = $(".project-form")
app = new App("project")

<% if @project.errors.any? %>
project_form.remove()
replacement.after "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
app.add_close_link(replacment)
<% else %>
app.notice("<%=escape_javascript(flash.discard(:notice)) %>")
replacement.remove()
project_form.after "<%= escape_javascript(render(@project))%>"
project_form.remove()
<% end %>