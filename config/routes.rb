Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:index, :show, :edit, :update, :destroy]
end
