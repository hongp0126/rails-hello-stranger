Rails.application.routes.draw do

  devise_for :users

  root to: 'appointments#index'

  resources :appointments, only: [:new, :edit, :create, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
