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

        ditems = Proto::DayPlan.all

        render :partial => 'shared/front/chief_povar/day_plan',
               :locals  => {
                   day_plan_items: ditems
               }
      end

    end
  end
end