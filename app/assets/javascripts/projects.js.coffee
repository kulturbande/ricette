# User: sascha
# Date: 12.12.11
# Time: 09:08

window.ProjectForm = class ProjectForm
  constructor: (element = null)->
    @replacement = element

    source = $("#project-form-template").html()
    @template = Handlebars.compile(source)

  replace: ->
    @remove()
    form = @template({title: $(@replacement).children(" .title:first").text(), description: $(@replacement).children(".description:first").text()})
    @replacement.after form
    @replacement.hide()
    project_form = @
    $("a.close-form").click (event) ->
      event.preventDefault()
      project_form.remove()

  remove: ->
    $("li.project-form").remove()
    $("li").show()



$(document).ready ->
  $("a.switch").click (event) ->
    event.preventDefault()
    project_form = new ProjectForm($(@).parents("li"))
    project_form.replace()




