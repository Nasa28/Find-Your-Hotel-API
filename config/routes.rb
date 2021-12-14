Rails.application.routes.draw do
    namespace :api do
    namespace :v1 do
     resources :hotels, only: [:index, :create, :destroy, :show]
     post 'authenticate', to: 'authentication#create'
   end
    end
end
