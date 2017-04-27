module Front
  module Qwerty
    module FormsHelper

      # меню, где можно выбрать "кто я" находясь на кухне
      def render_whoareu_menu
        # noinspection RubyLiteralArrayInspection
          render :partial => 'shared/front/qwerty/whoareu_menu',
                 :locals  => {
                     menu_items: [
                                     ['Шеф-повар', '#'],
                                     ['Повар', '#'],
                                     ['Директор', '#']
                                 ]
                 }
      end

    end
  end
end