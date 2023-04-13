
$(document).ready(() => { 

    const reg = new RegExp('^[0-9]+$');

    $('#inputCardNo').keyup(function () {
        let value = $(this).val();
        let lastChar = value.slice(-1);

        if (!reg.test(lastChar)) {
            $(this).val(value.replace(/[^0-9\.]+/g, ''))
        }

    });


    $('#inputCvv2').keyup(function () {
        let value = $(this).val();
        let lastChar = value.slice(-1);

        if (!reg.test(lastChar)) {
            $(this).val(value.replace(/[^0-9\.]+/g, ''))
        }

    });

    $("#inputCvv2").mask("9999");

    $('#inputCardNo').keydown(function () {
        let value = $(this).val().substr(0, 1);

        $('#inputCardNo').mask(`${value == 3 ? '9999 999999 99999' : '9999 9999 9999 9999'}`, { autoclear: true }) //Amex Format Control

    });

    var popup = $('#myPopup')

    $('#info').mouseleave(() => {

        popup.fadeOut(1000, () => {
            popup.removeClass("show")
            popup.addClass("hide")
        });
    })

    $('#info').mouseover(() => {

        if (popup.attr('class') != "popuptext show") {
            popup.removeClass("hide")
            popup.addClass("show")
            popup.fadeIn(1000);
        }
    })

})


var calcExpDate = function () {
    var months = $('#cardExpiryMonth').val();
    var years = $('#cardExpiryYear').val();
    debugger;
    if (months !== '' && months !== null && months !== 'Ay' && months !== 'Month' && years !== '' && years !== null && years !== 'Yıl' && years !== 'Year') {
        var dtExp = years.substring(2, 4) + months;        
        $('#txtExpDate').val(dtExp);
    }
    else {
        $('#txtExpDate').val('');
    }
}

var calcExpDateEng = function () {
    var months = $('#cardExpiryMonthEng').val();
    var years = $('#cardExpiryYearEng').val();
    debugger;
    if (months !== '' && years !== '') {
        var dtExp = years.substring(2, 4) + months;
        $('#txtExpDate').val(dtExp);
    }
    else {
        $('#txtExpDate').val('');
    }
}
window.history.forward();