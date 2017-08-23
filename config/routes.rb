Rails.application.routes.draw do
  resources :comments
  resources :books
  resources :users

  root 'application#hello'
end
