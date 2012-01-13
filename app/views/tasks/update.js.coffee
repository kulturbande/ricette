replacement = $("#task-<%= @task.id %>")
task_form = $(".task-form")
app = new App("task")

<% if @task.errors.any? %>
task_form.remove()
replacement.after "<%= escape_javascript(render(:partial => 'form', :locals => { :task => @task }))%>"
app.add_close_link(replacment)
<% else %>
app.notice("<%=escape_javascript(flash.discard(:notice)) %>", 'success')
replacement.remove()

task_form.after "<%= escape_javascript(render(@task))%>"
task_form.remove()
<% end %>