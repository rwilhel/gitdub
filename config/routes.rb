Rails.application.routes.draw do
  root "home#index"

  get 'auth/:provider/callback', to: 'sessions#create'
  get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/starred_repos', to: 'starred_repos#index'
  get '/repos',         to: 'repos#index'
  get '/followers',     to: 'followers#index'
  get '/following',     to: 'following#index'
  get '/events',        to: 'events#index'
  get '/organizations',   to: 'organizations#index'
end
