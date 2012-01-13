$(document).ready ->
  $( "#product, #sprint" ).sortable({
    connectWith: "ul.connectedSortable"
    update: (event, ui) ->
      id = $(this).attr('id')
      data = {list: $(this).sortable('toArray'), backlog: id}
      console.log data
      $.ajax({
        type: 'POST',
        url: sort_url,
        data: data,
        success: ->

      })
  }).disableSelection()
