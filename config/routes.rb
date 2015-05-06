Rails.application.routes.draw do
  root 'ideas#index'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only:[:index, :show]
  resources :ideas

  resources :idea do
    member do
      put "like",    to:'ideas#upvote'
      put "dislike", to:'ideas#downvote'
    end
  end

end
