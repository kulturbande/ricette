$(".user-story-form").remove()
$("li").show()
replacement = $("#user-story-<%= @user_story.id %>")

$(".create-user-story").show()

form = "<%= escape_javascript(render(:partial => 'form', :locals => { :user_story => @user_story }))%>"
replacement.after form
replacement.hide()

app = new App("user-story")
app.add_close_link(replacement)



