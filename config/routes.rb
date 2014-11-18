Rails.application.routes.draw do
  devise_for :users
  resources :articles

  get 'articles/index'
  root 'articles#index'
end
