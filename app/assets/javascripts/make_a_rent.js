$(document).ready(function () {
    $('#js-cart-finish').click(function () {
        $.get("/make_a_rent.json").then(
            function(data) {
                alert(data.message);
                window.location.href = '/';
            }, function (error) {
                alert(error.responseJSON.message);
            })
    });
});

