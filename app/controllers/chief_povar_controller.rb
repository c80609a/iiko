class ChiefPovarController < ApplicationController

  helper Front::ChiefPovar::FormsHelper

  # Шеф-повар попадает на экран с меню с кнопками "Готовить", "Списывать"
  def idle
    # noinspection RubyResolve
    gon.prev_page = root_path
  end

  # Шеф-повар попадает на экран со списком "что приготовить сегодня в своём цеху"
  def day_plan
    # noinspection RubyResolve
    gon.prev_page = idle_chief_povar_index_path
  end

end