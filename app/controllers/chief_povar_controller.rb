class ChiefPovarController < ApplicationController

  helper Front::ChiefPovar::FormsHelper

  # Шеф-повар попадает на экран с меню с кнопками "Готовить", "Списывать"
  def idle

  end

  # Шеф-повар попадает на экран со списком "что приготовить сегодня в своём цеху"
  def day_plan

  end

end