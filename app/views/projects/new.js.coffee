# User: sascha
# Date: 14.12.11
# Time: 11:16

form = "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
$("ul#projects li:last").after form
create_form = $(".create-project")
create_form.hide()

project = new Project()
project.add_close_button(create_form)