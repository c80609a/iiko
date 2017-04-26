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

      # Таблица, которую видит Шеф-повар на кухне, просматривая то, что списал он
      def render_view_chief

        akt_props = {
            id: '2001234',
            status: 'Неподтверждён',
            owner: {},
            place: 'Холодный цех',
            datetime: '23 апреля 2017 г',
            view_items_array: [
                { item: ['Суп "Борщ"', 12],
                  count: 12,
                  timestamp: '09:20'
                },
                { item: ['Салат "Сельдь под шубой"', 12],
                  count: 1,
                  timestamp: '10:05'
                },
                { item: ['Макароны по-флотски', 12],
                  count: 2,
                  timestamp: '12:15'
                },
            ]
        }

        render :partial => 'shared/front/akt_spisania/form_03_view',
               :locals => {
                   akt_props: akt_props
               }

      end

    end
  end
end