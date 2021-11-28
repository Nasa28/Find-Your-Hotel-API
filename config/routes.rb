Rails.application.routes.draw do
  root to: 'hotels#index'
  resources :hotels, only: [:index, :create, :destroy]
end