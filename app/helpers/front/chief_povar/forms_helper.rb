module Front
  module ChiefPovar
    module FormsHelper

      def render_chief_povar_menu
        # noinspection RubyLiteralArrayInspection
          render :partial => 'shared/front/chief_povar/main_menu',
                 :locals  => {
                     menu_items: [
                                     ['Готовка', '#'],
                                     ['Списания', '#']
                                 ]
                 }
      end

    end
  end
end