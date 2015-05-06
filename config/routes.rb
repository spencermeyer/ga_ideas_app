Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only:[:index, :show]
  resources :ideas
<<<<<<< HEAD

  resources :idea do
    member do
      put "like",    to:'ideas#upvote'
      put "dislike", to:'ideas#downvote'
    end
  end

=======
  resources :comments, only:[:create, :destroy]
>>>>>>> 293c395010139322e612438e37f1d4cb4f33d483
end
