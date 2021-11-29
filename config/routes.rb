Rails.application.routes.draw do
    namespace :api do
    namespace :v1 do
     resources :hotels, only: [:index, :create, :destroy]
     post 'authenticate', to: 'authentication#create'
   end
    end
end
