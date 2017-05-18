Rails.application.routes.draw do


  devise_for :users

  resources :users, only: [:show, :index]
  resources :friendships, only: [:create, :destroy, :accept] do
    member do
      put :accept
    end
  end

  resources :posts, only: [:create, :update, :edit, :destroy]
  resources :activities, only: [:index]

  root 'welcome#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
