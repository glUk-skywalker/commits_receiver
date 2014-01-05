$("document").ready(function() {
    var res = ""

    $.each($(".mark_to_delete:checked"), function () {
        if (res != "") {
            res = res + ";"
        };
        res = res + $(this).parent().parent().attr("db_id");
    });

    $("#ids_list").attr("value", res);
});

$(document).on("click", ".mark_to_delete", function() {
    var res = ""

    $.each($(".mark_to_delete:checked"), function () {
        if (res != "") {
            res = res + ";"
        };
        res = res + $(this).parent().parent().attr("db_id");
    });

    $("#ids_list").attr("value", res);
});
