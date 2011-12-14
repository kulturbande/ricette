# User: sascha
# Date: 12.12.11
# Time: 09:08

#window.ProjectForm = class ProjectForm
#  constructor: (element = null)->
#    @replacement = element
#
#    source = $("#project-form-template").html()
#    @template = Handlebars.compile(source)
#
#  replace: ->
#    @remove()
#    data =
#      title: $(@replacement).children(" .title:first").text()
#      description: $(@replacement).children(".description:first").text()
#      url: $(@replacement).children(".update-path:first").text()
#
#    form = @template(data)
#    @replacement.after form
#    @replacement.hide()
#    @update()
#    project_form = @
#    $("a.close-form").click (event) ->
#      event.preventDefault()
#      project_form.remove()
#
#  update: ->
#
#  remove: ->
#    $("li.project-form").remove()
#    $("li").show()
#
#$(document).ready ->
#  $("a.switch").click (event) ->
#    event.preventDefault()
#    project_form = new ProjectForm($(@).parents("li"))
#    project_form.replace()







