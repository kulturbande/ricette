$(document).ready ->
  $( "#product, #sprint" ).sortable({
    connectWith: "ul.connectedSortable"
    cancel: ".disable-sorting"
    delay: 200
    update: (event, ui) ->
      id = $(this).attr('id')
      data = {list: $(this).sortable('toArray'), backlog: id}
      $.ajax({
        type: 'POST',
        url: sort_url,
        data: data,
        success: ->

      })
  }).disableSelection()
