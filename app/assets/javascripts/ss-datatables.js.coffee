jQuery ->
  $('.ss-datatable').each (index, element) ->
    sort_col = $(element).data('sort-col') || 0
    sort_dir = $(element).data('sort-dir') || 'asc'
    order = [[sort_col, sort_dir]]
    $(element).dataTable
      iDisplayLength: 50,
      sDom: '<"left-inner-addon" f>rtip',
      "oLanguage": { "sSearch": "" },
      sPaginationType: "full_numbers",
      bProcessing: true,
      bServerSide: true,
      order: order,
      sAjaxSource: $(element).data('source')

  $('.dataTables_filter input').attr("placeholder", "Search")
  $('<i class="glyphicon glyphicon-search"></i>').prependTo($('.dataTables_filter'))
