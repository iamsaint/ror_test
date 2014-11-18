Rails.application.routes.draw do
  resources :articles

  get 'articles/index'
  root 'articles#index'
end
