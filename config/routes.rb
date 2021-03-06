Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
end
