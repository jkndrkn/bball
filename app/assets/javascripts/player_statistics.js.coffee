$(document).ready () ->
  $("#stats").dataTable({
    bProcessing: true,
    sAjaxSource: "/player_statistics.json"
    aaSorting: [[2, "desc"]],
    iDisplayLength: 25,
  })
  
