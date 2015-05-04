Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:index, :show]
  
  resources :ideas

  root 'users#index'
end
