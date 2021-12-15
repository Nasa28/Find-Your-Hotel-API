Rails.application.routes.draw do
  get 'favourites/index'
  get 'favourites/create'
  get 'favourites/destroy'
    namespace :api do
    namespace :v1 do
     resources :hotels, only: [:index, :show]
     resources :favourites, only: [:index, :create, :destroy]
     post 'authenticate', to: 'authentication#create'
   end
    end
end
