Rails.application.routes.draw do
  namespace :backoffice do
    # TODO: test this route
    mount PgHero::Engine, at: 'pghero'
  end

  namespace :api, defaults: { format: 'json' } do
    resources :docs, only: :index

    resource :sign_up, only: :create

    resource :sign_in, only: :create

    resource :sign_out, only: :destroy

    resource :profile, only: :show
  end
end
