//$("#estadia_veiculo_id option[data-cliente=" + 1 + "]").show()

document.addEventListener("turbolinks:load", function() {
    $("#estadia_veiculo_id option").hide()

    $(".cliente-selection").change(function(event) {
        $("#estadia_veiculo_id option").hide()
        $("#estadia_veiculo_id option[data-cliente=" + this.value + "]").show()
        console.log(this.value)
    });
})