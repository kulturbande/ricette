form = "<%= escape_javascript(render(:partial => 'form', :locals => { :task => @task }))%>"
$("tr:last").after form
create_form = $(".create-task")
create_form.hide()

app = new App("task")
app.add_close_link(create_form)
app.add_labels()