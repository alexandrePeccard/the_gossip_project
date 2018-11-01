Rails.application.routes.draw do
  #root url
  get '/', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'

  #login
  get '/login', to: 'login#login'
  post '/login', to: 'login#login_check'
  get '/logout', to: 'login#logout'

  #profil
  get '/profil', to: 'profil#index'
  resources :gossips, :users
end