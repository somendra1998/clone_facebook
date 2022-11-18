$(document).ready(function () {
  $('.like-logo').on('click', function (e) {
    // debugger
    e.preventDefault;
    // debugger
    var post_id = $(this).attr("post_id")
    $.ajax({
      type: "POST",
      url: " /posts/"+post_id+"/likes",
      dataType: "script" 
    })})
});