Rails.application.routes.draw do
	get '/bienvenue/:user', to: 'bienvenue#index'
	get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
  get '/gossips', to: 'gossip#index'
  get '/gossips/:id/show', to: 'gossip#show', as: 'gossip_s'
  get '/gossips/:id/edit', to: 'gossip#edit', as: 'gossip_e'
end