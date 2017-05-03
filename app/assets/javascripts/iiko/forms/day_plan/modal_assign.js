"use strict";

// 01. находим на странице все class='btn-show-modal-assign'
// и вешаем на них клик "показать модальное окно 'назначить сотрудника на позицию'"
// 02. подставляем в строку с позицией имя назначенного сотрудника

$(document).ready(function() {
    var $btns = $('.btn-show-modal-assign');
    if ($btns.length > 0) {

        var $modal = $('#modal_assign');

        // строка в таблице, где живёт кнопка "назначить",
        // которая показывает модальное окно
        // пригодится
        var $row;

        // когда в селекте выбираем сотрудника,
        // в этой переменной хранится его имя
        var ass_person = 'undef';

        // селект с сотрудниками,
        // живёт в модальном окне
        var $select = $modal.find('.selectpicker');

        // показать модальное окно
        var f_show_modal_assign = function() {
            // console.log('[f_show_modal_assign]');

            // подставим во второй заголовок окна инфо из строки таблицы
            // в которой расположена кнопка.
            // например: 'почистить картошку, 12кг'
            $row = $(this).parent().parent();
            var t = $row.find('td.col-title').text();
            var c = $row.find('td.col-count').text();
            $modal.find('h5.modal-title').text(t + ', ' + c);

            $modal.modal('show');
        };

        $btns.click('on', f_show_modal_assign);

        // при клике по кнопке "назначить" внутри окна
        // найдём в таблице строку с позицией и впишем туда имя
        var f_insert_name_into_row = function() {
            ass_person = $select.selectpicker('val');
            //console.log('[f_insert_name_into_row] ass_person = ' + ass_person);
            var $td = $row.find('td.col-assigned_person');
            $td.text(ass_person);
        };

        $modal.find('.btn-primary').on('click', f_insert_name_into_row);
    }
});