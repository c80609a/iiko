module Front
  module LayoutHelper

    def render_bcrumbs
      render :partial => 'shared/front/layout/bcrumbs'
    end

    def render_form_footer
      render :partial => 'shared/front/layout/form_footer'
    end

    def render_modal_info
      render :partial => 'shared/front/layout/modal_info'
    end

  end
end