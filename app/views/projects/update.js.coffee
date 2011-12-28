# User: sascha
# Date: 13.12.11
# Time: 21:21

replacment = $(".project-<%= @project.id %>")
project_form = $(".project-form")
project = new Project()
app = new App()

<% if @project.errors.any? %>
  project_form.remove()
  replacment.after "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"

  project.add_close_button(replacment)
<% else %>
  app.notice("<%=escape_javascript(flash.discard(:notice)) %>")

  replacement.remove()
  project_form.after "<%= escape_javascript(render(@project))%>"
  project_form.remove()
<% end %>