Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]
  resources :heroes, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
