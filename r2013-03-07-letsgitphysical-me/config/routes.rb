R20130307Letsgitphysical::Application.routes.draw do

  root :to => 'home#index'
  resources :exercises
  resources :users 
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
