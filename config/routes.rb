Rails.application.routes.draw do
  resources :makers, only: [:index, :new, :create]
  resources :drinks, only: [:index, :new, :create]
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
