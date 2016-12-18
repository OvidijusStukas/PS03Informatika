$(document).ready(function () {
  setupButtons();
  setupValidation();
  setupDataTable();
});

function setupButtons() {

  $("#btn-add").click(function () {
    var $form = $("#register-form");
    $form[0].reset();
    $form.validate().resetForm();
    $("#add-user-modal").modal().addClass("md-show");
  });
}

function setupValidation() {

  $("#register-form").validate({
    rules: {
      userName: "required",
      email: {
        required: true,
        email: true
      },
      name: "required",
      lastName: "required",
      address: "required",
      password: "required",
      shopId: "required"
    },
    messages: {
      userName: "Laukas privalomas",
      email: {
        required: "Laukas privalomas",
        email: "Turi būti validus el. Paštas"
      },
      name: "Laukas privalomas",
      lastName: "Laukas privalomas",
      address: "Laukas privalomas",
      password: "Laukas privalomas",
      shopId: "Laukas privalomas"
    }
  });
}

function setupDataTable() {
  $("#user-table").dataTable({
    "language": {
      "sEmptyTable": "Lentelėje nėra duomenų",
      "sInfo": "Rodomi įrašai nuo _START_ iki _END_ iš _TOTAL_ įrašų",
      "sInfoEmpty": "Rodomi įrašai nuo 0 iki 0 iš 0",
      "sInfoFiltered": "(atrinkta iš _MAX_ įrašų)",
      "sInfoPostFix": "",
      "sInfoThousands": " ",
      "sLengthMenu": "Rodyti _MENU_ įrašus",
      "sLoadingRecords": "Įkeliama...",
      "sProcessing": "Apdorojama...",
      "sSearch": "Ieškoti:",
      "sThousands": " ",
      "sUrl": "",
      "sZeroRecords": "Įrašų nerasta",

      "oPaginate": {
        "sFirst": "Pirmas",
        "sPrevious": "Ankstesnis",
        "sNext": "Tolimesnis",
        "sLast": "Paskutinis"
      }
    }
  });
}