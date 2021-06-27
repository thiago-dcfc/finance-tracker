Rails.application.routes.draw do
  devise_for :users
  root 'users#my_portfolio'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friend', to: 'users#search'
  resources :user_stocks, only: %i[create destroy]
  resources :friendships, only: %i[create destroy]
  resources :users, only: [:show]
end
