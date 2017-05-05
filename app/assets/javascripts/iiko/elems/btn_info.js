"use strict";

// находим на странице кнопку class='btn_info',
// слушаем клики по ней,
// показываем модальное окно id='modal_info'.

$(document).ready(function() {

    var $btn = $('.btn_info');

    if ($btn.length > 0) {

        //noinspection JSUnresolvedVariable
        var info_content = gon['modal_info_content'];
        // var info_content = 'modal_info_content';

        if (info_content !== undefined) {
            var $modal = $('#modal_info');
            var $modal_body = $modal.find('.modal-body');

            // вызовется при клике по кнопке
            var f_show_modal_info = function(e) {
                e.preventDefault();
                $modal.modal('show');
                $modal_body.html(info_content);
            };

            $btn.on('click', f_show_modal_info);
        }
    }
});