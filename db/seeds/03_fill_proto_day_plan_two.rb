# rake db:seed:03_fill_proto_day_plan_two

arr = [
    {
        id:              1,
        title:           'Щи зеленые с яйцом',
        kind:            'Блюдо',
        count:           10,
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        false,
        my_assignment:   false,
        previous:        nil,
        next:            nil,
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              2,
        title:           'Котлеты картофельные',
        kind:            'Блюдо',
        count:           22,
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   false,
        previous:        nil,
        next:            nil,
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              3,
        title:           'Консоме с куриными фрикадельками и сезонными овощами',
        kind:            'Блюдо',
        count:           30,
        assigned_person: 'Петров',
        is_my:           false,
        status:          'new',
        possible:        false,
        my_assignment:   true,
        previous:        nil,
        next:            nil,
        actions:         [

                         ]
    },
    {
        id:              4,
        title:           'Почистить картофель',
        kind:            'Компонент',
        count:           '0,29 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1,2,3',
        previous:        nil,
        next:            '[11, 18, 20]', # порезать кубиками, отварить, нарезать дольками
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign'],
                             ['Готовить', 2, 'warning']
                         ]
    },
    {
        id:              5,
        title:           'Почистить морковь',
        kind:            'Компонент',
        count:           '0,2 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1,3',
        previous:        nil,
        next:            [12, 21], # натереть, нарезать ломтиками
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign'],
                             ['Готовить', 2, 'warning']
                         ]
    },
    {
        id:              6,
        title:           'Почистить лук',
        kind:            'Компонент',
        count:           '0,3 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1,3',
        previous:        nil,
        next:            [133], # нашинковать лук
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign'],
                             ['Готовить', 2, 'warning']
                         ]
    },
    {
        id:              7,
        title:           'Помыть щавель',
        kind:            'Компонент',
        count:           '0,4 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        nil,
        next:            [1], # следующее действие - собственно, уже готовка блюда "Щи"
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign'],
                             ['Готовить', 2, 'warning']
                         ]
    },
    {
        id:              8,
        title:           'Помыть шпинат',
        kind:            'Компонент',
        count:           '0,4 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        nil,
        next:            [1], # следующее действие - собственно, уже готовка блюда "Щи"
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign'],
                             ['Готовить', 2, 'warning']
                         ]
    },
    {
        id:              9,
        title:           'Отварить яйцо',
        kind:            'Компонент',
        count:           '5 шт',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        nil,
        next:            [15], # почистить и разрезать на 2 части
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign'],
                             ['Готовить', 2, 'warning']
                         ]
    },
    {
        id:              10,
        title:           'Помыть зелень',
        kind:            'Компонент',
        count:           '0,01 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1,3',
        previous:        nil,
        next:            [16],
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign'],
                             ['Готовить', 2, 'warning']
                         ]
    },
    {
        id:              11,
        title:           'Порезать картофель кубиками',
        kind:            'Компонент',
        count:           '0,29 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        [4], # двухсвязный список: предыдущее действие - "почистить картофель"
        next:            [1], # следующее действие - собственно, уже готовка блюда "Щи"
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              12,
        title:           'Натереть морковь',
        kind:            'Компонент',
        count:           '0,1 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        [5], # двухсвязный список: предыдущее действие - "почистить морковь"
        next:            [17], # спассеровать с луком
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              133,
        title:           'Нашинковать лук',
        kind:            'Компонент',
        count:           '0,3 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1,3',
        previous:        [6], # двухсвязный список: предыдущее действие - "почистить лук"
        next:            [17,3], # спассеровать с морковью, начать готовить консоме
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              13,
        title:           'Нашинковать щавель',
        kind:            'Компонент',
        count:           '0,4 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        [7], # предыдущее действие - "помыть щавель"
        next:            [1], # начать готовить щи
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              14,
        title:           'Нашинковать шпинат',
        kind:            'Компонент',
        count:           '0,4 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        [8], # предыдущее действие - "помыть шпинат"
        next:            [1], # начать готовить щи
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              15,
        title:           'Яйцо варёное почистить и разрезать пополам',
        kind:            'Компонент',
        count:           '5 шт',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        [9], # предыдущее действие - "сварить яйцо"
        next:            [1], # начать готовить щи
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              16,
        title:           'Нашинковать зелень',
        kind:            'Компонент',
        count:           '0,02 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1,3',
        previous:        [10], # предыдущее действие - "помыть зелень"
        next:            [1,3], # начать готовить щи, начать готовить консоме
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              17,
        title:           'Спассеровать лук и морковь',
        kind:            'Компонент',
        count:           '0,25 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '1',
        previous:        [12,133], # предыдущее действия - "натереть морковь" и "нашинковать лук"
        next:            [1], # начать готовить щи
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              18,
        title:           'Отварить картофель',
        kind:            'Компонент',
        count:           '1,42 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '2',
        previous:        [4], # предыдущее действие - "картофель почистить"
        next:            [19], # кортофель потереть
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              19,
        title:           'Потереть варёный картофель',
        kind:            'Компонент',
        count:           '1,42 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '2',
        previous:        [18], # предыдущее действие - "картофель отварить"
        next:            [2], # начать готовить блюдо
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              20,
        title:           'Картофель нарезать дольками',
        kind:            'Компонент',
        count:           '0,45 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '3',
        previous:        [4], # предыдущее действие - "картофель почистить"
        next:            [3], # начать готовить блюдо
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    },
    {
        id:              21,
        title:           'Морковь нарезать ломтиками',
        kind:            'Компонент',
        count:           '0,1 кг',
        assigned_person: nil,
        is_my:           false,
        status:          'new',
        possible:        true,
        my_assignment:   nil,
        related:         '3',
        previous:        [5], # предыдущее действие - "морковь почистить"
        next:            [3], # начать готовить блюдо
        actions:         [
                             ['Назначить', 1, 'success btn-show-modal-assign']
                         ]
    }

]

Proto::DayPlan.delete_all
Proto::DayPlan.create!(arr)