Rails.application.routes.draw do
  devise_for :users
  resources :articles

  get 'articles/index'
  root 'articles#index'

  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
end
