//ハンバーガーメニューの開閉
// ==================================================
$(document).ready(function () {
    $(".header__gnav-btn").on("click", function () {
      $(".header__nav").toggleClass("open");
      $(".header__bglayer").toggleClass("open");
      $(this).toggleClass("open");
    });
  });
  $(document).ready(function () {
    $(".header__bglayer").on("click", function () {
      $(".header__nav").toggleClass("open");
      $(".header__gnav-btn").toggleClass("open");
      $(this).toggleClass("open");
    });
  });