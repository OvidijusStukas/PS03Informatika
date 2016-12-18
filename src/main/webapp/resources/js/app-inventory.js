$(document).ready(function(){
    setupModals();
    setupValidation();
    setupDataTable();
    loadCarModel();
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

var children = {};

function setupEdit(val){

    $("#edit-carId").val(val.data("id"));

    children = val.children();

    $('#edit-shop').find('option[value=\"'+val.data("shop")+'\"]').prop('selected', true);
    $('#edit-brand').find('option[value=\"'+$(children[0]).data("brand")+'\"]').prop('selected', true).change();

    $("#edit-years").val($(children[2]).data("year"));
    $("#edit-price").val($(children[3]).data("price"));
    $("#edit-millage").val($(children[4]).data("distance-traveled"));
    $("#edit-fuelType").find('option[value=\"'+$(children[5]).data("fuel")+'\"]').prop('selected', true);
    $("#edit-chassis").find('option[value=\"'+$(children[6]).data("chassis")+'\"]').prop('selected', true);
    $("#edit-workingCapacity").val($(children[7]).data("working-capacity"));
    $("#edit-transmission").find('option[value=\"'+$(children[8]).data("transmission")+'\"]').prop('selected', true);
    $("#edit-power").val($(children[9]).data("power"));
    $("#edit-wheelPosition").find('option[value=\"'+$(children[10]).data("wheel-position")+'\"]').prop('selected', true);
    $("#edit-seatNumber").val($(children[11]).data("seat-number"));
    $("#edit-doorNumber").val($(children[12]).data("door-number"));
    $("#edit-color").val($(children[13]).data("color"));
    $("#edit-driveType").find('option[value=\"'+$(children[14]).data("drive")+'\"]').prop('selected', true);

    if($(children[15]).data("is-with-defects") === true)
        $("#edit-withDefects").prop("checked",true);

    if($(children[16]).data("is-central-lock") === true)
        $("#edit-centralLock").prop("checked",true);

    if($(children[17]).data("is-air-bags") === true)
        $("#edit-airBags").prop("checked",true);

    if($(children[18]).data("is-sold") === true)
        $("#edit-isSold").prop("checked",true);

    //is pradziu uzsiloadint reikia paskui sitas:
    console.log('option[value=\"'+$(children[1]).data("model")+'\"]');

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

function loadCarModel() {
  $("#brand").change(function () {
    $.getJSON('/inventory/getModels?brand='+$("#brand").find("option:selected").attr('data'), function(data) {
      $("#model").find('option').remove();

      $.each(data, function (_, model) {
        $("#model").append($("<option>", {value: model.carConfigurationPositionId, text: model.name}));
      });
    });
  }).change();

  $("#edit-brand").change(function () {
    $.getJSON('/inventory/getModels?brand='+$("#edit-brand").find("option:selected").attr('data'), function(data) {
      $("#edit-model").find('option').remove();

      $.each(data, function (_, model) {
        $("#edit-model").append($("<option>", {value: model.carConfigurationPositionId, text: model.name}));
      });

      $("#edit-model").find('option[value=\"'+$(children[1]).data("model")+'\"]').prop('selected', true);
    });
  });
}