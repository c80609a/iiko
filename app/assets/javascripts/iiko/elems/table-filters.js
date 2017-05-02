"use strict";

/** styles:
 * app/assets/stylesheets/iiko/business/table-filters.scss
 */

/** launch:
 *   $(document).ready(function (){
*       $('.table-filters').tableFilters();
*   });
 */

/** html:
 * <div class='table-filters' data-table_id='{TABLE_ID}'>
 *     <a data-value='{VALUE-A}'></a>
 *     <a data-value='{VALUE-B}'></a>
 *     <a data-value='{VALUE-C}'></a>
 *     <a data-value='all'></a>
 * </div>
 *
 * <table data-id='{TABLE_ID}'>
 *     <tr data-value='{VALUE-A}'></tr>
 *     <tr data-value='{VALUE-B}'></tr>
 *     <tr data-value='{VALUE-C}'></tr>
 *     ...
 * </table>
 *
 * */

var TableFilters = function (){

    //noinspection JSUnusedLocalSymbols
    var _this = this;
    var _options = {
        current_filtering: '' // сюда помещается значение, по которому в данный момент фильтруются строки таблицы
    };

    // див с кнопками, нажатие на которые фильтруют таблицу
    var _$filters_div;

    // собственно, сами кнопки
    var _$buttons;

    // таблица, строки которой надо фильтровать
    var _$table;

    /**
     * Инициализация.
     * @param $el
     * @param params
     */
    this.init = function ($el, params){
        console.log('[TableFilters.init]');

        // extend options
        if (params !== undefined){
            _options = $.extend(_options, params);
        }

        // фиксируем главные элементы
        _$filters_div = $el;
        var table_id = _$filters_div.data('table_id');
        _$table = $('table[data-id=' + table_id + ']').find('tbody');
        _$buttons = _$filters_div.find('a');

        // начинаем слушать клик по кнопкам
        _$buttons.on('click', _this._on_filter_click);

        // console.log('[TableFilters.init]: ' + _$filtering_table.length + ', ' + _$filters.length);

    };

    /**
     * Слушаем клик по кнопкам, которые фильтруют таблицу.
     * @param e
     * @private
     */
    this._on_filter_click = function(e) {
        e.preventDefault();

        // кнопка
        var $t = $(this);

        // Значение, которому надо отфильтровать таблицу
        var val = $t.data('value');

        //console.log('[TableFilters._on_filter_click] val = ' + val);

        _this._apply(val, $t);

    };

    this._apply = function(val, $b) {
        if (val === 'all') {
            // покажем все строки
            _$table.find('tr').addClass('on');
        } else {
            // сначала просто скрываем все строки
            _$table.find('tr').removeClass('on');
            // а потом включаем видимость нужных строк
            _$table.find('tr[data-value='+val+']').addClass('on');
        }

        // запоминаем установку
        _options['current_filtering'] = val;

        // подсвечиваем кнопку
        _$buttons.removeClass('active');
        $b.addClass('active');

        // console.log('[TableFilters._apply] val = ' + val);
    };

};

(function (){
    $.fn.tableFilters = function (params){
        var len = this.length;
        return this.each(function (index){
            var me = $(this);
            //noinspection JSUnusedLocalSymbols
            var key = 'tableFilters' + (len > 1 ? '-' + ++index : '');
            //noinspection JSUnusedLocalSymbols
            var instance = (new TableFilters).init(me, params);
        });
    };
})(jQuery);