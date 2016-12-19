$(document).ready(function(){
    setupDataTable();
    setupButtons();
    setupValidation();
});

function setupButtons(){
    $(".invoiceEntity").dblclick(function(e){

        var $form = $("#invoice-edit");
        $form[0].reset();
        $form.validate().resetForm();

        setupEditModal($(e.currentTarget));
        $("#invoice-edit-modal").modal().addClass("md-show");
    });
}

function setupEditModal(target){

    children = target.children();

    $("#edit-invoice-id").val(target.data("id"));
    $("#edit-car-id").val(target.data("car-id"));
    $("#edit-type-id").val(target.data("type-id"));

    $("#edit-name").val($(children[0]).data("name"));
    $("#edit-number").val($(children[1]).data("number"));
    $("#edit-sender-name").val($(children[2]).data("sendername"));
    $("#edit-receiver-name").val($(children[3]).data("receivername"));
    $("#edit-total-price").val($(children[4]).data("totalprice"));
    $("#edit-generation-date").val($(children[5]).data("generationdate"));
    $("#edit-status").val($(children[6]).data("status"));

}

function setupValidation(){

    $("#invoice-edit").validate({
        rules:{
            name: "required",
            number: "required",
            senderName: "required",
            receiverName: "required",
            totalPrice: "required",
            generationDate: "required",
            status: "required"
        },
        messages:{
            name: "Laukas privalomas",
            number: "Laukas privalomas",
            senderName: "Laukas privalomas",
            receiverName: "Laukas privalomas",
            totalPrice: "Laukas privalomas",
            generationDate: "Laukas privalomas",
            status: "Laukas privalomas"
        }
    })

}

function setupDataTable(){
    $("#invoice-table").dataTable({
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
    });
}