Rails.application.routes.draw do

 root  'pictures#index'
 resources :pictures

 resource :users, only: [:new, :create]
 resource :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
