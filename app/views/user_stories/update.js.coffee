replacement = $(".user-story-<%= @user_story.id %>")
user_story_form = $(".user-story-form")
app = new App("user-story")

<% if @user_story.errors.any? %>
user_story_form.remove()
replacement.after "<%= escape_javascript(render(:partial => 'form', :locals => { :user_story => @user_story }))%>"
app.add_close_link(replacment)
<% else %>
app.notice("<%=escape_javascript(flash.discard(:notice)) %>")
replacement.remove()

user_story_form.after "<%= escape_javascript(render(@user_story))%>"
user_story_form.remove()
<% end %>