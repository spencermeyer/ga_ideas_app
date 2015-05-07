Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only:[:index, :show]
  resources :ideas
  resources :ideas do
    resources :media
    member do 
      post 'get_payment'
    end
  end
  resources :idea do
    member do
      put "like",    to:'ideas#upvote'
      put "dislike", to:'ideas#downvote'
    end
  end

  resources :comments, only:[:create, :destroy]
  
  resources :media

  resources :ideas do
    resources :media
  end


  resources :comments, only:[:create, :destroy]
end
