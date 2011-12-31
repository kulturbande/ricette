user_story_form = $(".user-story-form")
app = new App("user-story")

<% if @user_story.errors.any? %>
user_story_form.remove()
form = "<%= escape_javascript(render(:partial => 'form', :locals => { :user_story => @user_story }))%>"
$("ul#product li:last").after form
app.add_close_link($(".create-user-story"))
<% else %>
app.notice('<%= escape_javascript(flash.discard(:notice)) %>')
user_story_form.after "<%= escape_javascript(render(@user_story))%>"
user_story_form.remove()
$(".create-user-story").show()
<% end %>