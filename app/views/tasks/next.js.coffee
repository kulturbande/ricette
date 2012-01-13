app = new App("task")
task = $("#task-<%= @task.id %>")
task.after "<%= escape_javascript(render(@task))%>"
task.remove()