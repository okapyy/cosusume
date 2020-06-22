$(function() {
  $('#image-file').on('change',function() {
    var data = new DataTransfer();
    var fileSet = document.querySelector('input[type=file]')
    var fileReader = new FileReader();
    files = $(fileSet).prop('files')[0];
    $.each(fileSet.files, function(i, file) {
      data.items.add(file)
      fileSet.files = data.files
      fileReader.readAsDataURL(file);
      fileReader.onload = function() {
        var image = fileReader.result
        var html = `<div class="image-top" data-id = "${data.files.length}" data-name = "${file.name}">
                      <div class="image-content">
                        <img src=${image} width="120" height="100">
                      </div>
                      <div class="image-delete">
                        <div class="image-delete__btn">× 削除</div>
                      </div>
                    </div>`
        $('#image-prev').append(html);
      }
    });
  });
})