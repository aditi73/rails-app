Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do #This line tells rails we have a resource named articles
    resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
