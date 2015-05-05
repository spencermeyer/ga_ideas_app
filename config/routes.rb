Rails.application.routes.draw do
  devise_for :users
  resources  :users, only:[:index, :show]
  
  resources :ideas do
    collection do 
      post 'get_payment'
    end
  end

  root 'ideas#index'
end
