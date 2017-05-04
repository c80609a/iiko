class AktSpisaniaController < ApplicationController

  # Вью не видело модуль Forms.
  # include Front::AktSpisania::Forms # fails
  # helper Forms # fails
  helper Front::AktSpisania::Forms # works!

  # шеф-повару предлагается меню с действиями относительно актов списания
  def idle
    # noinspection RubyResolve
    gon.prev_page = idle_chief_povar_index_path
    add_breadcrumb 'Выбор роли', root_path
    # noinspection RubyResolve
    add_breadcrumb 'Шеф-повар',  idle_chief_povar_index_path
    add_breadcrumb 'Списания'
  end

  # шеф-повар списывает ТМЦ
  def make_chief
    # noinspection RubyResolve
    gon.prev_page = idle_akt_spisania_path
    add_breadcrumb 'Выбор роли', root_path
    # noinspection RubyResolve
    add_breadcrumb 'Шеф-повар',  idle_chief_povar_index_path
    add_breadcrumb 'Списания', idle_akt_spisania_path
    add_breadcrumb 'Списать'
  end

  #
  def view_chief
    # noinspection RubyResolve
    gon.prev_page = idle_akt_spisania_path
    add_breadcrumb 'Выбор роли', root_path
    # noinspection RubyResolve
    add_breadcrumb 'Шеф-повар',  idle_chief_povar_index_path
    add_breadcrumb 'Списания', idle_akt_spisania_path
    add_breadcrumb 'Просмотр'
  end

  #
  def delete_chief

  end

end