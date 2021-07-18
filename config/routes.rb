Rails.application.routes.draw do
  devise_for :users
  resources :ramen_shops, only: [:index, :show]
  root 'homes#top'
end
