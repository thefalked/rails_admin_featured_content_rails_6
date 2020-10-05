// add event on input file
function addEventToInputFile(id) {
  $('#' + id + ' input:file').on('change', fileSelectAndUpload);
};
