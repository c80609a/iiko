class QwertyController < ApplicationController

  helper Front::Qwerty::FormsHelper

  before_action :construct

  # меню, где можно выбрать "кто я" находясь на кухне
  def whoareu

  end

end