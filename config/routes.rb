Rails.application.routes.draw do
  root 'main#index'
  resource :sessions, only: [ :new, :create, :destroy ]
end
