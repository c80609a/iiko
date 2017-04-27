Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'qwerty#whoareu'

  # * This will enable Rails to recognize paths such as /akt_spisania/idle
  # with GET, and route to the `idle` action of AktSpisaniaController.
  # * It will also create the `idle_chief_akt_spisania_url`
  # and `idle_chief_akt_spisania_path` route helpers.
  resources :akt_spisania do
    collection do
      get 'idle'
      get 'make_chief'
      get 'view_chief'
      get 'delete_chief'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
