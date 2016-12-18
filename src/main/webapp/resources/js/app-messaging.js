$(document).ready(function(){
    setupButtons();
    setupValidation();
    setupDataTable();
});

function setupButtons(){
    $("#start-new-chat-group-btn").click(function(){
        //create chat group
        var $form = $("#create-chat");
        $form[0].reset();
        $form.validate().resetForm();
        $("#create-chat-modal").modal().addClass("md-show");
    });

    $(".group-chat").dblclick(function(){
        //open chat modal
        $("#chat-name").innerHTML = "TEST";
        $("#group-chat").modal().addClass("md-show");
    });
}

function setupValidation(){

    $("#create-chat").validate({
        rules: {
            name: "required",
            firstParticipant: "required"
        },
        messages:{
            name: "Laukas privalomas",
            firstParticipant: "Laukas privalomas"
        }
    });
}

function setupDataTable(){
    $("#chat-groups-table").dataTable({
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
