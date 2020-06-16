Rails.application.routes.draw do
  resources :story_cautions, only: [:new, :create]
  resources :story_genres, only: [:new, :create]
  resources :cautions, only: [:index, :show, :new, :create]
  resources :genres, only: [:index, :show, :new, :create]
  resources :stories, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :locations, only: [:index, :show]
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

