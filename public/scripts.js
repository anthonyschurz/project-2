// jquery

// Opponent image hover event

$( '.wrapper' ).hover(function () {
    $( '.glyphicon-plus', this ).removeClass( 'hidden' );
}, function () {
    $( '.glyphicon-plus', this ).addClass( 'hidden' );
});

// Add row to table

$('#newhname').keypress(function (e) {
 var key = e.which;
 if(key == 13)  // the enter key code
 {
   $('#hillary-table > tbody > tr:first').before('<tr><td>column 1 value</td><td><input value="column two" readonly></td><td><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></td></tr>');
 }
});




// Remove row from table

$( 'table' ).on('click','.glyphicon-remove',function(e){
  e.preventDefault();
  $( this ).closest( 'tr' ).remove();
});


// Edit row in table

$( 'table' ).on('click','.glyphicon-pencil',function(e){
  e.preventDefault();
  $( this ).closest( 'tr' ).find( 'input' ).removeAttr( 'readonly' );
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
