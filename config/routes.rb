Rails.application.routes.draw do
  #da root!
  root 'users#index'
  #sessions routes! fuck yeah!
  get '/login' => 'sessions#new', as: :sessions
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/upvote/:id' => 'definitions#upvote', as: :upvote
  get '/downvote/:id' => 'definitions#downvote', as: :downvote
  #users go next -->
  resources :users
  resources :definitions
  resources :words
end
