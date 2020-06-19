$(function() {
  // function buildHTML(count) {
  //   var html = `<div class="preview-box" id="preview-box__${count}">
  //                 <div class="upper-box">
  //                   <img src="" alt="preview">
  //                 </div>
  //               </div>`
  //   return html;
  // }
  $('#image-file').on('change',function() {
    // var id = $(this).attr('id').replace(/[^0-9]/g,'');
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
                    </div>`
        $('#image-prev').append(html);
      }
    });

    // reader.onload = function() {
    //   var image = $(this).result;
    //   if ($(`#preview-box__${id}`).length == 0) {
    //     var count = $('.preview-box').length;
    //     var html = buildHTML(id);
    //     var prevContent = $('.container').prev();
    //     $(prevContent).append(html);
    //   }
    //   $('#preview-box__${id} img').attr('src', `${image}`);
    //   console.log("やあ");
    //   var count = $('.preview-box').length;
    //   if (count == 5) {
    //     $('.container').hide();
    //   }
    // }
  });
})