module Front
  module Qwerty
    module FormsHelper

      # меню, где можно выбрать "кто я" находясь на кухне
      def render_whoareu_menu
        # noinspection RubyLiteralArrayInspection,RubyResolve
          render :partial => 'shared/front/qwerty/whoareu_menu',
                 :locals  => {
                     menu_items: [
                                     ['Шеф-повар', idle_chief_povar_index_path],
                                     ['Повар', '#'],
                                     ['Директор', '#']
                                 ]
                 }
      end

    end
  end
end