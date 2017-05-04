class ChiefPovarController < ApplicationController

  helper Front::ChiefPovar::FormsHelper

  # Шеф-повар попадает на эrкран с меню с кнопками "Готовить", "Списывать"
  def idle
    # noinspection RubyResolve
    gon.prev_page = root_path
    add_breadcrumb 'Выбор роли', root_path
    # noinspection RubyResolve
    add_breadcrumb 'Шеф-повар'
  end

  # Шеф-повар попадает на экран со списком "что приготовить сегодня в своём цеху"
  def day_plan
    # noinspection RubyResolve
    gon.prev_page = idle_chief_povar_index_path
    add_breadcrumb 'Выбор роли', root_path
    # noinspection RubyResolve
    add_breadcrumb 'Шеф-повар',  idle_chief_povar_index_path
    add_breadcrumb 'Готовка'
  end

end