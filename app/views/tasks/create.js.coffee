task_form = $(".task-form")
app = new App("task")

<% if @task.errors.any? %>
task_form.remove()
form = "<%= escape_javascript(render(:partial => 'form', :locals => { :task => @task }))%>"
$("tr:last").after form
app.add_close_link($(".create-task"))
<% else %>
app.notice('<%= escape_javascript(flash.discard(:notice)) %>', 'success')
task_form.after "<%= escape_javascript(render(@task))%>"
task_form.remove()
$(".create-task").show()
<% end %>