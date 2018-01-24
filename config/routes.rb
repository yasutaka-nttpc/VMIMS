Rails.application.routes.draw do

  root 'top#index'

  resources :information, only: [:index, :new, :create, :destroy, :edit, :update] do
    post :confirm, on: :collection
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
