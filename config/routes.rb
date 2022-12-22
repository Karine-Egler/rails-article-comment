Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :posts, only: [:index, :destroy] do
    resources :comments, only: [:new, :index]
    end
end
