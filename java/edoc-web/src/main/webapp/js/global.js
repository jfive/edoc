jQuery.validator.setDefaults({

    errorElement: "div",

    errorPlacement: function(error, element) {
        error.addClass("alert alert-error");
        error.appendTo($("#errorMessage"));
    }

});