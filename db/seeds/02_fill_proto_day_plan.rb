# rake db:seed:02_fill_proto_day_plan

arr = [
    {# [1]
     title:           'Салат "Оливье"',
     kind:            'Блюдо',
     count:           22,
     assigned_person: nil,
     is_my:           false,
     status:          'new',
     possible:        false,
     my_assignment:   false,
     actions:         [
                          ['Назначить', 1, 'success btn-show-modal-assign']
                      ]
    },
    {# [2]
     title:           'Салат "Оливье"',
     kind:            'Блюдо',
     count:           22,
     assigned_person: nil,
     is_my:           false,
     status:          'new',
     possible:        true,
     my_assignment:   false,
     actions:         [
                          ['Назначить', 1, 'success btn-show-modal-assign'],
                          ['Готовить', 2, 'warning']
                      ]
    },
    {# [3]
     title:           'Макароны по-флотски',
     kind:            'Блюдо',
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
     kind:            'Блюдо',
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
     kind:            'Блюдо',
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
     kind:            'Блюдо',
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
     kind:            'Блюдо',
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
     kind:            'Компонент',
     count:           '2 кг',
     assigned_person: nil,
     is_my:           false,
     status:          'new',
     possible:        true, # почистить морковь можно, т.к. это первое действие в цепочке
     my_assignment:   nil,
     related:         'Борщ',
     actions:         [
                          ['Назначить', 1, 'success btn-show-modal-assign'],
                          ['Готовить', 2, 'warning']
                      ]
    },
    {# [9]
     title:           'Сварить свеклу',
     kind:            'Компонент',
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
     kind:            'Компонент',
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
     kind:            'Компонент',
     count:           '2 кг',
     assigned_person: nil,
     is_my:           false,
     status:          'new',
     possible:        false, # нарезать нелья, т.к. она ещё не почищена и не помыта
     my_assignment:   nil,
     related:         'Борщ',
     actions:         [
                          ['Назначить', 1, 'success btn-show-modal-assign'],
                          ['Что с ней?', 22, 'link'] # узнать, какое действие предшествует, кто ещё не почистил и не помыл морковь
                      ]
    },
    {# [9.0]
     title:           'Почистить свеклу',
     kind:            'Компонент',
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
     kind:            'Компонент',
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
    }


]

Proto::DayPlan.delete_all
Proto::DayPlan.create!(arr)