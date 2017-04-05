module Front
  module AktSpisania
    module Forms

      # Форма, которую видит Шеф-повар на кухне, когда хочет взаимодействовать с Актами Списания
      # Состоит из 3-х кнопок:
      #   * просмотреть
      #   * списать
      #   * изменить
      #
      def render_idle_form
        render :partial => 'shared/front/akt_spisania/form_01_idle'
      end

    end
  end
end