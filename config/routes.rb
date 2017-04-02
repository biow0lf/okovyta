Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :api, defaults: { format: 'json' } do
    resources :docs, only: :index

    resource :sign_up, only: :create

    resource :sign_in, only: :create

    resource :sign_out, only: :destroy

    resource :profile, only: :show
  end
end
