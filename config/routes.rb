Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs
  resources :users, only: [:new, :create, :show]

end
