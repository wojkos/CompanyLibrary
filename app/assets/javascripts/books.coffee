# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#books_list').DataTable
    "order": [[ 3, "desc" ]]
    "lengthMenu": [[25, 50, -1], [ 25, 50, "All"]]
    "dom": '<"col-sm-6 hidden-xs"i><"col-xs-12 col-sm-6"<"pull-right"f>>rt<"col-xs-12 col-sm-6"l><"col-xs-12 col-sm-6"<"pull-right"p>>'
    language:
      processing:     "Przetwarzanie..."
      search:         "Szukaj:"
      lengthMenu:     "Pokaż _MENU_ pozycji"
      info:           "Pozycje od _START_ do _END_ z _TOTAL_ łącznie"
      infoEmpty:      "Pozycji 0 z 0 dostępnych"
      infoFiltered:   "(filtrowanie spośród _MAX_ dostępnych pozycji)"
      infoPostFix:    ""
      loadingRecords: "Wczytywanie..."
      zeroRecords:    "Nie znaleziono pasujących pozycji"
      emptyTable:     "Brak danych"
      paginate: 
        first:      "<span class='glyphicon glyphicon-fast-backward'></span>"
        previous:   "<span class='glyphicon glyphicon-step-backward'></span>"
        next:       "<span class='glyphicon glyphicon-step-forward'></span>"
        last:       "<span class='glyphicon glyphicon-fast-forward'></span>"
      aria:
        sortAscending: ": aktywuj, by posortować kolumnę rosnąco"
        sortDescending: ": aktywuj, by posortować kolumnę malejąco"