function formAjax(edit, actionFunction) {

    $(".form").each(function () {
        var submitBtnHtml = $(this).find("button[type=submit]").html();

        var form = this;
        $(form).find("button[type=submit]").click(function () {
            if ($(form).find('input[type=file]').length > 0) {

                if ($(form).find('input[type=file]')[0].required && $(form).find('input[type=file]').val().length <= 0)
                    return error('please select file');
            }
        });


        var formdata = null;
        $(form).on('submit', function (e) {
            e.preventDefault();
            $(this).find("button[type=submit]").html('<i class="fa fa-spin fa-spinner" ></i>');
            $(this).find("button[type=submit]").attr('disabled', 'disabled');

            formdata = new FormData();
            var elements = this.elements;
            var self = this;

            for (var i = 0; i < elements.length; i++) {
                var e = elements[i];
                if (e.name.length > 0) {
                    if (e.type == "file") {
                        if (e.files[0] != undefined)
                            formdata.append(e.name, e.files[0]);
                    } else
                        formdata.append(e.name, e.value);
                }

            }

            //sendPost(this.action, formdata, function(r){console.log(r);});

            $.ajax({
                url: this.action,
                type: 'POST',
                data: formdata,
                processData: false, // tell jQuery not to process the data
                contentType: false, // tell jQuery not to set contentType
                success: function (data) {
                    if (data.status == 1) {
                        success(data.message);
                        // reload data 
                        try {
                           /* if ($('#table'))
                                $('#table').DataTable().ajax.reload();*/
                        } catch (e) {
                        }

                        if (self.action.indexOf("update") < 0)
                            self.reset();

                        if (edit) {
                            if (edit == true)
                                self.reset();
                        }
                    } else {
                        error(data.message);
                    }

                    $(self).find("button[type=submit]").html(submitBtnHtml);
                    $(self).find("button[type=submit]").removeAttr('disabled');


                    if (actionFunction)
                        actionFunction(data);
                }
            });

            return false;
        });
    });

}




function convertAjax(form, actionFunction, update) {
    var submitBtnHtml = $(form).find("button[type=submit]").html();

    $(form).find("button[type=submit]").click(function () {
        if ($(form).find('input[type=file]').length > 0) {

            if ($(form).find('input[type=file]')[0].required && $(form).find('input[type=file]').val().length <= 0)
                return error('please select file');
        }
    });


    var formdata = null;
    $(form).on('submit', function (e) {
        e.preventDefault();
        $(this).find("button[type=submit]").html('<i class="fa fa-spin fa-spinner" ></i>');
        $(this).find("button[type=submit]").attr('disabled', 'disabled');

        formdata = new FormData();
        var elements = this.elements;
        var self = this;

        for (var i = 0; i < elements.length; i++) {
            var e = elements[i];
            if (e.name.length > 0) {
                if (e.type == "file") {
                    if (e.files[0] != undefined)
                        formdata.append(e.name, e.files[0]);
                } else
                    formdata.append(e.name, e.value);
            }

        }

        //sendPost(this.action, formdata, function(r){console.log(r);});

        $.ajax({
            url: this.action,
            type: 'POST',
            data: formdata,
            processData: false, // tell jQuery not to process the data
            contentType: false, // tell jQuery not to set contentType
            success: function (data) {
                if (data.status == 1) {
                    success(data.message);
                    // reload data 
                    try {
                        /*if ($('#table'))
                            $('#table').DataTable().ajax.reload();*/
                    } catch (e) {
                    }

                    if (self.action.indexOf("update") < 0)
                        self.reset();

                    if (update) {
                        if (!update)
                            self.reset();
                    }
                } else {
                    error(data.message);
                }

                $(self).find("button[type=submit]").html(submitBtnHtml);
                $(self).find("button[type=submit]").removeAttr('disabled');


                if (actionFunction)
                    actionFunction(data);
            }
        });

        return false;
    });
}