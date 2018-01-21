Rails.application.routes.draw do
  root 'information#index'

  resources :information, only: [:index, :new, :create, :destroy, :edit, :update] do
    post :confirm, on: :collection
  end
  #get 'information' => 'information#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
