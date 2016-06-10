// jquery

// Opponent image hover event

$( '.wrapper' ).hover(function () {
    $( '.glyphicon-plus', this ).removeClass( 'hidden' );
}, function () {
    $( '.glyphicon-plus', this ).addClass( 'hidden' );
});

// Add row to Hillary table

$('#newhname').keypress(function (e) {
 var key = e.which;
 if(key == 13)  // the enter key code
 {
   $('#hillary-table > tbody > tr:first').before('<tr><td id="newesthdate"></td><td><input name="h[name]" value = " " readonly onfocus="this.value = this.value;" class="highlight" id="newesthname"></td><td><div class="formactions"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span><input class="delete" type="submit" data-id="<%= hname.id %>" value="❌" style="background-color: white;"></div></td></tr>');
   $('#newesthname').val( $( this ).val() );


  //  Date
   var today = new Date();
   var dd = today.getDate();
   var mm = today.getMonth()+1;
   var yyyy = today.getFullYear();

   if(dd<10) {
     dd='0'+dd
   }
   if(mm<10) {
      mm='0'+mm
   }
   today = mm + '.' + dd + '.' + yyyy;
   $('#newesthdate').text( today );
 }
});

// Add row to Bernie table

$('#newbname').keypress(function (e) {
 var key = e.which;
 if(key == 13)  // the enter key code
 {
   $('#bernie-table > tbody > tr:first').before('<tr><td id="newestbdate"></td><td><input name="b[name]" value = " " readonly onfocus="this.value = this.value;" class="highlight" id="newestbname"></td><td><div class="formactions"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span><input class="delete" type="submit" data-id="<%= bname.id %>" value="❌" style="background-color: white;"></div></td></tr>');
   $('#newestbname').val( $( this ).val() );


  //  Date
   var today = new Date();
   var dd = today.getDate();
   var mm = today.getMonth()+1;
   var yyyy = today.getFullYear();

   if(dd<10) {
     dd='0'+dd
   }
   if(mm<10) {
      mm='0'+mm
   }
   today = mm + '.' + dd + '.' + yyyy;
   $('#newestbdate').text( today );
 }
});


// Remove row from table

$( 'table' ).on('click','.delete',function(e){
  e.preventDefault();
  $( this ).closest( 'tr' ).remove();
});


// Edit row in table

$( 'table' ).on('click','.glyphicon-pencil',function(e){
  e.preventDefault();
  $( this ).closest( 'tr' ).find( 'input' ).removeAttr( 'readonly' );
  $( this ).closest( 'tr' ).find( '.highlight' ).focus();
});


// Post table values

$(document).ready(function(){
  $(".formactions input.delete").click(function() {
    var id = $(this).data('id');
    $.ajax({
        type: "POST",
        url: "/hillary_d/" + id
    }).success(function(json){
        console.log("success", json);
    });
  });


// HILLARY NAME SUBMISSION


  $('#formhillary').submit(function() {
    var valuesToSubmit = $(this).serialize();
    // console.log(valuesToSubmit)
    $.ajax({
        type: "POST",
        url: $(this).attr('action'), //sumbits it to the given url of the form
        data: valuesToSubmit,
        dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
    }).success(function(json){
        $('#hillaryModal').modal('hide');
        console.log("success", json);
    });
    return false; // prevents normal behaviour
  });


// BERNIE NAME SUBMISSION


  $('#formbernie').submit(function() {
    var valuesToSubmit = $(this).serialize();
    // console.log(valuesToSubmit)
    $.ajax({
        type: "POST",
        url: $(this).attr('action'), //sumbits it to the given url of the form
        data: valuesToSubmit,
        dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
    }).success(function(json){
        $('#hillaryModal').modal('hide');
        console.log("success", json);
    });
    return false; // prevents normal behaviour
  });

})
