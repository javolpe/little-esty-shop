Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :merchant, only: [:index] do
    resources :dashboard, only: [:index]
    resources :items, only: [:index, :show, :edit, :update, :new, :create]
    resources :invoices, only: [:index]
  end

  resources :admin, only: :index

  namespace :admin do
    resources :merchants, only: [ :show, :update, :create, :index, :edit, :update]
    resources :invoices, only: [ :index, :show ]
  end
end
