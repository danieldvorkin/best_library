Rails.application.routes.draw do

  root 'books#index'

  resources :books do
    resources :borrows, only: [:new, :create, :update]
  end

  resources :users
  resources :sessions, only: [:new, :create]
  delete 'logout' => 'sessions#destroy'



end
