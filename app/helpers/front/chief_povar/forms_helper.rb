module Front
  module ChiefPovar
    module FormsHelper

      # экран для Шеф-повара с меню с кнопками "Готовить", "Списывать"
      def render_chief_povar_menu

        # noinspection RubyResolve
        mitems = [
            ['Готовка', day_plan_chief_povar_index_path],
            ['Списания', idle_akt_spisania_path]
        ]

        # noinspection RubyLiteralArrayInspection
        render :partial => 'shared/front/chief_povar/main_menu',
               :locals  => {
                   menu_items: mitems
               }
      end

      # экран со списком "что приготовить сегодня в своём цеху"
      def render_day_plan

        ditems = [
            {# [1]
             title:           'Салат "Оливье"',
             type:            'Блюдо',
             count:           22,
             assigned_person: nil,
             is_my:           false,
             status:          'new',
             possible:        false,
             my_assignment:   false,
             actions:         [
                                  ['Назначить', 1, 'success']
                              ]
            },
            {# [2]
             title:           'Салат "Оливье"',
             type:            'Блюдо',
             count:           22,
             assigned_person: nil,
             is_my:           false,
             status:          'new',
             possible:        true,
             my_assignment:   false,
             actions:         [
                                  ['Назначить', 1, 'success'],
                                  ['Готовить', 2, 'warning']
                              ]
            },
            {# [3]
             title:           'Макароны по-флотски',
             type:            'Блюдо',
             count:           30,
             assigned_person: 'Петров',
             is_my:           false,
             status:          'new',
             possible:        false,
             my_assignment:   true,
             actions:         [
                                  ['Переназначить', 3, 'default']
                              ]
            },
            {# [4]
             title:           'Салат "Греческий"',
             type:            'Блюдо',
             count:           20,
             assigned_person: 'Петров',
             is_my:           false,
             status:          'new',
             possible:        true,
             my_assignment:   true,
             actions:         [
                                  ['Переназначить', 3, 'default']
                              ]
            },
            {# [5]
             title:           'Салат "Оливье"',
             type:            'Блюдо',
             count:           22,
             assigned_person: 'Николаев',
             is_my:           true,
             status:          'new',
             possible:        false,
             my_assignment:   true,
             actions:         [
                                  ['Переназначить', 3, 'default']
                              ]
            },
            {# [6]
             title:           'Салат "Оливье"',
             type:            'Блюдо',
             count:           22,
             assigned_person: 'Николаев',
             is_my:           true,
             status:          'new',
             possible:        true,
             my_assignment:   true,
             actions:         [
                                  ['Готовить', 2, 'warning'],
                                  ['Переназначить', 3, 'default']
                              ]
            },
            {# [13]
             title:           'Суп "Борщ"',
             type:            'Блюдо',
             count:           12,
             assigned_person: 'Иванов',
             is_my:           false,
             status:          'in_progress',
             possible:        true,
             my_assignment:   nil,
             actions:         []
            },
            {# [7]
             title:           'Почистить морковь',
             type:            'Компонент',
             count:           '2 кг',
             assigned_person: nil,
             is_my:           false,
             status:          'new',
             possible:        true, # почистить морковь можно, т.к. это первое действие в цепочке
             my_assignment:   nil,
             related:         'Борщ',
             actions:         [
                                  ['Назначить', 1, 'success'],
                                  ['Готовить', 2, 'warning']
                              ]
            },
            {# [9]
             title:           'Сварить свеклу',
             type:            'Компонент',
             count:           '1 кг',
             assigned_person: 'Васильев',
             is_my:           false,
             status:          'new',
             possible:        true, # сварить свеклу можно, т.к. это первое действие в цепочке действий со свеклой для венигрета
             my_assignment:   nil,
             related:         'Венигрет',
             actions:         [

                              ]
            },
            {# [11]
             title:           'Почистить картошку',
             type:            'Компонент',
             count:           '1 кг',
             assigned_person: 'Николаев',
             is_my:           true,
             status:          'new',
             possible:        true, # почистить картошку можно, т.к. это первое действие в цепочке
             my_assignment:   nil,
             related:         'Борщ',
             actions:         [
                                  ['Готовить', 2, 'warning']
                              ]
            },
            {# [7.0]
             title:           'Нарезать морковь',
             type:            'Компонент',
             count:           '2 кг',
             assigned_person: nil,
             is_my:           false,
             status:          'new',
             possible:        false, # нарезать нелья, т.к. она ещё не почищена и не помыта
             my_assignment:   nil,
             related:         'Борщ',
             actions:         [
                                  ['Назначить', 1, 'success'],
                                  ['Что с ней?', 22, 'link'] # узнать, какое действие предшествует, кто ещё не почистил и не помыл морковь
                              ]
            },
            {# [9.0]
             title:           'Почистить свеклу',
             type:            'Компонент',
             count:           '1 кг',
             assigned_person: 'Васильев',
             is_my:           false,
             status:          'new',
             possible:        false,  # она ещё не сварена
             my_assignment:   nil,
             related:         'Венигрет',
             actions:         [

                              ]
            },
            {# [11]
             title:           'Нарезать свеклу кубиками',
             type:            'Компонент',
             count:           '1 кг',
             assigned_person: 'Николаев',
             is_my:           true,
             status:          'new',
             possible:        false, # нарезать свеклу нельзя, т.к. она еще не почищена
             my_assignment:   nil,
             related:         'Борщ',
             actions:         [
                                  ['Что с ней?', 22, 'link'] # узнать, какое действие предшествует, кто ещё не почистил и не помыл морковь
                              ]
            },


        ]

        render :partial => 'shared/front/chief_povar/day_plan',
               :locals  => {
                   day_plan_items: ditems
               }
      end

    end
  end
end