"use strict";
$(document).ready(() => {
    let reg_btn = $('.container .register');
    let sig_btn = $('.container .signin');
    let back_btn = $('.container .back');
    reg_btn.click(function (e) {
        e.preventDefault();
        $(this).siblings('.reg').css({
            'transform': 'translateY(40%) scale(5)',
            'border-radius': '0',
            'width': '100%',
            'height': '100%'
        }).end();
        reg_btn.siblings('.container h3:nth-of-type(1)').css({
            'top': '40%',
            'z-index': '8',
        }).end().end();
    });
    sig_btn.on('click', function (e) {
        e.preventDefault();
        $(this).siblings('.sig').css({
            'transform': 'translateY(40%) scale(5)',
            'border-radius': '0',
            'width': '100%',
            'height': '100%'
        }).end();
        sig_btn.siblings('.container h3:nth-of-type(2)').css({
            'top': '40%',
            'z-index': '8',
        }).end().end();
    });
});
