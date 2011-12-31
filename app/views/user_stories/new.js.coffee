# User: sascha
# Date: 14.12.11
# Time: 11:16

form = "<%= escape_javascript(render(:partial => 'form', :locals => { :user_story => @user_story }))%>"
$("#backlog ul#product li:last").after form
create_form = $(".create-user-story")
create_form.hide()

app = new App("user-story")
app.add_close_link(create_form)