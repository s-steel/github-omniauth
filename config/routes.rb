Rails.application.routes.draw do

  root 'welcome#index'
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
