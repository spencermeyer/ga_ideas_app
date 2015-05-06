Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only:[:index, :show]
  resources :ideas

  resources :idea do
    member do
      put "like",    to:'ideas#upvote'
      put "dislike", to:'ideas#downvote'
    end
  end

  resources :comments, only:[:create, :destroy]
<<<<<<< HEAD
=======
  
  resources :media

  # , only:[:create, :edit, :show, :new, :update]

  resources :ideas do
    resources :media
  end

  resources :comments, only:[:create, :destroy]

>>>>>>> 4a9444dc97fbbe174e31dd6e24e86216a31d3936
end
