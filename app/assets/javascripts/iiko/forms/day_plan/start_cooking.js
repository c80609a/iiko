"use strict";

// 01. При клике по class='btn-start-cooking'
// строка таблицы, содержащая эту кнопку, меняет своё состояние:
// исчезают все кнопки из class='col-actions',
// в class='col-assigned_person' помещается текст 'Николаев (это Вы)',
// в class='col-status' помещается текст 'in progress'
//
// 02 *отложено*. После все этого показывается модальное окно
// с сообщением "вы начали готовить это".

$(document).ready(function() {
    var $btns = $('.btn-start-cooking');
    if ($btns.length > 0) {

        // модальное окно с произвольным сообщением
        // var $modal = $('#modal_message');

        // строка в таблице, где живёт кнопка "готовить",
        // и основные ячейки
        var $row, $td_status, $td_assigned_person, $td_actions;

        // сработает при клике
        var f_assign = function(e) {

            e.preventDefault();

            // фиксируем участников
            $row = $(this).parent().parent();
            $td_status = $row.find('td.col-status');
            $td_assigned_person = $row.find('td.col-assigned_person');
            $td_actions = $row.find('td.col-actions');

            // меняем состояние строки
            $row.addClass('my_position');
            $td_status.html('<span class="label label-info">in progress</span>');
            $td_assigned_person.text('Николаев (это Вы)');
            $td_actions.find('a').css('display','none');

        };

        $btns.click('on', f_assign);

    }

});
