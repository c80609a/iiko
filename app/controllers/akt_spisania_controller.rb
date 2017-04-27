class AktSpisaniaController < ApplicationController

  # Вью не видело модуль Forms.
  # include Front::AktSpisania::Forms # fails
  # helper Forms # fails
  helper Front::AktSpisania::Forms # works!

  # шеф-повару предлагается меню с действиями относительно актов списания
  def idle

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