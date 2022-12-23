Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts, only: [:index, :destroy, :show]
  resources :comments, only: [:new, :index, :create]
end
