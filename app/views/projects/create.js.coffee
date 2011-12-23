# User: sascha
# Date: 14.12.11
# Time: 11:48

project_form = $(".project-form")
project = new Project()

<% if @project.errors.any? %>
  project_form.remove()
  form = "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
  $("ul#projects li:last").after form

  project.add_close_button($(".create-project"))
<% else %>
  project.notice('<%=escape_javascript(flash.discard(:notice)) %>')

  project_form.after "<%= escape_javascript(render(@project))%>"
  project_form.remove()
  $(".create-project").show()
<% end %>