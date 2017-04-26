module Front
  module AktSpisania
    module Forms

      # Форма, которую видит Шеф-повар на кухне, когда хочет взаимодействовать с Актами Списания
      # Состоит из 3-х кнопок:
      #   * просмотреть
      #   * списать
      #   * изменить
      #
      def render_idle_form
        render :partial => 'shared/front/akt_spisania/form_01_idle'
      end

      # Форма, которую видит Шеф-повар на кухне, списывая ТМЦ
      def render_make_form

        items_array = [
            ['Суп "Борщ"', 12],
            ['Молоко', 13],
            ['Салат "Оливье"', 14],
            ['Сливки', 20],
            ['Cуп "Щи"', 30],
            ['Макароны по-флотски', 40]
        ]

        render :partial => 'shared/front/akt_spisania/form_02_make',
               :locals  => {
                   :items_array => items_array
               }
      end

    end
  end
end