$(document).ready(function(){
    setupDataTable();
    setupButtons();
    setupValidation();
    setupFilter();
});



function setupButtons(){
    $(".invoiceEntity").dblclick(function(e){

        if(window.userLevel === 1 || window.userLevel === 2)//admin / employee
        {
            var $form = $("#invoice-edit");
            $form[0].reset();
            $form.validate().resetForm();

            setupEditModal($(e.currentTarget));
            $("#invoice-edit-modal").modal().addClass("md-show");
        }else{

            var $form = $("#service-rating");
            $form[0].reset();
            $form.validate({ignore: "*"});
            $form.find('span').children().remove();

            setupRatingModal($(e.currentTarget));
        }

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

    var dateTime = $(children[5]).data("generationdate");
    var dateValue = dateTime.indexOf(' ') > 0 ? dateTime.substr(0, dateTime.indexOf(' ')) : dateTime;

    $("#edit-generation-date").val(dateValue);
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

function setupFilter(){

    $("#date-from").keyup(function(){
        $("#invoice-table").DataTable().draw();
    });

    $("#date-to").keyup(function(){
        $("#invoice-table").DataTable().draw();
    });

}

function setupDataTable(){
    if(window.userLevel === 1 ){
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
            },
            dom: 'Bfrtip',
            buttons: [
                'copy', 'excel', 'pdf'
            ]
        });

        $.fn.dataTableExt.afnFiltering.push(
            function( oSettings, aData, iDataIndex ) {
                var iFini = document.getElementById('date-from').value;
                var iFfin = document.getElementById('date-to').value;
                var iStartDateCol = 5;
                var iEndDateCol = 5;

                iFini=iFini.substring(6,10) + iFini.substring(3,5)+ iFini.substring(0,2);
                iFfin=iFfin.substring(6,10) + iFfin.substring(3,5)+ iFfin.substring(0,2);

                var datofini=aData[iStartDateCol].substring(6,10) + aData[iStartDateCol].substring(3,5)+ aData[iStartDateCol].substring(0,2);
                var datoffin=aData[iEndDateCol].substring(6,10) + aData[iEndDateCol].substring(3,5)+ aData[iEndDateCol].substring(0,2);

                if ( iFini === "" && iFfin === "" )
                {
                    return true;
                }
                else if ( iFini <= datofini && iFfin === "")
                {
                    return true;
                }
                else if ( iFfin >= datoffin && iFini === "")
                {
                    return true;
                }
                else if (iFini <= datofini && iFfin >= datoffin)
                {
                    return true;
                }
                return false;
            }

        );
    }else{
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
}

function setupRatingModal(target) {
  children = target.children();

  $.getJSON('/service/get?invoiceId='+target.data('id'), function (data) {
    $.each(data, function (index, val) {

      var html = "<div class='form-group'>" +
        "<label>"+val.description+"</label></br>" +
        "<input type='hidden' name='services["+index+"].serviceId' value='"+val.serviceId+"'>" +
        "<input type='hidden' name='services["+index+"].typeId' value='"+val.type.serviceTypeId+"'>" +
        "<input type='hidden' name='services["+index+"].carId' value='"+val.car.carId+"'>" +
        "<input type='hidden' name='services["+index+"].isActive' value='"+val.isActive+"'>" +
        "<input type='hidden' name='services["+index+"].price' value='"+val.price+"'>" +
        "<input type='hidden' name='services["+index+"].description' value='"+val.description+"'>";

      $.each(val.ratings, function(ratingIndex, rating) {
        html += "<label>Komentaras: </label>" +
          "<input class='form-control' type='text' value='"+rating.description+"' name='services["+index+"].ratings["+ratingIndex+"].description'>" +
          "<label>vertinimas: </label>" +
          "<input class='form-control' type='text' value='"+rating.rating+"' name='services["+index+"].ratings["+ratingIndex+"].rating'>" +
          "<input type='hidden' value='"+rating.serviceRatingId+"' name='services["+index+"].ratings["+ratingIndex+"].serviceRatingId'>" +
          "<input type='hidden' value='"+rating.creationDate+"' name='services["+index+"].ratings["+ratingIndex+"].creationDate'>" +
          "<input type='hidden' value='"+rating.isActive+"' name='services["+index+"].ratings["+ratingIndex+"].isActive'>";
      });

      html += "<label>Komentaras: </label>" +
        "<input class='form-control' type='text' name='services["+index+"].ratings["+val.ratings.length+"].description'>" +
        "<label>vertinimas: </label>" +
        "<input class='form-control' type='text' value='0' name='services["+index+"].ratings["+val.ratings.length+"].rating'>";
      html += "</div";

      $("#insertTarget").append(html);
    });

    $("#service-rating-modal").modal().addClass("md-show");
  });
}