# User: sascha
# Date: 14.12.11
# Time: 11:16

form = "<%= escape_javascript(render(:partial => 'form', :locals => { :project => @project }))%>"
$("ul#projects li:last").after form
$(".create-project").hide()

$(".project-form .close-form").click (event) ->
  event.preventDefault()
  $(@).parents("li").remove()
  $(".create-project").show()