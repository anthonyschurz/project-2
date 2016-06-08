
$( '.wrapper' ).hover(function () {
    $( '.glyphicon-plus', this ).removeClass( 'hidden' );
}, function () {
    $( '.glyphicon-plus', this ).addClass('hidden');
});



$('table').on('click','.glyphicon-remove',function(e){
  e.preventDefault();
  $(this).closest('tr').remove();
});



$('table').on('click','.glyphicon-pencil',function(e){
  e.preventDefault();
  $(this).closest('tr').find('input').removeAttr('readonly');
});
