// jquery

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







// $('#hillary-input').on('keyup', function(e) {
//     var table = document.getElementById("#hillary-table");
//     var code = (e.keyCode ? e.keyCode : e.which);
//     if (code == 13) {
//         var row = table.insertRow(0);
//         var cell1 = row.insertCell(0);
//         var cell2 = row.insertCell(1);
//
//         cell1.innerHTML = "NEW CELL1";
//         cell2.innerHTML = "NEW CELL2";
//       }
//     });
