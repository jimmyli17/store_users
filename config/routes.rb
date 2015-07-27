Rails.application.routes.draw do
  get '/store_users/create' => 'application#create'
  get '/store_users/new' => 'application#new'
  get '/store_users/:id' => 'application#show'
end
