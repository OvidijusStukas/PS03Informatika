var selectedChatGroup = undefined;

$(document).ready(function(){
    setupButtons();
    setupValidation();
    setupDataTable();
});

function setupButtons(){

    $("#start-new-chat-group-btn").click(function(){
        $("#new-group-chat").modal().addClass("md-show");
    });

    $(".group-chat").dblclick(function(e){

        selectedChatGroup = $(e.currentTarget).data("id");

        $.ajax({
            type: "GET",
            url: "messages/showChatGroupHistory",
            data: {chatGroupId: selectedChatGroup}
        }).done(function (data) {
            console.log(data);
            $("#chat-container").empty()
            $.each(data, function(i,val){
                $("#chat-container").append("<div class='col-xs-12 text-center'>"+val.text+"</div>");
            })

            $("#group-chat").modal().addClass("md-show");
        });
    });

    $("#show-chat-participants-btn").click(function(){
        $("#participantAddChatGroupId").val(selectedChatGroup);
        $("#chat-participant-modal").modal().addClass("md-show");
    });

    $("#close-chat-participant-modal-button").click(function(){
        $("#chat-participant-modal").modal("hide");
    });

    $("#show-chat-email-config-btn").click(function(){
        $("#emailChatGroupId").val(selectedChatGroup);
        $("#chat-email-config-modal").modal().addClass("md-show");
    });

    $("#close-chat-email-config-modal-button").click(function(){
        $("#chat-email-config-modal").modal("hide");
    });

    $(".admin-chat-group").click(function(e){
        var target = $(e.currentTarget);

        selectedChatGroup = target.data("id");
        $(".chatGroupIdHidden").val(target.data("id"));
        $("#admin-chat-group-id").val(target.data("id"));
        $("#chat-admin-modal").modal().addClass("md-show");

    });

    $("#show-chat-history").click(function(){
        $.ajax({
            type: "GET",
            url: "messages/showChatGroupHistory",
            data: {chatGroupId: selectedChatGroup}
        }).done(function (data) {
            console.log(data);
            $("#chat-container").empty()
            $.each(data, function(i,val){
                $("#chat-container").append("<div class='col-xs-12 text-center'>"+val.text+"</div>");
            })

            $("#group-chat").modal().addClass("md-show");
        });
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
