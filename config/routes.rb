Rails.application.routes.draw do
  resources :books do
    collection do
      get 'browse'
    end
  end
  resources :authors
  root :to => 'static_pages#home'
  devise_for :users
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
