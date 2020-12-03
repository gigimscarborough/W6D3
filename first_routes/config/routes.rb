Rails.application.routes.draw do
#  resources :users

get '/users', to: 'users#index', as: 'users'
post '/users', to: 'users#create', as: 'users'
get '/users/new' to: 'users#new', as 'new_user'
get '/users/:id/edit' to: 'users#edit' as 'edit_user'
get '/users/:id', to: 'users#show', as: 'user'

  # patch "/posts/:id", to: "posts#update"
  # put "/posts/:id", to: "posts#update"
  # delete "/posts/:id", to: "posts#destroy"

  user GET    /users/:id(.:format) users#show
 PATCH  /users/:id(.:format) users#update
PUT    /users/:id(.:format) users#update
DELETE /users/:id(.:format) users#destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
