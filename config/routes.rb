Rails.application.routes.draw do
    namespace :api do
    namespace :v1 do 
       post 'signup', to: 'user#create'
      post 'login', to: 'authentication#create'
       post 'logout', to: 'authentication#destroy'
     resources :hotels, only: [:index, :show]
     resources :favourites, only: [:index, :create, :destroy]
   end
    end
end
