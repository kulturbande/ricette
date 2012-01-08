$(document).ready ->
  $( "#product, #sprint" ).sortable({
    connectWith: "ul.connectedSortable"
    update: (event) ->
      list = $(this).sortable('toArray').toString();
      console.log(list)
  }).disableSelection()
