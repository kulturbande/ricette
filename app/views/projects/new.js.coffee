# User: sascha
# Date: 14.12.11
# Time: 11:16

form = "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
$("div#item:last").after form
create_form = $(".create-project")
create_form.hide()

app = new App("project")
app.add_close_link(create_form)
app.add_label()