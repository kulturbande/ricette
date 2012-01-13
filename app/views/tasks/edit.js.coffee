$(".task-form").remove()
$("tr").show()
replacement = $("#task-<%= @task.id %>")

$(".create-task").show()

form = "<%= escape_javascript(render(:partial => 'form', :locals => { :task => @task }))%>"
replacement.after form
replacement.hide()

app = new App("task")
app.add_close_link(replacement)



