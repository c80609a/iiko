class AktSpisaniaController < ApplicationController

  # Вью не видело модуль Forms.
  # include Front::AktSpisania::Forms # fails
  # helper Forms # fails
  helper Front::AktSpisania::Forms # works!

  # шеф-повар, базовая форма
  def idle_chief

  end

  # шеф-повар списывает ТМЦ
  def make_chief

  end

  #
  def view_chief

  end

  #
  def delete_chief

  end

end