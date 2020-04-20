Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  get 'users/:id/follows' => 'users#follows', as: 'follows'
  get 'users/:id/followers' => 'users#followers', as: 'followers'
  resources :books
  root 'home#top'
  get 'home/about'
  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'

end
