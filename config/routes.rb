Rails.application.routes.draw do
  resources :users, only: [:create,:new]

  resources :success_controller

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#new'



end
