Rails.application.routes.draw do
  get 'user/new'

  resources :book_categories
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'


  resources :comments
  resources :books
  resources :users

  root 'static_pages#home'
end
