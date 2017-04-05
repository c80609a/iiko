Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'akt_spisania#idle_chief'

  # * This will enable Rails to recognize paths such as /akt_spisania/idle_chief
  # with GET, and route to the `idle_chief` action of AktSpisaniaController.
  # * It will also create the `idle_chief_akt_spisania_url`
  # and `idle_chief_akt_spisania_path` route helpers.
  resources :akt_spisania do
    collection do
      get 'idle_chief'
    end
  end

  # namespace :akt_spisania do
  #   get '/idle_chief', to: 'akt_spisania#idle_chief'
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
