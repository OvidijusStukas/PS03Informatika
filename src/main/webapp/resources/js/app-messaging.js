$(document).ready(function(){
    setupButtons();
    setupValidation();
    setupDataTable();
});

function setupButtons(){

    $("#start-new-chat-group-btn").click(function(){
        $("#new-group-chat").modal().addClass("md-show");
    })

    $(".group-chat").dblclick(function(){
        $("#group-chat").modal().addClass("md-show");
    });

    $("#show-chat-participants-btn").click(function(){
        $("#chat-participant-modal").modal().addClass("md-show");
    });

    $("#close-chat-participant-modal-button").click(function(){
        $("#chat-participant-modal").modal("hide");
    });

    $("#show-chat-email-config-btn").click(function(){
        $("#chat-email-config-modal").modal().addClass("md-show");
    })

    $("#close-chat-email-config-modal-button").click(function(){
        $("#chat-email-config-modal").modal("hide");
    });

    $(".admin-chat-group").click(function(e){
        var target = $(e.currentTarget);

        $("#admin-chat-group-id").val(target.data("chat-id"));
        $("#chat-admin-modal").modal().addClass("md-show");

    });

    $("#show-chat-history").click(function (){
        alert("show chat history for chat" + $("#admin-chat-group-id").val());
    })

    $("#chat-group-delete").click(function (){
        alert("delete for chat" + $("#admin-chat-group-id").val());
    })

    $("#chat-group-diactyvate").click(function(){
        alert("diactivate chat" + $("#admin-chat-group-id").val());
    })
}

function setupValidation(){


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
