/* REDACTOR EDITOR DATA-API
 * ======================== */
$(function () {
	$(window).on('load', function () {
    $('[data-editor]').each(function () {
    	$(this).redactor();
    });
  });
});
