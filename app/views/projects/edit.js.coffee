# User: sascha
# Date: 12.12.11
# Time: 17:32

cleanProjectsView()
replacement = $(".project-<%= @project.id %>")

form = "<%= escape_javascript(render(:partial => 'form', :locals => { :product => @product }))%>"
replacement.after form
replacement.hide()
