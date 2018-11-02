Rails.application.routes.draw do
  get '/likes/gossip/:id', to: 'likes#like_gossip'
  get '/dislikes/gossip/:id', to: 'likes#dislike_gossip'
  # get "/gossips/comment_modal" => 'comments#new_comment', :as => :new_comment
  # get '/likes/like_comment/:id', to: 'likes#like_comment'
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
  resources :gossips, :users, :comments
end