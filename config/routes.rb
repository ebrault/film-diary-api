# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :films, except: %i[new edit]
  # Alternatively,
  # get '/films' => 'films#index'
  # post '/films' => 'films#create'
  # patch '/films/:id' => 'films#update'
  # get '/films/:id' => 'films#show'
  # delete '/films/:id' => 'films#destroy'
  resources :directors, except: %i[new edit]
  resources :years, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
