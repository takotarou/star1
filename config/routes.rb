Rails.application.routes.draw do
  devise_for :users
  resources :ramen_shops, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end
  root 'homes#top'
end
