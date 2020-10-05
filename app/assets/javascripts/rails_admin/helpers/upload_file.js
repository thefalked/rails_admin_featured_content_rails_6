// upload file via ajax
function fileSelectAndUpload(evt) {
  var file = evt.target.files[0];
  var container = $('#' + evt.target.id);

  if(file) {
    var formData = new FormData();
    formData.append('featured_content_image', file);

    $.ajax({
      url: 'create_images',
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      type: 'PUT',
      beforeSend: function() {
        container.find('figure').append('<div class="fc-loading"></div>');
        container.find($('.fc-tools--center')).addClass('fc-tools--disabled');
      },
      complete: function(){
        $('.fc-loading').remove();
        $('.fc-tools--center').removeClass('fc-tools--disabled');
      }
    }).done(function(e) {
      console.log(e)
      container.find('img').attr('src', e.thumb.url);
    }).fail(function(e) {
      alert('error: ' + e);
    });
  }
};
