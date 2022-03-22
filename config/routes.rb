Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  get "home/index"
  root to: "home#index"

  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy] do
    resources :comments
    resources :likes
  end

  get "search" => "search#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
