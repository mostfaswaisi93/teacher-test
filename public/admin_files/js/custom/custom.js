$(document).ready(function() {

    $('ul li a').click(function() {
        $('li a').removeClass("active");
        $(this).addClass("active");
    });

    $(document).on('click', '.DeleteBtn', function(e) {
        e.preventDefault();
        var action = $(this).closest('.delete-item').attr('action');
        var form = $(this).closest('.delete-item');
        swal({
            title: 'Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ù…Ù† Ø°Ù„ÙƒØŸ',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ù†Ø¹Ù…',
            cancelButtonText: 'Ø¥Ù„ØºØ§Ø¡'
        }).then(function(result) {
            if (result.value) {
                console.log('yes');
                console.log(action);
                form.submit();
            }
        });
    });

    function previewImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('#previewimage').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#uploadFile").change(function() {
        previewImage(this);
    });

});

$.validator.setDefaults({
    errorClass: 'help-block',
    highlight: function(element) {
        $(element).closest('.form-group').addClass('has-error');
    }
});