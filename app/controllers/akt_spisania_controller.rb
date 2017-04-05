class AktSpisaniaController < ApplicationController

  # Вью не видело модуль Forms.
  # include Front::AktSpisania::Forms # fails
  # helper Forms # fails
  helper Front::AktSpisania::Forms # works!

  # шеф-повар, базовая форма
  def idle_chief

  end

end