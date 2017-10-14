Rails.application.routes.draw do
  root 'sites#index'

  devise_for :users

  get 'sites/index'

  resources :recipes do
    collection do
      get :search
    end
  end

  resources :categories

  resources :users, only: [:show]

  resources :favoritisms, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
