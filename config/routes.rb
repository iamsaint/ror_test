Rails.application.routes.draw do
  devise_for :users
  resources :articles #plural

  get 'articles/index'
  root 'articles#index'
  post "articles/new"

  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
end
