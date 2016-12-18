$(document).ready(function(){
    setupButtons();
    setupValidation();
    setupDataTable();
});

function setupButtons(){

    $("#btn-add").click(function(){
        $("#register-form")[0].reset();
        $("#register-form").validate().resetForm();
        $("#add-shop-modal").modal().addClass("md-show");
    });
}

function setupValidation(){

    $("#register-form").validate({
        rules: {
            country: "required",
            city: "required",
            street: "required",
            streetNumber: "required",
            zipCode: "required",
            currency: "required"
        },
        messages:{
            country: "Laukas privalomas",
            city: "Laukas privalomas",
            street: "Laukas privalomas",
            streetNumber: "Laukas privalomas",
            zipCode: "Laukas privalomas",
            currency: "Laukas privalomas"
        }
    });
}

function setupDataTable(){
    $("#shop-table").dataTable(
        {
            "language": {
                "sEmptyTable":      "Lentelėje nėra duomenų",
                "sInfo":            "Rodomi įrašai nuo _START_ iki _END_ iš _TOTAL_ įrašų",
                "sInfoEmpty":       "Rodomi įrašai nuo 0 iki 0 iš 0",
                "sInfoFiltered":    "(atrinkta iš _MAX_ įrašų)",
                "sInfoPostFix":     "",
                "sInfoThousands":   " ",
                "sLengthMenu":      "Rodyti _MENU_ įrašus",
                "sLoadingRecords":  "Įkeliama...",
                "sProcessing":      "Apdorojama...",
                "sSearch":          "Ieškoti:",
                "sThousands":       " ",
                "sUrl":             "",
                "sZeroRecords":     "Įrašų nerasta",

                "oPaginate": {
                    "sFirst": "Pirmas",
                    "sPrevious": "Ankstesnis",
                    "sNext": "Tolimesnis",
                    "sLast": "Paskutinis"
                }
            }
        }
    );
}