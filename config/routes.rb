Rails.application.routes.draw do
  resources :home, :drinks
  root "home#index"

  get '/search' => 'drinks#index'
  post '/search' => 'drinks#index'

  get '/random' => 'drinks#random'
  post '/random' => 'drinks#random'

  get '/details' => 'drinks#show'
end
