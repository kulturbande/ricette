# User: sascha
# Date: 12.12.11
# Time: 17:32

$(".project-form").remove()
$("li").show()
replacement = $(".project-<%= @project.id %>")

form = "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
replacement.after form
replacement.hide()

project = new Project()
project.add_close_link(replacement)



