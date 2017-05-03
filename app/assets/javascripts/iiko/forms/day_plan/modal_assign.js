"use strict";

// находим на странице все class='btn-show-modal-assign'
// и вешаем на них клик "показать модальное окно 'назначить сотрудника на позицию'"

$(document).ready(function() {
    var $btns = $('.btn-show-modal-assign');
    if ($btns.length > 0) {
        var f_show_modal_assign = function() {
            // console.log('[f_show_modal_assign]');
            $('#modal_assign').modal('show');
        };
        $btns.click('on', f_show_modal_assign);
    }
});