Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places do
    resources :photos, only: :create
    resources :comments, only: :create
     
   end
 
 resources :user, only: :show
end
