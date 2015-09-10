Rails.application.routes.draw do
  root 'main#index'
  namespace :auth do
    resource :sessions, only: [ :new, :create, :destroy ]
  end
end
