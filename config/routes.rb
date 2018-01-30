Rails.application.routes.draw do

  root 'top#index'
  
  resources :information, only: [:index, :new, :create, :destroy, :edit, :update] do
    post :confirm, on: :collection
  end

  resources :services, only: [:index, :new, :create, :destroy, :edit, :update] do
    post :confirm, on: :collection
  end

  resources :groups, only: [:index, :new, :create, :destroy, :edit, :update] do
    post :confirm, on: :collection
  end

  resources :categories, only: [:index, :new, :create, :destroy, :edit, :update] do
    post :confirm, on: :collection
  end
  
  resources :environments, only: [:index, :new, :create, :destroy, :edit, :update] do
    post :confirm, on: :collection
  end

  devise_for :users

  # dev用メール
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
