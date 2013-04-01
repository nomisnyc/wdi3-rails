R20130218Tunr::Application.routes.draw do

root :to => 'home#index'
resources :users, :except => [:edit] do
  collection do
    get 'edit'
  end
end

resources :songs do
  member do
    get 'purchase'
    post 'buy'
  end
end

resources :genres, :albums, :artists, :mixtapes

get '/login' => 'session#new'
post '/login' => 'session#create'
delete 'login' => 'session#destroy'
end

# get '/genre' => 'genre#new'
# post '/genre' => 'genre#create'
# end

# get '/album' => 'album#new'
# get '/album' => 'album#create'
# end

