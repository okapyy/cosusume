$(function() {
  var data = new DataTransfer();
  var fileSet = document.querySelector('input[type=file]')
  var fileReader = new FileReader();
  $('#image-file').on('change',function() {
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

  $(document).on("click", ".image-delete__btn", function(){
    let imageDelete =  $(this).parent().parent();
    let dataDelete = $(imageDelete).data('id');
    let dataName = $(imageDelete).data('name');
    if(fileSet.files.length==1){$('input[type=file]').val(null)
      data.clearData();
    } else {$.each(fileSet.files, function(i,input){
      if(input.name == dataName){
        data.items.remove(dataDelete -1)
        }
    })
    $("#camera").show();
  }
    imageDelete.remove();
    fileSet.files = data.files
    })
  // $('.image-delete__btn').on("click", function() {
  //   var imageDelete = $(this).parent().parent();
  //   var dataDelete = $(imageDelete).data('id');
  //   var dataName = $(imageDelete).data('name');
  //   if(fileSet.files.length==1){$('input[type=file]').val(null)
  //     data.clearData();
  //   } else{$.each(fileSet.files, function(i,input){
  //     if(input.name == dataName){
  //       data.items.remove(dataDelete -1)
  //     }
  //   })
  //   $(".container__icon").show();
  // }
  //   imageDelete.remove();
  //   fileSet.files = data.files
  // });
})