Rails.application.routes.draw do
	#root url
  get '/', to: 'gossip#index'
  #bienvenue
	get '/bienvenue/:user', to: 'bienvenue#index'
	#user
  get '/users', to: 'user#index'
  get '/users/new', to: 'user#new', as: 'user_n'
  #gossips
  get '/gossips', to: 'gossip#index'
  get '/gossips/:id/show', to: 'gossip#show', as: 'gossip_s'
  get '/gossips/:id/edit', to: 'gossip#edit', as: 'gossip_e'
	#contact
	get '/contact', to: 'contact#index'
	#team
  get '/team', to: 'team#index'

  post '/users/create', to: 'user#create', as: 'user_c'
end