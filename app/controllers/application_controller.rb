class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def construct

    # попробуем найти в базе описание текущей страницы

    puts "<ApplicationController.construct> controller_name = #{controller_name}"
    puts "<ApplicationController.construct> action_name = #{action_name}"
    tag = "#{controller_name}_#{action_name}"

    mi = Proto::ModalInfo.where(:tag => tag)
    if mi.count > 0
      # noinspection RubyResolve
      gon.modal_info_content = mi.first.content.html_safe
    end

  end

end
