$(document).ready(function () {
  $('.comment-link').on('click', function () {
    $('.comment-box').css("display","none");
    $(this).parent('.post').find('.comment-box').css("display","block");
    $(this).parent('.post').find('.comment-hide').css("display","block");
    $(this).parent('.post').find('.comment-link').css("display","none");
  })

  $('.comment-hide').on('click', function() {
    $(this).parent('.post').find('.comment-box').css("display","none");
    $('.comment-link').css("display", "block");
    $('.comment-hide').css("display","none");
  })
})