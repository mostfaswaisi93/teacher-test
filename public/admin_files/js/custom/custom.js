$(document).ready(function() {

    $.extend($.validator.messages, {
        required: "Ù‡Ø°Ø§ Ø§Ù„Ø­Ù‚Ù„ Ù…Ø·Ù„ÙˆØ¨.",
        remote: "Ø§Ù„Ø¹Ù†ØµØ± Ù…ÙˆØ¬ÙˆØ¯ Ù…Ø³Ø¨Ù‚Ø§Ù‹.",
        email: "Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø¨Ø±ÙŠØ¯ ØµØ­ÙŠØ­.",
        url: "Please enter a valid URL.",
        date: "Please enter a valid date.",
        dateISO: "Please enter a valid date (ISO).",
        number: "Ø§Ù„Ø±Ù‚Ù… ØºÙŠØ± ØµØ­ÙŠØ­.",
        digits: "Ù…Ø³Ù…ÙˆØ¹ Ø£Ø±Ù‚Ø§Ù… ÙÙ‚Ø·.",
        equalTo: "Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ù†ÙØ³ Ø§Ù„Ù‚ÙŠÙ…Ø© Ù…Ø±Ø© Ø£Ø®Ø±Ù‰.",
        accept: "Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ ØµÙŠØºØ© Ù…Ù‚Ø¨ÙˆÙ„Ø©.",
        maxlength: $.validator.format("Please enter no more than {0} characters."),
        minlength: $.validator.format("Please enter at least {0} characters."),
        rangelength: $.validator.format("Please enter a value between {0} and {1} characters long."),
        range: $.validator.format("Please enter a value between {0} and {1}."),
        max: $.validator.format("Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ø¯Ø®Ø§Ù„ Ù‚ÙŠÙ…Ø© Ø§Ù‚Ù„ Ù…Ù† {0}."),
        min: $.validator.format("Please enter a value greater than or equal to {0}.")
    });

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

toastr.options = {
    "closeButton": true,
    "positionClass": "toast-top-left",
    "showDuration": "1000",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
};