Rails.application.routes.draw do
  resources :cautions
  resources :genres
  resources :stories, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :locations
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
