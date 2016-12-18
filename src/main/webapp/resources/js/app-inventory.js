$(document).ready(function(){
    setupModals();
    setupValidation();
    setupDataTable();
});

function setupModals(){
    $("#btn-add-new-car").click(function(){

        var $form = $("#add-new-car-form");
        $form[0].reset();
        $form.validate().resetForm();

        $("#add-new-car").modal().addClass("md-show");
    });

    $(".carEntity").dblclick(function(e){
        var $form = $("#edit-car-form");
        $form[0].reset();
        $form.validate().resetForm();

        setupEdit($(e.currentTarget));
        $("#edit-car").modal().addClass("md-show");
    })
}

function setupValidation(){
    $("#add-new-car-form").validate({
        rules: {
            brandId: "required",
            modelId: "required",
            year: "required",
            price: "required",
            distanceTraveled: "required",
            fuelId: "required",
            chassisId: "required",
            workingCapacity: "required",
            transmissionId: "required",
            power: "required",
            wheelPositionId: "required",
            seatNumber: "required",
            doorNumber: "required",
            color: "required"
        },
        messages: {
            brandId: "Laukas privalomas",
            modelId: "Laukas privalomas",
            year: "Laukas privalomas",
            price: "Laukas privalomas",
            distanceTraveled: "Laukas privalomas",
            fuelId: "Laukas privalomas",
            chassisId: "Laukas privalomas",
            workingCapacity: "Laukas privalomas",
            transmissionId: "Laukas privalomas",
            power: "Laukas privalomas",
            wheelPositionId: "Laukas privalomas",
            seatNumber: "Laukas privalomas",
            doorNumber: "Laukas privalomas",
            color: "Laukas privalomas"
        }
    });

    $("#edit-car-form").validate({
        rules: {
            brandId: "required",
            modelId: "required",
            year: "required",
            price: "required",
            distanceTraveled: "required",
            fuelId: "required",
            chassisId: "required",
            workingCapacity: "required",
            transmissionId: "required",
            power: "required",
            wheelPositionId: "required",
            seatNumber: "required",
            doorNumber: "required",
            color: "required"
        },
        messages:{
            brandId: "Laukas privalomas",
            modelId: "Laukas privalomas",
            year: "Laukas privalomas",
            price: "Laukas privalomas",
            distanceTraveled: "Laukas privalomas",
            fuelId: "Laukas privalomas",
            chassisId: "Laukas privalomas",
            workingCapacity: "Laukas privalomas",
            transmissionId: "Laukas privalomas",
            power: "Laukas privalomas",
            wheelPositionId: "Laukas privalomas",
            seatNumber: "Laukas privalomas",
            doorNumber: "Laukas privalomas",
            color: "Laukas privalomas"
        }
    });
}

function setupEdit(val){

    $("#edit-carId").val(val.data("id"));

    var children = val.children();

    $('#edit-brand').find('option:eq('+$(children[0]).data("brand")+')').prop('selected', true);

    //is pradziu uzsiloadint reikia paskui sitas:
    $("#edit-model").find('option:eq('+$(children[1]).data("model")+')').prop('selected', true);

    $("#edit-years").val($(children[2]).data("year"));
    $("#edit-price").val($(children[3]).data("price"));
    $("#edit-millage").val($(children[4]).data("distance-traveled"));
    $("#edit-fuelType").find('option:eq('+$(children[5]).data("fuel")+')').prop('selected', true);
    $("#edit-chassis").find('option:eq('+$(children[6]).data("chassis")+')').prop('selected', true);
    $("#edit-workingCapacity").val($(children[7]).data("working-capacity"));
    $("#edit-transmission").find('option:eq('+$(children[8]).data("transmission")+')').prop('selected', true);
    $("#edit-power").val($(children[9]).data("power"));
    $("#edit-wheelPosition").find('option:eq('+$(children[10]).data("wheel-position")+')').prop('selected', true);
    $("#edit-seatNumber").val($(children[11]).data("seat-number"));
    $("#edit-doorNumber").val($(children[12]).data("door-number"));
    $("#edit-color").val($(children[13]).data("color"));
    $("#edit-driveType").find('option:eq('+$(children[14]).data("brand")+')').prop('selected', true);

    if($(children[15]).data("is-with-defects") === true)
        $("#edit-withDefects").prop("checked",true);

    if($(children[16]).data("is-central-lock") === true)
        $("#edit-centralLock").prop("checked",true);

    if($(children[17]).data("is-air-bags") === true)
        $("#edit-airBags").prop("checked",true);

    if($(children[18]).data("is-sold") === true)
        $("#edit-isSold").prop("checked",true);
}

function setupDataTable(){
    $("#car-table").dataTable({
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