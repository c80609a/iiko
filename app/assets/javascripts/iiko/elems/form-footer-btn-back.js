"use strict";

$(document).ready(function() {
    var $btn = $('.form_footer').find('.btn-back');
    if ($btn.length > 0) {

        // сработает при клике по кнопке back
        var f_go_back = function(e) {
            e.preventDefault();
            //noinspection JSUnresolvedVariable
            window.location.href = gon.prev_page;
        };

        // вешаем обработчик
        $btn.on('click', f_go_back);
    }
});