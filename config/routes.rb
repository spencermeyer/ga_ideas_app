Rails.application.routes.draw do
root 'somethings#index'
  resources :somethings
end
