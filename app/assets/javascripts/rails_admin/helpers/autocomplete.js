function autocomplete(id) {
  $('#' + id + ' input:text').autocomplete({
    source: "search_content",
    minLength: 5,
    select: function(event, ui) {
      console.log(ui.item);
      $("#" + id + ' .fc-title').text(ui.item.title);
      $("#" + id + ' .fc-text').text(ui.item.summary);
      $("#" + id + ' .fc-caption').text(ui.item.content_builder_category.name);
      $("#" + id + ' .fc-link').attr('href', '/noticias/'+ ui.item.content_builder_category.slug +'/' + ui.item.slug);
      return false;
    },
    create: function () {
      $(this).data('ui-autocomplete')._renderItem = function (ul, item) {
        return $( "<li>" )
          .append( "<a>" + item.title + "</a>" )
          .appendTo( ul );
      }
    }
  })
};
