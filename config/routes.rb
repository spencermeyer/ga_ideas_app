Rails.application.routes.draw do
  root 'ideas#index'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only:[:index, :show]
  resources :ideas

  resources :idea do
    member do
      put "like", to: 'ideas#upvote'
    end
  end

end
