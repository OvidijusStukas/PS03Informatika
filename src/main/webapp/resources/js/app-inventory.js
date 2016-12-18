$(document).ready(function(){
    setupModal();
    setupValidation();
});

function setupModal(){
    $("#btn-add-new-car").click(function(){

        var $form = $("#add-new-car-form");
        $form[0].reset();
        $form.validate().resetForm();

        $("#add-new-car").modal().addClass("md-show");
    });
}

function setupValidation(){
    $("#add-new-car-form").validate(
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
        })
    );
}