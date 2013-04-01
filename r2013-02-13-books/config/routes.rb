R20130213Books::Application.routes.draw do
resources :books, :authors

get '/' => 'authors#index'
 get '/books' => 'books#index'


end
