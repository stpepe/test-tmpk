Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :session, only: %i[new create destroy]
  root 'contracts#index'
  post '/', to: 'contracts#show'
  post '/contracts/create', to: 'contracts#create'
  get '/contracts/:id/show', to: 'contracts#show'
  get '/contracts/new', to: 'contracts#new'
  get '/contracts/:id/edit', to: 'contracts#edit'

  get '/adresses/:contract_id/new', to: 'adresses#new'
  post '/adresses/:contract_id/create', to: 'adresses#create'

  get '/tarifs/show', to: 'tarifs#show'

  get '/workers/new', to: 'workers#new'
  post '/workers/new', to: 'workers#create'


end
