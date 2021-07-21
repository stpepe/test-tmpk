Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'loggining#index'
  root 'contracts#index'
  post '/', to: 'contracts#show'
  post '/contracts/create', to: 'contracts#create'
  get '/contracts/new', to: 'contracts#new'
end
